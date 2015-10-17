package com.fox.sp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.dao.IOrderDetailDao;
import com.fox.sp.dao.impl.OrderDetailDaoImpl;
import com.fox.sp.service.IOrderService;
import com.fox.sp.service.impl.OrderServiceImpl;
import com.fox.sp.vo.OrderDetailVo;
import com.fox.sp.vo.OrderVo;

public class OrderUpdateServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public OrderUpdateServlet() {
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
		IOrderDetailDao iodd = new OrderDetailDaoImpl();
		int orderID = Integer.parseInt(request.getParameter("orderID"));
		List<OrderVo> olist = ios.queryone(orderID);
		OrderVo ov = null;
		for (OrderVo orderVo : olist) {
			ov = orderVo;
		}
		List<OrderDetailVo> odlist = iodd.queryone(orderID);
		request.getSession().setAttribute("orderVo1", ov);
		request.getSession().setAttribute("orderDetailList1", odlist);
		
        response.sendRedirect(request.getContextPath()+"/order/orderUpdate.jsp");
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
