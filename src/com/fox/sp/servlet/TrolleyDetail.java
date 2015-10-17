package com.fox.sp.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.po.TrollyDetailPo;
import com.fox.sp.service.GoodsService;
import com.fox.sp.service.MyTrolleyService;
import com.fox.sp.service.Trolleydetaiservice;
import com.fox.sp.service.impl.GoodsSericeImpl;
import com.fox.sp.service.impl.MyTrolleyServiceImpl;
import com.fox.sp.service.impl.TrolleydataiserviceImpl;
import com.fox.sp.vo.GoodsVo;
import com.fox.sp.vo.MyTrolleyVo;
import com.fox.sp.vo.TrolleyDetailVo;

public class TrolleyDetail extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8250760134729710797L;
	Trolleydetaiservice tds = new TrolleydataiserviceImpl();
	MyTrolleyService mts = new MyTrolleyServiceImpl();
	GoodsService gs = new GoodsSericeImpl();
	/**
	 * Constructor of the object.
	 */
	public TrolleyDetail() {
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
		Object memberIDs = request.getSession().getAttribute("memberID");
		String uri = request.getRequestURI();
		String from = uri.substring(uri.indexOf("/", 2));
		if(memberIDs != null ){
			if(memberIDs.toString() != null || memberIDs.toString() != ""){
				int memberID = Integer.parseInt(memberIDs.toString());
				
				List<MyTrolleyVo> list1  = mts.getTrolleyID(memberID);
				int trolleyID = 0;
				TrollyDetailPo tdp = new TrollyDetailPo();
				for (MyTrolleyVo myTrolleyVo : list1) {
					trolleyID = myTrolleyVo.getTrolleyID();
				}
				List<TrolleyDetailVo> list = tds.checkTroDetail(trolleyID);
				List<GoodsVo> glist = new ArrayList<GoodsVo>();
				GoodsVo gv = null;
				//给glist赋值
				for (TrolleyDetailVo tli : list) {
					List<GoodsVo> one = gs.checkGoods(tli.getGoodsID());
					for (GoodsVo gone : one) {
						gv = gone;
					}
					gv.setGoodsCoun(tli.getGoodsCoun());
					glist.add(gv);
					for (GoodsVo goodsVo : one) {
						if(goodsVo.getIsValid() == 0){
							glist.remove(goodsVo);//如果商品已过期，则list中移除这个商品
						}
					}
					System.out.println(gv.getGoodsCoun()+"----");
				}
				double totle = 0.0;
				for (GoodsVo goodsVo : glist) {
					totle = totle+goodsVo.getGoodsMemberPrice()*goodsVo.getGoodsCoun();
				}
				//计算总价格
//				List<Double> listPrice = tds.totle(trolleyID);
//				
//				for (Double price : listPrice) {
//					totle += price;
//				}
				System.out.println("totle:" + totle);
				
//				if(list != null){
//					request.getSession().setAttribute("trodetlist", list);
//					request.getSession().setAttribute("totle", totle);
//					request.getRequestDispatcher("carGoods").forward(request, response);
//				}
				
				if(glist != null){
					request.getSession().setAttribute("totle", totle);
					request.getSession().setAttribute("glist", glist);
					request.getSession().setAttribute("carId", trolleyID);
					response.sendRedirect(request.getContextPath()+"/otherpage/mytrolley.jsp");/////
				}
			}else{
				response.sendRedirect(request.getContextPath()+"/member/login.jsp?from="+from);
			}
		}else{
			response.sendRedirect(request.getContextPath()+"/member/login.jsp?from="+from);
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
