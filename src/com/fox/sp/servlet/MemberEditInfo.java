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

public class MemberEditInfo extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3101184283268605194L;

	/**
	 * Constructor of the object.
	 */
	public MemberEditInfo() {
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
		String memberIDs = request.getParameter("memberID");
		if(memberIDs != null || memberIDs != ""){
			int memberID = Integer.parseInt(memberIDs);
			List<MemberPo> list = imd.queryPersonal(memberID);
			MemberPo memberPo1 = null;
			for (MemberPo memberPo : list) {
				memberPo1 = memberPo;
			}
			request.setAttribute("personalDataPo", memberPo1);
			request.getRequestDispatcher("editinfo.jsp").forward(request, response);
		}else{
			response.sendRedirect(request.getContentType()+"/member/login.jsp");
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
