package com.fox.sp.servlet;
/*
 * 这个servlet已经失效
 */
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.service.GoodsService;
import com.fox.sp.service.MyTrolleyService;
import com.fox.sp.service.Trolleydetaiservice;
import com.fox.sp.service.impl.GoodsSericeImpl;
import com.fox.sp.service.impl.MyTrolleyServiceImpl;
import com.fox.sp.service.impl.TrolleydataiserviceImpl;
import com.fox.sp.vo.GoodsVo;
import com.fox.sp.vo.TrolleyDetailVo;

public class CarGoods extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8057440496428068915L;
	GoodsService gs = new GoodsSericeImpl();

	/**
	 * Constructor of the object.
	 */
	public CarGoods() {
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
	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		List<TrolleyDetailVo> list = (List<TrolleyDetailVo>)request.getSession().getAttribute("trodetlist");
//		String totle1 = request.getSession().getAttribute("totle").toString();
//		double totle = 0.0;
//		if(totle1 != null || totle1 != ""){
//			totle = Double.parseDouble(totle1);
//		}
//		Iterator<TrolleyDetailVo> it = list.iterator();
//		List<GoodsVo> glist = new ArrayList<GoodsVo>();
//		int carId = 0;
//		//double realPrice = 0.0;
//		
//		while(it.hasNext()){
//			TrolleyDetailVo tdv = it.next();
//			carId = tdv.getTrollyID();
//			
//			int goodsID = tdv.getGoodsID();
//			List<GoodsVo> onelist = gs.checkGoods(goodsID);
//			System.out.println("跳转后商品的ID为：" + goodsID);
//			
//			
//			glist.addAll(onelist);
//			
//		}
//		System.out.println("glist长度：" + glist.size());
//		System.out.println("totle:" + totle);
//		
//		if(glist != null){
//			request.getSession().setAttribute("totle", totle);
//			request.getSession().setAttribute("glist", glist);
//			request.getSession().setAttribute("carId", carId);
//			response.sendRedirect("otherpage/mytrolley.jsp");
//		}

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
