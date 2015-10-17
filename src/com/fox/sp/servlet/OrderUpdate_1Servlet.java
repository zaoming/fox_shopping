package com.fox.sp.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.service.IOrderService;
import com.fox.sp.service.impl.OrderServiceImpl;

public class OrderUpdate_1Servlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public OrderUpdate_1Servlet() {
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

		IOrderService ios = new OrderServiceImpl();
		int orderID = Integer.parseInt(request.getParameter("orderID"));
		String memberTrueName = request.getParameter("memberTrueName");
		String memberAddress = request.getParameter("memberAddress");
		int memberPostcode = Integer.parseInt(request.getParameter("memberPostcode"));
		int memberTelephone = Integer.parseInt(request.getParameter("memberTelephone"));
		
		String memberProvince = request.getParameter("memberProvince");
		if("全部省".equals(memberProvince)){
			memberProvince = request.getParameter("ismemberProvince");
			
		}
		String memberCity = request.getParameter("memberCity");
		if("全部城市".equals(memberCity)){
			memberCity = request.getParameter("ismemberCity");
		}
		
		
		if(ios.updateOrder(memberTrueName,memberProvince,memberCity,memberAddress,memberPostcode,memberTelephone,orderID)){
			request.setAttribute("orderID", orderID);
			request.getRequestDispatcher("orderUpdate").forward(request, response);
		}else{
			request.setAttribute("error", "修改失败！");
			response.sendRedirect("error.jsp");
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
