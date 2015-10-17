package com.fox.sp.servlet;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.service.MyTrolleyService;
import com.fox.sp.service.Trolleydetaiservice;
import com.fox.sp.service.impl.MyTrolleyServiceImpl;
import com.fox.sp.service.impl.TrolleydataiserviceImpl;
import com.fox.sp.vo.MyTrolleyVo;

public class MyTrolley extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8976905416857427547L;
	MyTrolleyService mts = new MyTrolleyServiceImpl();
	Trolleydetaiservice tds = new TrolleydataiserviceImpl();
	/**
	 * Constructor of the object.
	 */
	public MyTrolley() {
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
		String id = request.getParameter("trolleyid");
		System.out.println("id:" + id);
		int trolleyID = Integer.parseInt(id);
		System.out.println("trolleyID:" + trolleyID);
		//trolleyID = 1;
		List<Double> listPrice = tds.totle(trolleyID);
		double totle = 0.0;
		
		for (Double price : listPrice) {
			totle += price;
		}
		System.out.println("totle:" + totle);
		List<MyTrolleyVo> list = mts.checkTrolly(trolleyID);
		
		Iterator<MyTrolleyVo> it = list.iterator();
		if(it.hasNext()){
			System.out.println("商品的ID为：" + it.next().getGoodsID());
		}
		
		if(list != null){
			request.getSession().setAttribute("carlist", list);
			request.getSession().setAttribute("totle", totle);
			request.getRequestDispatcher("carGoods").forward(request, response);
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
