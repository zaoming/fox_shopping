package com.fox.sp.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.dao.IAdminGoodsDao;
import com.fox.sp.dao.impl.AdminGoodsDaoImpl;
import com.fox.sp.po.GoodsTopPo;

public class AdminGoodsTop extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4963443046691554757L;

	/**
	 * Constructor of the object.
	 */
	public AdminGoodsTop() {
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
		if (request.getSession().getAttribute("userTrueName") == null
				|| request.getSession().getAttribute("userTrueName").equals("")) {
			response.sendRedirect("index.html");
		} else {
			IAdminGoodsDao iagd = new AdminGoodsDaoImpl();
			List<GoodsTopPo> list = iagd.goodsTop();
			for (GoodsTopPo goodsTopPo : list) {
				int rownum = goodsTopPo.getRownum();
				int rownum1 = rownum + 20;
				int num = goodsTopPo.getNum();
				String goodsName = goodsTopPo.getGoodsName();
				String goodsName1;
				if (goodsName.length() > 13) {
					goodsName1 = goodsName.substring(0, 13);
				} else {
					goodsName1 = goodsName;
				}
				request.setAttribute("a" + String.valueOf(rownum), goodsName1);
				request.setAttribute("b" + String.valueOf(rownum1), num);
				System.out.println("name:" + String.valueOf(rownum) + "----"
						+ goodsName);

			}
			request.getRequestDispatcher("AxisSettings.jsp").forward(request,
					response);
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
