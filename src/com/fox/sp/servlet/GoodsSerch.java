package com.fox.sp.servlet;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.dao.IGoodsDao;
import com.fox.sp.dao.impl.GoodsDaoImpl;
import com.fox.sp.po.GoodsPo;
import com.fox.sp.util.fenye;

public class GoodsSerch extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4560832575828301340L;

	/**
	 * Constructor of the object.
	 */
	public GoodsSerch() {
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
		IGoodsDao igd = new GoodsDaoImpl();
		
		
		String key = request.getParameter("key");
		if(key == null || key.equals("")){
			key = "";
		}
		
		List<GoodsPo> list = igd.serchSerch(key, 0, 8, null);
		int count = 0;
		for (GoodsPo goodsPo : list) {
			count = count+1;
		}
		fenye fy = new fenye(8, count, 1);
		int enPage = fy.getEndPage();
		
		
		
		request.getSession().setAttribute("goodsList1s", list);
		request.getSession().setAttribute("typeName3s", key);
		request.getSession().setAttribute("serchCurrentPage",1);
		request.getSession().setAttribute("serchCount", count);
		//request.getSession().setAttribute("menuSerchtypeID", typeID);
		request.getSession().setAttribute("serchCurrentPage",1);
		request.getSession().setAttribute("serchEndPage", enPage);
		request.getSession().setAttribute("doras", 1);
		request.getSession().setAttribute("sorts", null);
		response.sendRedirect("goodsSerchs.jsp");
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
