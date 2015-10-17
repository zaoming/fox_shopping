package com.fox.sp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.dao.IMemberDao;
import com.fox.sp.dao.impl.MemberDaoImpl;
import com.fox.sp.po.MemberPo;
import com.fox.sp.util.MD5Code;

public class MemberUpdateToPayPwd extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public MemberUpdateToPayPwd() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		IMemberDao imd = new MemberDaoImpl();
		MD5Code md5 = new MD5Code();
		int memberID = Integer.parseInt(request.getParameter("memberID"));
		String oldPwd = request.getParameter("oldPwd");
		String newPwd = request.getParameter("newPwd");
		String pwd = null;
		List<MemberPo> list = imd.queryPersonal(memberID);
		for (MemberPo memberPo : list) {
			 pwd = memberPo.getMemberPassword();
		}
		
		if(md5.getMD5ofStr(oldPwd).equals(pwd)){
			if(imd.updateToPayPwd(memberID, md5.getMD5ofStr(newPwd))){
				response.sendRedirect("updateSucc.jsp");
			}else{
				System.out.println("修改支付密码错误");
			}
		}else{
			System.out.println("初始支付密码错误");
		}
		
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
