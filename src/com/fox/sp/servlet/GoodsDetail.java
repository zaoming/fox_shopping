package com.fox.sp.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.dao.IGoodsDao;
import com.fox.sp.dao.IGoodsTypeDao;
import com.fox.sp.dao.impl.GoodsDaoImpl;
import com.fox.sp.dao.impl.GoodsTypeDaoImpl;
import com.fox.sp.po.GoodsPo;
import com.fox.sp.po.GoodsTypePo;

public class GoodsDetail extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6134779378242754060L;

	/**
	 * Constructor of the object.
	 */
	public GoodsDetail() {
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
		IGoodsDao igd = new GoodsDaoImpl();
		IGoodsTypeDao igtd = new GoodsTypeDaoImpl();
		int goodsID = Integer.parseInt(request.getParameter("goodsID"));
		List<GoodsPo> list = igd.goodsView(goodsID);
		int typeID = 0;
		int typeID1 = 0;
		int typeID2 = 0;
		String typeName1 = null;
		String typeName2 = null;
		String typeName3 = null;
		GoodsPo goodsPo = new GoodsPo();
		for (GoodsPo goodsPo1 : list) {
			goodsPo = goodsPo1;
			typeID = goodsPo1.getTypeID();
		}
		List<GoodsTypePo> list1 = igtd.goodsTypeName(typeID);
		for (GoodsTypePo goodsTypePo : list1) {
			typeID1 = goodsTypePo.getParentID();
			typeName3 = goodsTypePo.getTypeName();
			
		}
		List<GoodsTypePo> list2 = igtd.goodsTypeName(typeID1);
		for (GoodsTypePo goodsTypePo : list2) {
			typeID2 = goodsTypePo.getParentID();
			typeName2 = goodsTypePo.getTypeName();
		}
		List<GoodsTypePo> list3 = igtd.goodsTypeName(typeID2);
		for (GoodsTypePo goodsTypePo : list3) {
			typeName1 = goodsTypePo.getTypeName();
		}
		
		request.getSession().setAttribute("typeName1", typeName1);
		request.getSession().setAttribute("typeName2", typeName2);
		request.getSession().setAttribute("typeName3", typeName3);
		request.getSession().setAttribute("goodsDetailPo", goodsPo);
		response.sendRedirect("goodsDetail.jsp");
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
