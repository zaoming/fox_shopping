package com.fox.sp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.dao.IOrderDetailDao;
import com.fox.sp.dao.impl.OrderDetailDaoImpl;
import com.fox.sp.service.IOrderService;
import com.fox.sp.service.impl.OrderServiceImpl;
import com.fox.sp.util.Wrapper;
import com.fox.sp.vo.OrderDetailVo;
import com.fox.sp.vo.OrderVo;
import com.fox.sp.wrapper.OrderVoWrapper;

public class OrderQueryOneServlet extends HttpServlet {
	
	/**
	 * Constructor of the object.
	 */
	public OrderQueryOneServlet() {
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
		int orderID = Integer.parseInt(request.getParameter("orderID"));
		Object memberIDs = request.getSession().getAttribute("memberID");
		if(memberIDs != null){
			if(!memberIDs.toString().equals("") || memberIDs.toString() != null){
				int memberID = Integer.parseInt(memberIDs.toString());
				
				
				List<OrderVo> ovone = ios.queryone(orderID);
				for (OrderVo orderVo : ovone) {
					int memberID1 = orderVo.getMemberID();
					if(memberID != memberID1){
						System.out.println("aaa");
						PrintWriter out = response.getWriter();
						String path=request.getContextPath();
						out.println("<html><head>"+
								"<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />"+
								"<title>错误操作</title>"+
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

								"<body>错误操作，请遵守本站的相关制度！" +
								"<span id='jumpTo'>5</span>秒后自动跳转到订单"+
									"<script type='text/javascript'>countDown(5,'"+path+"/orderQueryAll"+"');</script>"+  
									"</body>"+
									"</html>");
						return;
					}
				}
				List<OrderDetailVo> list = iodd.queryone(orderID);
				double b = 0;
				for (OrderDetailVo orderDetailVo : list) {
					b = b + (orderDetailVo.getGoodsCoun()*orderDetailVo.getGoodsPrice());
				}
				
				OrderVo orderVo1 = null;
				for (OrderVo orderVo : ovone) {
					orderVo1 = orderVo;
				}
				request.setAttribute("ovone", orderVo1);
				request.setAttribute("goodsDL", list);
				request.setAttribute("bamount", b);
				request.getRequestDispatcher("/order/orderDetails.jsp").forward(request, response);
			}
		}else{
			response.sendRedirect(request.getContextPath()+"/member/login.jsp?from=/orderQueryOne?orderID="+orderID);
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
