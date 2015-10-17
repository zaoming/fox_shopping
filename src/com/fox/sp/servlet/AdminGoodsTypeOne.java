package com.fox.sp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.dao.IAdminGoodsTypeDao;
import com.fox.sp.dao.impl.AdminGoodsTypeImpl;
import com.fox.sp.po.GoodsTypePo;

public class AdminGoodsTypeOne extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3835302849070066981L;

	/**
	 * Constructor of the object.
	 */
	public AdminGoodsTypeOne() {
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

			IAdminGoodsTypeDao iagtd = new AdminGoodsTypeImpl();
			int typeID = Integer.parseInt(request.getParameter("typeID"));
			List<GoodsTypePo> list1 = iagtd.goodsTypeOne(typeID);
			int parentID;
			List<GoodsTypePo> list2 = null;
			GoodsTypePo gtp = new GoodsTypePo();
			for (GoodsTypePo goodsTypePo : list1) {
				gtp = goodsTypePo;
				parentID = goodsTypePo.getParentID();
				int typeLevel = goodsTypePo.getTypeLevel();
				list2 = iagtd.goodsTypeOne1(parentID);
			}
			request.getSession().setAttribute("goodsTypePo11", gtp);
			System.out.println(gtp.getTypeName());
			for (GoodsTypePo goodsTypePo : list2) {
				System.out.println(goodsTypePo.getTypeName());
			}
			request.getSession().setAttribute("goodsTypeList22", list2);
			response.sendRedirect("");

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
