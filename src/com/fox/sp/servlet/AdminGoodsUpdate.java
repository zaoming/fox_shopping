package com.fox.sp.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.dao.IAdminGoodsDao;
import com.fox.sp.dao.impl.AdminGoodsDaoImpl;

public class AdminGoodsUpdate extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8562237838024577587L;

	/**
	 * Constructor of the object.
	 */
	public AdminGoodsUpdate() {
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
		IAdminGoodsDao iagd = new AdminGoodsDaoImpl();
		if (request.getSession().getAttribute("userTrueName") == null
				|| request.getSession().getAttribute("userTrueName").equals("")) {
			response.sendRedirect("index.html");
		} else {
			int goodsID = Integer.parseInt(request.getParameter("goodsID"));
			String goodsName = request.getParameter("goodsName");
			String goodsIntroduce = request.getParameter("goodsIntroduce");
			float goodsNormalPrice = Float.parseFloat(request
					.getParameter("goodsNormalPrice"));
			float goodsMemberPrice = Float.parseFloat(request
					.getParameter("goodsMemberPrice"));
			float goodsRebate = Float.parseFloat(request
					.getParameter("goodsRebate"));
			int typeID = Integer.parseInt(request.getParameter("typeID"));
			int goodsNumber = Integer.parseInt(request
					.getParameter("goodsNumber"));
			String goodsPicture1 = request.getParameter("imgPath1");
			// String updater = request.getParameter("updater");
			String updater = "赵雪华";
			java.sql.Timestamp updateDate = new java.sql.Timestamp(new Date()
					.getTime());

			boolean b = iagd.goodsUpdate(goodsID, goodsName, goodsIntroduce,
					goodsNormalPrice, goodsMemberPrice, goodsRebate, typeID,
					goodsNumber, goodsPicture1, updater, updateDate);
			if (b) {
				response.sendRedirect("adminGoodsAll?flag=0");
			} else {
				System.out.println("Update错误");
			}
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
