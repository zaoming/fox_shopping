package com.fox.sp.servlet;

import java.io.IOException;
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

public class TroAdd extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6465530291879439736L;
	Trolleydetaiservice tds = new TrolleydataiserviceImpl();
	MyTrolleyService mts = new MyTrolleyServiceImpl();
	/**
	 * Constructor of the object.
	 */
	public TroAdd() {
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
		GoodsService gs = new GoodsSericeImpl();
		String uri = request.getRequestURI();
		String from = uri.substring(uri.indexOf("/", 2));
		
		String id = request.getParameter("goodsid");
		String name = request.getParameter("goodsName");
		String price = request.getParameter("goodsPrice");
		String coun = request.getParameter("GoodsCoun");
		from = from+"?goodsid="+id+"-goodsName="+name+"-goodsPrice="+price+"-GoodsCoun="+coun;
		if(memberIDs != null ){
			if(memberIDs.toString() != null || memberIDs.toString() != ""){
				int memberID = Integer.parseInt(memberIDs.toString());
				System.out.println(name);
				int gid = Integer.parseInt(id);
				float goodprice = Float.parseFloat(price);
				float goodcoun = Float.parseFloat(coun);
				int goodsbuyed = 1;
				
				
				List<MyTrolleyVo> list  = mts.getTrolleyID(memberID);
				int trolleyID;
				TrollyDetailPo tdp = new TrollyDetailPo();
				for (MyTrolleyVo myTrolleyVo : list) {
					trolleyID = myTrolleyVo.getTrolleyID();
					
					
					tdp.setTrollyID(trolleyID);
					tdp.setGoodsName(name);
					tdp.setGoodsPrice(goodprice);
					tdp.setGoodsID(gid);
					tdp.setGoodsCoun(goodcoun);
					tdp.setGoodsbuyed(goodsbuyed);
					List<TrolleyDetailVo> is = tds.iStroDetail(trolleyID, gid);
					boolean in = false;
					if(!is.isEmpty()){
						in = tds.updatTroGoodsNum(is.iterator().next().getGoodsCoun() + goodcoun, trolleyID, gid);
					}else{
						in = tds.insertTroGoods(tdp);
					}
					if(in == true){
						List<TrolleyDetailVo> listLast = tds.checktroDetailLast(trolleyID);
						GoodsVo gv = null;
						for (TrolleyDetailVo tli : listLast) {
							List<GoodsVo> one = gs.checkGoods(tli.getGoodsID());
							for (GoodsVo gone : one) {
								gv = gone;
							}
							
						}
						gv.setGoodsCoun(goodcoun);
						request.getSession().setAttribute("trolleyDetailVoLast", gv);
						response.sendRedirect(request.getContextPath()+"/goods/addGouSucc.jsp");
					}
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
