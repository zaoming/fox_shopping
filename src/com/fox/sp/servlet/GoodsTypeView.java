package com.fox.sp.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
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
import com.fox.sp.po.GoodsTopPo;
import com.fox.sp.po.GoodsTypePo;

public class GoodsTypeView extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8200533806590985451L;

	/**
	 * Constructor of the object.
	 */
	public GoodsTypeView() {
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
		List<GoodsTypePo>list = new ArrayList<GoodsTypePo>();
		IGoodsTypeDao igtd = new GoodsTypeDaoImpl();
		IGoodsDao igd = new GoodsDaoImpl();
		List<GoodsTypePo> bigList = igtd.goodsType(list, 0);
		List<GoodsTypePo> li1 = new ArrayList<GoodsTypePo>();
		List<GoodsTypePo> li2 = new ArrayList<GoodsTypePo>();
		List<GoodsTypePo> li3 = new ArrayList<GoodsTypePo>();
		
		Iterator<GoodsTypePo> it = bigList.iterator();
		while(it.hasNext()){
			GoodsTypePo goodtypepo1 = it.next();
//			System.out.println(goodtypepo1.getTypeName()+"--1级--->");
			li1.add(goodtypepo1);
			
			List<GoodsTypePo> list1 = goodtypepo1.getList();
			Iterator<GoodsTypePo> it1 = list1.iterator();
			while(it1.hasNext()){
				GoodsTypePo goodtypepo2 = it1.next();
//				System.out.println(goodtypepo2.getTypeName()+"--2级-->");
				li2.add(goodtypepo2);
				
				List<GoodsTypePo> list2 = goodtypepo2.getList();
				Iterator<GoodsTypePo> it2 = list2.iterator();
				while(it2.hasNext()){
					GoodsTypePo goodtypepo3 = it2.next();
//					System.out.println(goodtypepo3.getTypeName()+"---3->");
					li3.add(goodtypepo3);
				}
				
			}
		}
		List<GoodsPo> list4 = igd.goodsRebatePirce();				//查找特价商品
		List<GoodsPo> list5 = igd.goodsNew();						//查找新品上架
		List<GoodsPo> list6 = igd.goodsHot();						//猜您喜欢
		List<GoodsTopPo> list7 = igd.goodsTop();					//一周销量排行榜
		request.getSession().setAttribute("goodsType1_former", li1);
		request.getSession().setAttribute("goodsType2_former", li2);
		request.getSession().setAttribute("goodsType3_former", li3);
		request.getSession().setAttribute("goodsRebatePrice", list4);
		request.getSession().setAttribute("goodsNew", list5);
		request.getSession().setAttribute("goodsHot", list6);
		request.getSession().setAttribute("goodsTop", list7);
		System.out.println("aaa");
		response.sendRedirect(request.getContextPath()+"/picAdPro");
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
