package com.fox.sp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.dao.IAdminGoodsDao;
import com.fox.sp.dao.impl.AdminGoodsDaoImpl;

public class GoodsNSale extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8882989596635459006L;

	/**
	 * Constructor of the object.
	 */
	public GoodsNSale() {
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
		IAdminGoodsDao iagd = new AdminGoodsDaoImpl();
		int isSale = Integer.parseInt(request.getParameter("isSale"));
		int goodsID = Integer.parseInt(request.getParameter("goodsID"));
		boolean b = false;
		if(isSale == 0){
			b = iagd.goodsSale(goodsID);
		}else if(isSale == 1){
			b = iagd.goodsNSale(goodsID);
		}
		
		if(b){
			response.sendRedirect("adminGoodsAll?flag=0");
		}else{
			System.out.println("Valid错误");
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
