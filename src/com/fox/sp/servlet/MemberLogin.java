package com.fox.sp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.dao.IMemberDao;
import com.fox.sp.dao.impl.MemberDaoImpl;
import com.fox.sp.po.MemberPo;
import com.fox.sp.util.MD5Code;

public class MemberLogin extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5891795690006237826L;

	/**
	 * Constructor of the object.
	 */
	public MemberLogin() {
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
		MD5Code md5 = new MD5Code();
		String from = request.getParameter("from");
		System.out.println(from);
		
		if(from == null || from.equals("") || from.equals("null")){
			from = "/goodsTypeView";
		}
		
		from = from.replace('-', '&');
		
		String nameOrEmai = request.getParameter("credentials.username");
		String memberPwd = request.getParameter("credentials.password");
		String validCode = request.getParameter("validCode");
		String validCode1 = request.getSession().getAttribute("rand").toString().trim();
		if(validCode.equals(validCode1)){
			List<MemberPo> list = imd.login(nameOrEmai, md5.getMD5ofStr(memberPwd));
			Iterator<MemberPo> it = list.iterator();
			if(it.hasNext()){
				MemberPo mp = it.next();
				int memberId = mp.getMemberID();
				String memberNiCheng = mp.getMemberNiCheng();
				int memberStatus = mp.getMemberStatus();
				
				
				if(memberStatus == 0){
					PrintWriter out = response.getWriter();
					String path=request.getContextPath();
					out.println("<html><head>"+
							"<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />"+
							"<title>该用户已冻结</title>"+
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

							"<body>用户已冻结，请遵守本站的相关制度，如需解冻，请联系客服！" +
							"<span id='jumpTo'>5</span>秒后自动跳转到登陆页面"+
								"<script type='text/javascript'>countDown(5,'"+path+"/member/login.jsp?from="+from+"');</script>"+  
								"</body>"+
								"</html>");
				}else{
					request.getSession().setAttribute("memberID", memberId);
					request.getSession().setAttribute("memberName", memberNiCheng);
					response.sendRedirect(request.getContextPath()+from);
				}
				
				
			}else{
				PrintWriter out = response.getWriter();
				String path=request.getContextPath();
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
							"<script type='text/javascript'>countDown(5,'"+path+"/member/login.jsp?from="+from+"');</script>"+  
							"</body>"+
							"</html>");
			}
		}else{
			PrintWriter out = response.getWriter();
			String path=request.getContextPath();
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
							"<script type='text/javascript'>countDown(5,'"+path+"/member/login.jsp?from="+from+"');</script>"+  
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
