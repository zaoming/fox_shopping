package com.fox.sp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.po.AdminUserVo;
import com.fox.sp.service.AdminUserService;
import com.fox.sp.service.impl.AdminUserServiceImpl;

public class AdminLogin extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4172720646457852065L;

	/**
	 * Constructor of the object.
	 */
	public AdminLogin() {
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
		AdminUserService aus = new AdminUserServiceImpl();
		Object srand = request.getSession().getAttribute("sRand");
		if(srand == null){
			response.sendRedirect("index.jsp");
		}else{
			String sRand = srand.toString();
			String chknumber = request.getParameter("chknumber");
			String userName = request.getParameter("userName");
			String userPassword = request.getParameter("userPassword");
			
			if(chknumber.equals(sRand.trim())){
				List<AdminUserVo> list = aus.LoginCheck(userName, userPassword);
				Iterator<AdminUserVo> it = list.iterator();
				if(it.hasNext()){
					AdminUserVo auv = it.next();
					request.getSession().setAttribute("userName", auv.getUserName());
					request.getSession().setAttribute("userID", auv.getUserID());
					request.getSession().setAttribute("userTrueName", auv.getUserTrueName());
					response.sendRedirect("main.jsp");
				}else{
					PrintWriter out = response.getWriter();
					String path = request.getContextPath();
					out.println("<html><head>"+
							"<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />"+
							"<title>用户名或密码错误</title>"+
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

							"<body>用户名或密码错误，<span id='jumpTo'>5</span>秒后自动跳转到登陆页面"+
								"<script type='text/javascript'>countDown(5,'"+path+"/admin/index.html"+"');</script>"+  
								"</body>"+
								"</html>");
				}
			}else{
				PrintWriter out = response.getWriter();
				String path = request.getContextPath();
				out.println("<html><head>"+
						"<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />"+
						"<title>验证码错误</title>"+
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

						"<body>验证码错误，<span id='jumpTo'>5</span>秒后自动跳转到登陆页面"+
							"<script type='text/javascript'>countDown(5,'"+path+"/admin/index.html"+"');</script>"+  
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
