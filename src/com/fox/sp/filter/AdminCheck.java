package com.fox.sp.filter;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.dao.IMemberDao;
import com.fox.sp.dao.impl.MemberDaoImpl;
import com.fox.sp.po.MemberPo;

public class AdminCheck implements Filter{

	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest request = (HttpServletRequest) arg0;
		HttpServletResponse response = (HttpServletResponse) arg1;
		Object memberIDs = request.getSession().getAttribute("memberID");
		if(memberIDs != null){
			if(!memberIDs.toString().equals("") || memberIDs.toString() != null){
				int memberID = Integer.parseInt(memberIDs.toString());
				IMemberDao imd = new MemberDaoImpl();
				List<MemberPo> list = imd.queryPersonal(memberID);
				for (MemberPo memberPo : list) {
					int memberStatus = memberPo.getMemberStatus();
					if(memberStatus == 0){
						PrintWriter out = response.getWriter();
						String path=request.getContextPath();
						request.getSession().removeAttribute("memberID");
						out.println("<html><head>"+
								"<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />"+
								"<title>该用户已冻结</title>"+
								"<script type=\"text/javascript\">  "+   
								"function countDown(secs,surl){ "+        
									"var jumpTo = document.getElementById(\"jumpTo\");"+
									"jumpTo.innerHTML=secs;"+  
									"if(--secs>0){ "+    
										"setTimeout(\"countDown(\"+secs+\",'\"+surl+\"')\",2000); "+   
									"} "+    
									"else{ "+      
										"location.href=surl;"+     
									"}"+     
								"}"+     
								"</script>"+ 
								"</head>"+

								"<body>用户已冻结，请遵守本站的相关制度，如需解冻，请联系客服！" +
								"<span id='jumpTo'>5</span>秒后自动跳转到登陆页面"+
									"<script type='text/javascript'>countDown(10,'"+path+"/member/login.jsp"+"');</script>"+  
									"</body>"+
									"</html>");
						return;
					}
				}
			}
			
		}
		arg2.doFilter(request, response);
		
	}

	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
