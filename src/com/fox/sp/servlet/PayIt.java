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
import com.fox.sp.dao.IOrderDao;
import com.fox.sp.dao.impl.GoodsDaoImpl;
import com.fox.sp.dao.impl.OrderDaoImpl;
import com.fox.sp.po.GoodsPo;
import com.fox.sp.po.OrderDetailPo;
import com.fox.sp.po.TrollyDetailPo;
import com.fox.sp.service.IMemberAddrService;
import com.fox.sp.service.IOrderService;
import com.fox.sp.service.MyTrolleyService;
import com.fox.sp.service.OrderDetailService;
import com.fox.sp.service.OrderService;
import com.fox.sp.service.Trolleydetaiservice;
import com.fox.sp.service.impl.MemberAddrServiceImpl;
import com.fox.sp.service.impl.MyTrolleyServiceImpl;
import com.fox.sp.service.impl.OrderDetailServiceImpl;
import com.fox.sp.service.impl.OrderServiceImpl;
import com.fox.sp.service.impl.TrolleydataiserviceImpl;
import com.fox.sp.vo.MemberAddrVo;
import com.fox.sp.vo.MyTrolleyVo;
import com.fox.sp.vo.TrolleyDetailVo;

public class PayIt extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4972977405212675491L;
	//OrderService os = new OrderServiceImpl();
	OrderDetailService ods = new OrderDetailServiceImpl();
	Trolleydetaiservice tds = new TrolleydataiserviceImpl();
	IOrderService ios = new OrderServiceImpl();
	MyTrolleyService mts = new MyTrolleyServiceImpl();
	IGoodsDao igd = new GoodsDaoImpl();
	/**
	 * Constructor of the object.
	 */
	public PayIt() {
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
		IMemberAddrService imas = new MemberAddrServiceImpl();
		
		String tid = request.getParameter("trolleyID");
		int trolleyID = Integer.parseInt(tid);
		
		int memberID = Integer.parseInt(request.getSession().getAttribute("memberID").toString());
		
		System.out.println(memberID + "+++"+trolleyID);
		
		String goodsIDStr = request.getParameter("goodsID");
		String[] str = goodsIDStr.split("a");
		
		
		List<TrolleyDetailVo> list = new  ArrayList<TrolleyDetailVo>();



		int goodsEvaluation = 1;

		
		for (int i = 0; i < str.length; i++) {
			if(!str[i].equals("")){
				int goodsID = Integer.parseInt(str[i].trim());//通过goodsID和torlleyID得到购物车详情表的数据
				List<TrolleyDetailVo> list1 = tds.iStroDetail(trolleyID, goodsID);
				for (TrolleyDetailVo trolleyDetailVo : list1) {
					list.add(trolleyDetailVo);
				}
			}
		}
		Iterator<TrolleyDetailVo> it = list.iterator();
		List<OrderDetailPo> oDetailList = new ArrayList<OrderDetailPo>();
		double b = 0;
		while(it.hasNext()){			//再通过购物车详情表获得数据，放到准备插入数据的vo中
			TrolleyDetailVo tv = it.next();
			OrderDetailPo odp = new OrderDetailPo();
			
			odp.setGoodsID(tv.getGoodsID());
			odp.setGoodsName(tv.getGoodsName());
			odp.setGoodsPrice(tv.getGoodsPrice());
			odp.setGoodsCoun(tv.getGoodsCoun());
			odp.setGoodsEvaluation(goodsEvaluation);
			
			List<GoodsPo> goodsLisst = igd.goodsView(tv.getGoodsID());//获取商品图片地址
			for (GoodsPo goodsPo : goodsLisst) {
				odp.setGoodsPicture(goodsPo.getGoodsPicture1());
			}
			oDetailList.add(odp);
			b =b+ (tv.getGoodsPrice()*tv.getGoodsCoun());
		}
		
		List<MemberAddrVo> mav = imas.queryAll(memberID);
		int i = 0;
		for (MemberAddrVo memberAddrVo : mav) {
			i = 1;
		}
		request.getSession().setAttribute("amount", b);
		request.getSession().setAttribute("oDetailList", oDetailList);
		if(i == 1){
			request.getSession().setAttribute("mav", mav);
			response.sendRedirect(request.getContextPath()+"/order/orderInsert.jsp");
		}else{
			response.sendRedirect(request.getContextPath()+"/order/orderInsert_1.jsp");
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
