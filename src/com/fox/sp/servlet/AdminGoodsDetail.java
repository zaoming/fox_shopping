package com.fox.sp.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.dao.IAdminGoodsDao;
import com.fox.sp.dao.impl.AdminGoodsDaoImpl;
import com.fox.sp.po.GoodsPo;

public class AdminGoodsDetail extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5868533002054379161L;

	/**
	 * Constructor of the object.
	 */
	public AdminGoodsDetail() {
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
		if(request.getSession().getAttribute("userTrueName") == null || request.getSession().getAttribute("userTrueName").equals("")){
			response.sendRedirect("index.html");
		} else {
			IAdminGoodsDao iagd = new AdminGoodsDaoImpl();
			int goodsID = Integer.parseInt(request.getParameter("goodsID"));

			List<GoodsPo> list = iagd.goodsQueryOne(goodsID);
			GoodsPo gp = new GoodsPo();
			for (GoodsPo goodsPo : list) {
				gp = goodsPo;
			}

			request.getSession().setAttribute("adminGoodsPo", gp);
			response.sendRedirect("goodsDetail.jsp");
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
