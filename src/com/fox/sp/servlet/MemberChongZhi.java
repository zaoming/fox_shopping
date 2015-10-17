package com.fox.sp.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.dao.IMemberDao;
import com.fox.sp.dao.impl.MemberDaoImpl;

public class MemberChongZhi extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6836604162753877888L;

	/**
	 * Constructor of the object.
	 */
	public MemberChongZhi() {
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
		int memberID = Integer.parseInt(request.getParameter("memberID"));
		double money = Double.parseDouble(request.getParameter("money"));
		double amount = imd.getMemberAmount(memberID);
		boolean b = imd.chongZhi(memberID, money+amount);
		if(b){
			double amount1 = imd.getMemberAmount(memberID);
			request.getSession().setAttribute("memberAmount", amount1);
			response.sendRedirect("displayAccount.jsp");
		}else{
			System.out.println("充值失败");
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
