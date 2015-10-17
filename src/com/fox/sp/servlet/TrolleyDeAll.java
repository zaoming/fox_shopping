package com.fox.sp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.service.Trolleydetaiservice;
import com.fox.sp.service.impl.TrolleydataiserviceImpl;

public class TrolleyDeAll extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6905659186179433938L;
	Trolleydetaiservice tds = new TrolleydataiserviceImpl();
	/**
	 * Constructor of the object.
	 */
	public TrolleyDeAll() {
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
		String id = request.getParameter("trolleyid");
		int trolleyid = Integer.parseInt(id);
		
		System.out.println("清空购物车时的Id：" + trolleyid);
		
		boolean deall = tds.deletetroall(trolleyid);
		if(deall == true){
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
