package com.fox.sp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.dao.IOrderDao;
import com.fox.sp.dao.IOrderDetailDao;
import com.fox.sp.dao.impl.OrderDetailDaoImpl;
import com.fox.sp.service.IOrderService;
import com.fox.sp.service.impl.OrderServiceImpl;
import com.fox.sp.vo.OrderDetailVo;
import com.fox.sp.vo.OrderVo;
import com.fox.sp.wrapper.OrderVoWrapper;

public class OrderQueryAllServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 4563507048338838054L;
	IOrderService ios = new OrderServiceImpl();
	/**
	 * Constructor of the object.
	 */
	public OrderQueryAllServlet() {
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
		IOrderDetailDao iodd = new OrderDetailDaoImpl();
		Object memberID1 = request.getSession().getAttribute("memberID");
		String uri = request.getRequestURI();
		String from = uri.substring(uri.indexOf("/", 2));
		if(memberID1 != null){
			if(memberID1.toString() != null || !memberID1.toString().equals("")){
				int memberID = Integer.parseInt(memberID1.toString());
				
				List<OrderVo> ov = ios.queryAll(memberID);
				List<List<OrderDetailVo>> lilist = new ArrayList<List<OrderDetailVo>>();
				for (OrderVo orderVo : ov) {
					int orderID = orderVo.getOrderID();
					List<OrderDetailVo> list = iodd.queryone(orderID);
					lilist.add(list);
					request.getSession().setAttribute("orderIDList", lilist);
				}
				request.getSession().setAttribute("ov", ov);
				response.sendRedirect(request.getContextPath()+"/order/order.jsp");
			}else{
				response.sendRedirect(request.getContextPath()+"/member/login.jsp?from="+from);
			}
		}else{
			response.sendRedirect(request.getContextPath()+"/member/login.jsp?from="+from);
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
