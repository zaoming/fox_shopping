package com.fox.sp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.dao.IOrderDao;
import com.fox.sp.dao.IOrderDetailDao;
import com.fox.sp.dao.impl.OrderDaoImpl;
import com.fox.sp.dao.impl.OrderDetailDaoImpl;
import com.fox.sp.po.OrderDetailPo;
import com.fox.sp.po.TrollyDetailPo;
import com.fox.sp.service.IOrderService;
import com.fox.sp.service.MyTrolleyService;
import com.fox.sp.service.OrderDetailService;
import com.fox.sp.service.Trolleydetaiservice;
import com.fox.sp.service.impl.MyTrolleyServiceImpl;
import com.fox.sp.service.impl.OrderDetailServiceImpl;
import com.fox.sp.service.impl.OrderServiceImpl;
import com.fox.sp.service.impl.TrolleydataiserviceImpl;
import com.fox.sp.vo.MyTrolleyVo;
import com.fox.sp.vo.OrderVo;
import com.sun.jmx.snmp.Timestamp;

public class OrderInsertServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public OrderInsertServlet() {
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
		doPost(request,response);
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
		IOrderService ios = new OrderServiceImpl();
		IOrderDetailDao iodd = new OrderDetailDaoImpl();
		IOrderDao iod = new OrderDaoImpl();
		MyTrolleyService mts = new MyTrolleyServiceImpl();
		Trolleydetaiservice tds = new TrolleydataiserviceImpl();
		
		
		String memberAddrs = request.getParameter("memberAddr");
		System.out.println(memberAddrs);
		String args[] = memberAddrs.split(",");
		String memberTrueName = args[0];
		String memberProvince = args[1];
		String memberCity = args[2];
		String memberAddress = args[3];
		String memberPostcode = args[4];
		String memberTelephone = args[5];
		//int memberID = Integer.parseInt(request.getSession().getAttribute("memberID").toString());
		int memberID = Integer.parseInt(request.getSession().getAttribute("memberID").toString());
	

//		String memberTrueName = request.getParameter("memberName");
//		String memberAddress = request.getParameter("memberAddress");
//		String memberProvince = request.getParameter("memberProvince");
//		String memberCity = request.getParameter("memberCity");
//		String memberArea = "空";
//		String memberPostcode = request.getParameter("memberCode");
//		String memberTelephone = request.getParameter("memberTelephone");
//		int orderPay = Integer.parseInt(request.getParameter("orderPay"));
//		int orderAmount = Integer.parseInt(request.getParameter("orderAmount"));
//		int isOrderInvoice = Integer.parseInt(request.getParameter("isOrderInvoice"));
//		int orderCarry = Integer.parseInt(request.getParameter("orderCarry"));
		String orderRemark = request.getParameter("orderRemark");
		//String orderStatus1 = request.getParameter("orderStatus1");
		int orderStatus1 = 0;
//		String orderStatus2 = request.getParameter("orderStatus2");
		int orderStatus2 = 0;
//		String orderStatus3 = request.getParameter("orderStatus3");
		int orderStatus3 = 0;
//		String oreateDate = request.getParameter("oreateDate");
		java.sql.Timestamp oreateDate = new java.sql.Timestamp(new Date().getTime());
//		String updateDate = request.getParameter("updateDate");
		java.sql.Timestamp updateDate = new java.sql.Timestamp(new Date().getTime());
		List<OrderDetailPo> oDetailList = (List<OrderDetailPo>)request.getSession().getAttribute("oDetailList");
		double orderAmount = 0;
		for (OrderDetailPo orderDetailPo : oDetailList) {
			orderAmount = orderAmount+(orderDetailPo.getGoodsPrice()*orderDetailPo.getGoodsCoun());
		}
		
		
		if(ios.insertOrder(memberID,memberTrueName,memberAddress,memberProvince,memberCity,memberPostcode,memberTelephone,orderAmount+10,1,1,1,orderRemark,orderStatus1,orderStatus2,orderStatus3,oreateDate,updateDate)){
														//根据会员id添加到order表里
			List<OrderVo> list = iod.queryTheLast(memberID);
			int orderID = 0;
			for (OrderVo orderVo : list) {				//根据会员memberid获得刚添加进去的orderid
				orderID = orderVo.getOrderID();
				System.out.println("根据会员memberid获得刚添加进去的id----"+orderID);
			}
			
			float goodsCount = 0;
			for (OrderDetailPo orderDetailPo : oDetailList) {
				OrderDetailPo odp = orderDetailPo;
				odp.setOrderID(orderID);
				goodsCount = goodsCount + odp.getGoodsCoun();
				iodd.insertOrderDetail(odp);//往订单详情表里添加数据
				System.out.println("往订单详情表里添加数据");
			}
			
			List<MyTrolleyVo> list1  = mts.getTrolleyID(memberID);
			int trolleyID = 0;							//根据会员id得到购物车id
			for (MyTrolleyVo myTrolleyVo : list1) {
				trolleyID = myTrolleyVo.getTrolleyID();
				System.out.println("根据会员id得到购物车id---"+trolleyID);
			}
			
			for (OrderDetailPo orderDetailPo : oDetailList) {
				int goodsID = orderDetailPo.getGoodsID();
				if(tds.deletetroGoods(trolleyID, goodsID)){		//删除购物车数据
					System.out.println("删除购物车成功！");											
				}else{
					System.out.println("删除购物车失败");
				}
			}
			
			OrderVo ov1 = new OrderVo();
			ov1.setOrderID(orderID);
			ov1.setOrderAmount(orderAmount+10);
			ov1.setOrderRemark(orderRemark);
			request.getSession().setAttribute("orderVo1", ov1);
			request.getSession().setAttribute("goodsCount", goodsCount);
			response.sendRedirect(request.getContextPath()+"/order/orderPay.jsp");
		}else{
			request.setAttribute("error", "提交失败！");
			response.sendRedirect(request.getContextPath()+"/order/error.jsp");
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
