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
import com.fox.sp.util.fenye;

public class GoodsMenuSerch extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1728714998191620870L;

	/**
	 * Constructor of the object.
	 */
	public GoodsMenuSerch() {
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
		
		
		String typeName1 = null;
		String typeName2 = null;
		String typeName3 = null;
		int typeID = Integer.parseInt(request.getParameter("typeID"));
		int typeID1 = Integer.parseInt(request.getParameter("typeID1"));
		int typeID2 = Integer.parseInt(request.getParameter("typeID2"));

		
		
		List<GoodsTypePo> list1 = igtd.goodsTypeName(typeID);
		List<GoodsTypePo> list2 = igtd.goodsTypeName(typeID1);
		List<GoodsTypePo> list3 = igtd.goodsTypeName(typeID2);
		for (GoodsTypePo goodsTypePo : list1) {
			typeName3 = goodsTypePo.getTypeName();
		}
		for (GoodsTypePo goodsTypePo : list2) {
			typeName1 = goodsTypePo.getTypeName();
		}
		for (GoodsTypePo goodsTypePo : list3) {
			typeName2 = goodsTypePo.getTypeName();
		}
		
		int count = igd.Count1(typeID);

		List<GoodsPo> list = igd.serchMenu(typeID,0,8,null);
		fenye fy = new fenye(8, count, 1);
		int enPage = fy.getEndPage();
		
		request.getSession().setAttribute("goodsList1", list);
		request.getSession().setAttribute("typeName1", typeName1);
		request.getSession().setAttribute("typeName2", typeName2);
		request.getSession().setAttribute("typeName3", typeName3);
		request.getSession().setAttribute("menuSerchCurrentPage",1);
		request.getSession().setAttribute("menuSerchCount", count);
		request.getSession().setAttribute("menuSerchtypeID", typeID);
		request.getSession().setAttribute("menuSerchEndPage", enPage);
		request.getSession().setAttribute("dora", 1);
		request.getSession().setAttribute("sort", null);
//		for (GoodsPo goodsPo : list) {
//			System.out.println(goodsPo.getCreater());
//			System.out.println(goodsPo.getGoodsID());
//			System.out.println(goodsPo.getGoodsName());
//			System.out.println(goodsPo.getGoodsNormalPrice());
//			System.out.println(goodsPo.getGoodsMemberPrice());
//			System.out.println(goodsPo.getGoodsRebate());
//			System.out.println(goodsPo.getTypeID());
//			System.out.println(goodsPo.getGoodsNumber());
//			System.out.println(goodsPo.getIsSale());
//			System.out.println(goodsPo.getIsValid());
//			System.out.println(goodsPo.getGoodsPicture1());
//			System.out.println(goodsPo.getCreateDate());
//		}
		response.sendRedirect("goodsSerch.jsp");
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
