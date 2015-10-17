package com.fox.sp.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.service.IMemberAddrService;
import com.fox.sp.service.impl.MemberAddrServiceImpl;

public class MemberAddrUpdateServlet extends HttpServlet {
	
	/**
	 * Constructor of the object.
	 */
	public MemberAddrUpdateServlet() {
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
		System.out.println(memberAddrID);
		String memberName = request.getParameter("memberName");
		System.out.println(memberName);
		int memberCode = Integer.parseInt(request.getParameter("memberCode"));
		System.out.println(memberCode);
		String memberTelephone = request.getParameter("memberTelephone");
		String memberAddr = request.getParameter("memberAddr");
		String memberProvince = request.getParameter("memberProvince");
		if("全部省".equals(memberProvince)){
			memberProvince = request.getParameter("ismemberProvince");
			
		}
		String memberCity = request.getParameter("memberCity");
		if("全部城市".equals(memberCity)){
			memberCity = request.getParameter("ismemberCity");
			
		}
		System.out.println("servlet---"+memberProvince);
		System.out.println("servlet---"+memberCity);
		
		if(imas.updaetMemberAddr(memberName,memberCode,memberTelephone,memberAddr,memberProvince,memberCity,memberAddrID)){
			response.sendRedirect(request.getContextPath()+"/memberAddrQueryAll");
		}else{
			request.setAttribute("error", "添加失败！");
			response.sendRedirect(request.getContextPath()+"/order/error.jsp");
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
