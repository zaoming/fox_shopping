package com.fox.sp.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.dao.IOrderDao;
import com.fox.sp.dao.impl.OrderDaoImpl;

public class OrderToQueRen extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5071037113832386331L;

	/**
	 * Constructor of the object.
	 */
	public OrderToQueRen() {
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
		IOrderDao iod = new OrderDaoImpl();
		String orderIDs = request.getParameter("orderID");
		if(!orderIDs.equals("") || orderIDs != null){
			int orderID = Integer.parseInt(orderIDs);
			if(iod.updateToQueRen(orderID)){
				System.out.println("成功了!确认收货");
				response.sendRedirect(request.getContextPath()+"/orderQueryAll");
			}else{
				PrintWriter out = response.getWriter();
				String path=request.getContextPath();
				out.println("<html><head>"+
						"<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />"+
						"<title>操作失败</title>"+
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

						"<body>不好意思，操作失败，可能是由于网络原因，请重新操作！" +
						"<span id='jumpTo'>5</span>秒后自动跳转到订单页面"+
							"<script type='text/javascript'>countDown(5,'"+path+"/orderQueryAll"+"');</script>"+  
							"</body>"+
							"</html>");
			}
		}else{
			PrintWriter out = response.getWriter();
			String path=request.getContextPath();
			String from="";
			out.println("<html><head>"+
					"<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />"+
					"<title>请重新登录</title>"+
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

					"<body>用户静止时间过长，请重新登录！" +
					"<span id='jumpTo'>5</span>秒后自动跳转到登陆页面"+
						"<script type='text/javascript'>countDown(5,'"+path+"/member/login.jsp"+"');</script>"+  
						"</body>"+
						"</html>");
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
