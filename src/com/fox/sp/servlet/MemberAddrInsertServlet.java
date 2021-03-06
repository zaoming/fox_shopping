package com.fox.sp.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.service.IMemberAddrService;
import com.fox.sp.service.impl.MemberAddrServiceImpl;
import com.fox.sp.util.Wrapper;
import com.fox.sp.vo.MemberAddrVo;
import com.fox.sp.wrapper.MemberAddrVoWrapper;

public class MemberAddrInsertServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public MemberAddrInsertServlet() {
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
//		request.setCharacterEncoding("UTF-8");
//		response.setCharacterEncoding("UTF-8");
		String memberIDs = request.getSession().getAttribute("memberID").toString();
		int memberID = Integer.parseInt(memberIDs);
		String memberName = request.getParameter("memberName");
		int memberCode = Integer.parseInt(request.getParameter("memberCode"));
		String memberTelephone = request.getParameter("memberTelephone");
		String memberAddr = request.getParameter("memberAddr");
		String memberProvince = request.getParameter("memberProvince");
		String memberCity = request.getParameter("memberCity");
//		int memberID = Integer.parseInt(request.getSession().getAttribute("memberID").toString());
		if(imas.insertMemberAddr(memberID,memberName,memberCode,memberTelephone,memberAddr,memberProvince,memberCity)){
			response.sendRedirect(request.getContextPath()+"/memberAddrQueryAll");
		}else{
			request.setAttribute("error", "添加失败！");
			response.sendRedirect(request.getContextPath()+"/error.jsp");
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
