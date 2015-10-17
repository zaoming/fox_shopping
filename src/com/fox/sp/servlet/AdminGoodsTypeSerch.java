package com.fox.sp.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.dao.IGoodsTypeDao;
import com.fox.sp.dao.impl.GoodsTypeDaoImpl;
import com.fox.sp.po.GoodsTypePo;

public class AdminGoodsTypeSerch extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1426975218957156849L;

	/**
	 * Constructor of the object.
	 */
	public AdminGoodsTypeSerch() {
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
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getSession().getAttribute("userTrueName") == null
				|| request.getSession().getAttribute("userTrueName").equals("")) {
			response.sendRedirect("index.html");
		} else {
			int serchId = Integer.parseInt(request.getParameter("serchId"));
			List<GoodsTypePo> list = new ArrayList<GoodsTypePo>();
			IGoodsTypeDao igtd = new GoodsTypeDaoImpl();
			List<GoodsTypePo> li1 = new ArrayList<GoodsTypePo>();
			List<GoodsTypePo> bigList = igtd.goodsType(list, serchId);
			Iterator<GoodsTypePo> it = bigList.iterator();
			while (it.hasNext()) {
				GoodsTypePo goodtypepo1 = it.next();
				// System.out.println(goodtypepo1.getTypeName()+"--1级--->");
				li1.add(goodtypepo1);
			}
			request.getSession().setAttribute("goodsType1", li1);
			request.getSession().setAttribute("goodsType2", null);
			request.getSession().setAttribute("goodsType3", null);
			response.sendRedirect("goodsTypeAll.jsp");
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
