package com.fox.sp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.po.NoticePo;
import com.fox.sp.service.NoticeService;
import com.fox.sp.service.impl.NoticeServiceImpl;

public class NoticeAdd extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2685565487422343488L;
	NoticeService ns = new NoticeServiceImpl();
	/**
	 * Constructor of the object.
	 */
	public NoticeAdd() {
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
		String placardTitle = request.getParameter("placardTitle");
		String placardContent = request.getParameter("placardContent");
		String timeStart = request.getParameter("control_date");
		String timeEnd = request.getParameter("control_date2");
		String creater = request.getSession().getAttribute("userTrueName").toString();
//		String creater = "bbb";
		
		NoticePo np = new NoticePo();
		
		np.setPlacardTitle(placardTitle);
		np.setPlacardContent(placardContent);
		np.setCreater(creater);
		np.setiSsueDate(timeStart);
		np.setExpireDate(timeEnd);
		
		boolean in = ns.insertNo(np);
		if(in){
			System.out.println("插入成功！");
			response.sendRedirect("admin/rightNoticeAdd.jsp");
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
