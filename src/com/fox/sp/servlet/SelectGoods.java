package com.fox.sp.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.service.GoodsService;
import com.fox.sp.service.impl.GoodsSericeImpl;
import com.fox.sp.vo.GoodsVo;

public class SelectGoods extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6201991068268967813L;
	GoodsService gs = new GoodsSericeImpl();
	/**
	 * Constructor of the object.
	 */
	public SelectGoods() {
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
		String gid = request.getParameter("goodsID");
		int goodsID = Integer.parseInt(gid);
		
		System.out.println("此商品id:" + goodsID);
		
		List<GoodsVo> list = gs.checkGoods(goodsID);
		//System.out.println(list.size());
		if(list != null){
			request.getSession().setAttribute("gonelist", list);
			response.sendRedirect("onegoods.jsp");
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
