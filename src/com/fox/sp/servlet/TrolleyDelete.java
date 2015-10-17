package com.fox.sp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.service.Trolleydetaiservice;
import com.fox.sp.service.impl.TrolleydataiserviceImpl;

public class TrolleyDelete extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7641078593871420442L;
	Trolleydetaiservice tds = new TrolleydataiserviceImpl();
	/**
	 * Constructor of the object.
	 */
	public TrolleyDelete() {
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
		String id = request.getParameter("goodsID");
		String carId = request.getParameter("trolleyid");
		int goodsID = Integer.parseInt(id);
		int trolleyid = Integer.parseInt(carId);
		
		System.out.println("当前购物车Id是：" + trolleyid);
		System.out.println("当前商品Id是：" + goodsID);
		
		boolean de = tds.deletetroGoods(trolleyid,goodsID);
		if(de == true){
			//request.setAttribute("trolleyid", trolleyid);
			response.sendRedirect("trolleyDetail?trolleyid=" + trolleyid);
		}else{
			response.sendRedirect("otherpage/shoucang.html");
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
