package com.fox.sp.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.dao.IMemberDao;
import com.fox.sp.dao.IOrderDao;
import com.fox.sp.dao.IOrderDetailDao;
import com.fox.sp.dao.impl.MemberDaoImpl;
import com.fox.sp.dao.impl.OrderDaoImpl;
import com.fox.sp.dao.impl.OrderDetailDaoImpl;
import com.fox.sp.util.MD5Code;
import com.fox.sp.vo.OrderVo;

public class ToPay extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public ToPay() {
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
		IMemberDao imd = new MemberDaoImpl();
		IOrderDao iod = new OrderDaoImpl();
		IOrderDetailDao iodd = new OrderDetailDaoImpl();
		MD5Code md5 = new MD5Code();
		
		OrderVo ov  = (OrderVo)(request.getSession().getAttribute("orderVo1"));
		int orderID = ov.getOrderID();
	
		int memberID = Integer.parseInt(request.getSession().getAttribute("memberID").toString());
		double amount = Double.parseDouble(request.getParameter("amount"));
		String toPayPwd = request.getParameter("toPayPassword");
		
		double memberAmount = imd.getMemberAmount(memberID);
		if(memberAmount < amount){
			PrintWriter out = response.getWriter();
			String path=request.getContextPath();
			out.println("<html><head>"+
					"<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />"+
					"<title>余额不足</title>"+
					"<script type=\"text/javascript\">  "+   
					"function countDown(secs,surl){ "+        
						"var jumpTo = document.getElementById(\"jumpTo\");"+
						"jumpTo.innerHTML=secs;"+  
						"if(--secs>0){ "+    
							"setTimeout(\"countDown(\"+secs+\",'\"+surl+\"')\",1000); "+   
						"} "+    
						"else{ "+      
							"location.href=surl;"+     
						"}"+     
					"}"+     
					"</script>"+ 
					"</head>"+

					"<body>余额不足，请充值！<span id='jumpTo'>5</span>秒后自动跳转到充值页面"+
						"<script type='text/javascript'>countDown(5,'"+path+"/member/memberQueryAmount?memberID="+memberID +"');</script>"+  
						"</body>"+
						"</html>");
		}else{
			System.out.println(memberAmount-amount);
			if(imd.toPay(memberID, md5.getMD5ofStr(toPayPwd), memberAmount-amount)){
				iod.updateToPayStatus(orderID);
				iodd.updateEvalution(orderID);
				PrintWriter out = response.getWriter();
				String path=request.getContextPath();
				request.getSession().removeAttribute("orderVo1");
				request.getSession().removeAttribute("goodsCount");
				out.println("<html><head>"+
						"<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />"+
						"<title>付款成功</title>"+
						"<script type=\"text/javascript\">  "+   
						"function countDown(secs,surl){ "+        
							"var jumpTo = document.getElementById(\"jumpTo\");"+
							"jumpTo.innerHTML=secs;"+  
							"if(--secs>0){ "+    
								"setTimeout(\"countDown(\"+secs+\",'\"+surl+\"')\",1000); "+   
							"} "+    
							"else{ "+      
								"location.href=surl;"+     
							"}"+     
						"}"+     
						"</script>"+ 
						"</head>"+

						"<body>付款成功，<span id='jumpTo'>5</span>秒后自动跳转到订单详情页面"+
							"<script type='text/javascript'>countDown(5,'"+path+"/orderQueryAll"+"');</script>"+  
							"</body>"+
							"</html>");
			}else{
				PrintWriter out = response.getWriter();
				String path=request.getContextPath();
				out.println("<html><head>"+
						"<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />"+
						"<title>付款失败</title>"+
						"<script type=\"text/javascript\">  "+   
						"function countDown(secs,surl){ "+        
							"var jumpTo = document.getElementById(\"jumpTo\");"+
							"jumpTo.innerHTML=secs;"+  
							"if(--secs>0){ "+    
								"setTimeout(\"countDown(\"+secs+\",'\"+surl+\"')\",1000); "+   
							"} "+    
							"else{ "+      
								"location.href=surl;"+     
							"}"+     
						"}"+     
						"</script>"+ 
						"</head>"+

						"<body>付款失败，<span id='jumpTo'>5</span>秒后自动跳转到订单支付页面"+
							"<script type='text/javascript'>countDown(5,'"+path+"/order/orderPay.jsp"+"');</script>"+  
							"</body>"+
							"</html>");
			}
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
