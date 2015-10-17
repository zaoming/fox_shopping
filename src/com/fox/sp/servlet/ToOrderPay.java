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

public class ToOrderPay extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public ToOrderPay() {
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
		IOrderService ios = new OrderServiceImpl();
		IOrderDetailDao iodd = new OrderDetailDaoImpl();
		
		String orderIDs = request.getParameter("orderID");
		if(! orderIDs.equals("") || orderIDs != null){
			int orderID = Integer.parseInt(orderIDs);
			List<OrderVo> list = ios.queryone(orderID);
			OrderVo ov = new OrderVo();
			for (OrderVo orderVo : list) {
				ov = orderVo;
			}
			
			List<OrderDetailVo> list1 = iodd.queryone(orderID);
			float goodsCount = 0;
			for (OrderDetailVo orderDetailVo : list1) {
				goodsCount = goodsCount + orderDetailVo.getGoodsCoun();
			}
			request.getSession().setAttribute("orderVo1", ov);
			request.getSession().setAttribute("goodsCount", goodsCount);
			response.sendRedirect(request.getContextPath()+"/order/orderPay.jsp");
		}else{
			response.sendRedirect(request.getContextPath()+"/member/login.jsp");
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
