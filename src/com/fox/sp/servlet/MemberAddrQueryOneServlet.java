package com.fox.sp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.service.IMemberAddrService;
import com.fox.sp.service.impl.MemberAddrServiceImpl;
import com.fox.sp.vo.MemberAddrVo;

public class MemberAddrQueryOneServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public MemberAddrQueryOneServlet() {
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
		doPost(request,response);
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
		IMemberAddrService imas = new MemberAddrServiceImpl();
		int memberAddrID = Integer.parseInt(request.getParameter("memberAddrID"));
		List<MemberAddrVo> maddrone = imas.queryone(memberAddrID);
		MemberAddrVo mav = null;
		for (MemberAddrVo memberAddrVo : maddrone) {
			mav = memberAddrVo;
		}
		request.getSession().setAttribute("maddrone", mav);
		response.sendRedirect(request.getContextPath()+"/order/memberUpdate.jsp");	
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
