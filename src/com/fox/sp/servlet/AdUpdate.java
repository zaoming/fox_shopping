package com.fox.sp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.po.PicAdPo;
import com.fox.sp.service.PicAdService;
import com.fox.sp.service.impl.PicAdServiceImpl;

public class AdUpdate extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3859925048634035008L;
	PicAdService pas = new PicAdServiceImpl();
	/**
	 * Constructor of the object.
	 */
	public AdUpdate() {
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
		String id = request.getParameter("adsID");

		int adsID = Integer.parseInt(id);
		String timeState = request.getParameter("control_date");
		String timeEnd = request.getParameter("control_date2");
		System.out.println("广告" + id + timeEnd + timeState);
		String updater = request.getSession().getAttribute("userTrueName").toString();
//		String updater = "bbb";
		
		PicAdPo pap = new PicAdPo();
		pap.setIssueDate(timeState);
		pap.setExpireDate(timeEnd);
		pap.setUpdater(updater);
		
		boolean up = pas.updateAd(adsID, pap);
		if(up){
			System.out.println("续期成功！");
			request.getRequestDispatcher("/picAdCheck").forward(request, response);
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
