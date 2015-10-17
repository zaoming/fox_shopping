package com.fox.sp.servlet;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.po.PicAdPo;
import com.fox.sp.service.PicAdService;
import com.fox.sp.service.impl.PicAdServiceImpl;


public class PicAddServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	PicAdService pas = new PicAdServiceImpl();
	PicAdPo pap = new PicAdPo();
	/**
	 * Constructor of the object.
	 */
	public PicAddServlet() {
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
		String picPath = request.getParameter("picture");
		String addr = request.getParameter("addr");
		String timeStart = request.getParameter("control_date");
		String timeEnd = request.getParameter("control_date2");
		String creater = request.getSession().getAttribute("userTrueName").toString();
//		String creater = "bbb";
		
		System.out.println("广告提交：" + picPath + "    " + addr + timeStart + timeEnd);
		
		pap.setAdsPicture(picPath);
		pap.setIssueDate(timeStart);
		pap.setExpireDate(timeEnd);
		pap.setCreater(creater);
		
		boolean in = pas.insertAd(pap);
		if(in){
			System.out.println("广告添加成功！");
			response.sendRedirect("admin/rightadadd.jsp");
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
