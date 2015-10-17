package com.fox.sp.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.dao.IAdminGoodsDao;
import com.fox.sp.dao.IAdminGoodsTypeDao;
import com.fox.sp.dao.impl.AdminGoodsDaoImpl;
import com.fox.sp.dao.impl.AdminGoodsTypeImpl;
import com.fox.sp.po.GoodsPo;
import com.fox.sp.po.GoodsTypePo;
import com.fox.sp.util.fenye;

public class AdminGoodsAll extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public AdminGoodsAll() {
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

			IAdminGoodsDao iadgd = new AdminGoodsDaoImpl();
			IAdminGoodsTypeDao iadgtd = new AdminGoodsTypeImpl();
			int count = iadgd.goodsCount("");
			int pCount = 8;
			fenye fy = new fenye(pCount, count, 1);
			int rPage;
			int cPage;
			int currentPage = 1;
			Object currentPages = request.getSession().getAttribute(
					"adminGoodsCurrentPage");
			if (currentPages != null) {
				currentPage = Integer.parseInt(currentPages.toString());
			}
			// int currentPage =
			// Integer.parseInt(request.getSession().getAttribute("adminGoodsCurrentPage").toString());

			int flag = Integer.parseInt(request.getParameter("flag"));
			// int flag = 0;
			int enPage = fy.getEndPage();
			if (flag == 0) {
				currentPage = fy.getLastPage();
				rPage = (currentPage - 1) * pCount;
				cPage = rPage + pCount;
			} else {
				currentPage = fy.getNextPage();
				rPage = (currentPage - 1) * pCount;
				cPage = rPage + pCount;

			}
			List<GoodsTypePo> list1 = iadgtd.goodsTypes();
			List<GoodsPo> list = iadgd.goodsQueryAll(rPage, cPage);

			request.getSession().setAttribute("adminGoodsList", list);
			request.getSession().setAttribute("adminGoodsTypeList", list1);
			request.getSession().setAttribute("adminGoodsCurrentPage",
					currentPage);
			request.getSession().setAttribute("adminGoodsCount", count);
			request.getSession().setAttribute("adminGoodsEndPage", enPage);
			response.sendRedirect("goodsAll.jsp");
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
