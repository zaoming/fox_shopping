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
import com.fox.sp.util.fenye;

public class AdminGoodsSerch extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public AdminGoodsSerch() {
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
			int pCount = 8;

			String typeIDs = request.getParameter("typeID");
			String goodsName = request.getParameter("goodsName");
			Object goodsName1 = request.getSession().getAttribute(
					"adminSerchGoodsName");
			Object typeIDs1 = request.getSession().getAttribute(
					"adminSerchTypeID");
			int typeID = 0;
			int count = 0;
			List<GoodsPo> list = null;
			if (typeIDs != null) {
				typeID = Integer.parseInt(typeIDs);
				count = iagd.goodsCount1(typeID);
			} else if (goodsName != null) {
				count = iagd.goodsCount(goodsName);
			} else {
				if (goodsName1 != null) {
					count = iagd.goodsCount(goodsName1.toString());
				} else if (typeIDs1 != null) {
					typeID = Integer.parseInt(typeIDs1.toString());
					if (typeIDs1.toString() != "0") {
						count = iagd.goodsCount1(typeID);
					}
					count = iagd.goodsCount("");
				}
			}

			int currentPage = 1;
			Object currentPages = request.getSession().getAttribute(
					"adminGoodsCurrentPage");
			if (currentPages != null) {
				currentPage = Integer.parseInt(currentPages.toString());
			}
			fenye fy = new fenye(pCount, count, currentPage);
			int rPage;
			int cPage;
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

			if (typeIDs != null) {
				System.out.println(typeID);
				list = iagd.goodsQuerys("aaaaaaaaaaaa", typeID, cPage, rPage);
			} else if (goodsName != null) {
				System.out.println(goodsName);
				list = iagd.goodsQuerys(goodsName, 0, cPage, rPage);
			} else {
				if (goodsName1 != null) {
					System.out.println(goodsName1);
					goodsName = goodsName1.toString();
					list = iagd.goodsQuerys(goodsName, 0, cPage, rPage);
				} else if (typeIDs1 != null) {
					System.out.println("-------------------------");
					System.out.println(typeIDs1);
					if (typeIDs1.toString() != "0") {
						System.out.println("queryall");
						System.out.println(cPage + "---" + rPage);
						list = iagd.goodsQueryAll(rPage, cPage);
					} else {
						list = iagd.goodsQuerys("", typeID, cPage, rPage);
					}
				} else {
					System.out.println(cPage + "---" + rPage);
					list = iagd.goodsQueryAll(rPage, cPage);
				}
			}

			for (GoodsPo goodsPo : list) {
				System.out.println(goodsPo.getGoodsName());
			}
			request.getSession().setAttribute("adminSerchGoodsName", goodsName);
			request.getSession().setAttribute("adminSerchTypeID", typeID);
			request.getSession().setAttribute("adminGoodsList", list);
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
