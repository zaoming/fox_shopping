package com.fox.sp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.service.NoticeService;
import com.fox.sp.service.impl.NoticeServiceImpl;
import com.fox.sp.vo.NoticeVo;

public class oneNotice extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4114015159944437797L;
	NoticeService ns = new NoticeServiceImpl();
	/**
	 * Constructor of the object.
	 */
	public oneNotice() {
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
		//request.setCharacterEncoding("utf-8");
		//response.setContentType("text/html;charset=utf-8");
		
		String placardTitle = request.getParameter("placardTitle");
		String placardContent = request.getParameter("placardContent");
		String updateDate = request.getParameter("updateDate");
		
		System.out.println(placardTitle + placardContent + updateDate);
		
		request.getSession().setAttribute("placardTitle", placardTitle);
		request.getSession().setAttribute("placardContent", placardContent);
		request.getSession().setAttribute("updateDate", updateDate);
		response.sendRedirect("otherpage/mynotice.jsp");
//		String id = request.getParameter("placardID");
//		int  placardID = Integer.parseInt(id); 
//		System.out.println(placardID);
//		
//		List<NoticeVo> list = ns.checkNotice(placardID);
//		
//		if(!list.isEmpty()){
//			request.getSession().setAttribute("list", list);
//			response.sendRedirect("otherpage/mynotice.jsp");
//		}
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
