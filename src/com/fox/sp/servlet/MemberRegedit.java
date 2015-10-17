package com.fox.sp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.dao.IMemberDao;
import com.fox.sp.dao.impl.MemberDaoImpl;
import com.fox.sp.po.MemberPo;
import com.fox.sp.po.MyTrolleyPo;
import com.fox.sp.service.MyTrolleyService;
import com.fox.sp.service.impl.MyTrolleyServiceImpl;
import com.fox.sp.util.MD5Code;

public class MemberRegedit extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8757351983598797519L;

	/**
	 * Constructor of the object.
	 */
	public MemberRegedit() {
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
		PrintWriter out = response.getWriter();
		IMemberDao imd = new MemberDaoImpl();
		MD5Code md5 = new MD5Code();
		String memberEmail = request.getParameter("user.email");
		String memberName = request.getParameter("user.name");
		String memberPassWord1 = request.getParameter("user.password");
		String memberPassWord = md5.getMD5ofStr(memberPassWord1);
		String validCode = request.getParameter("validCode");
		String validCode1 = request.getSession().getAttribute("rand").toString();
		Timestamp createDate = new Timestamp(new Date().getTime()); 
		if(validCode.equals(validCode1)){
			if(imd.regedit(memberName,memberName,memberPassWord,memberPassWord,memberEmail,createDate,createDate)){
				List<MemberPo> list = imd.login(memberName, memberPassWord);
				for (MemberPo memberPo : list) {
					int memberID = memberPo.getMemberID();
					MyTrolleyService mts = new MyTrolleyServiceImpl();
					MyTrolleyPo mtp = new MyTrolleyPo();
					mtp.setMemberID(memberID);
					if(mts.insertTrolley(mtp)){
						List<MemberPo> list1 = imd.login(memberName, memberPassWord);
						Iterator<MemberPo> it = list1.iterator();
						if(it.hasNext()){
							MemberPo mp = it.next();
							int memberId = mp.getMemberID();
							String memberNiCheng = mp.getMemberNiCheng();
							request.getSession().setAttribute("memberID", memberId);
							request.getSession().setAttribute("memberName", memberNiCheng);
							System.out.println(memberNiCheng);
							response.sendRedirect(request.getContextPath()+"/index.jsp");
						}
					}else{
						out.print("注册失败");
					}
					
				}
				
			}else{
				out.println("注册失败");
			}
		}else{
			out.print("验证码错误!");
			response.sendRedirect(request.getContentType()+"/member/regedit.jsp");
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
