package com.fox.sp.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.dao.IGoodsDao;
import com.fox.sp.dao.IGoodsTypeDao;
import com.fox.sp.dao.impl.GoodsDaoImpl;
import com.fox.sp.dao.impl.GoodsTypeDaoImpl;
import com.fox.sp.po.GoodsPo;
import com.fox.sp.util.fenye;

public class GoodsSerchT extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public GoodsSerchT() {
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
		IGoodsTypeDao igtd = new GoodsTypeDaoImpl();
		String key = request.getParameter("key");
		Object key1 = request.getSession().getAttribute("typeName3s");
		if(key == null || key == ""){
			if(key1 != null){
				key = key1.toString();
				
			}
		}
		String sorts = request.getParameter("sorts");
		int pCount = 8;
		int currentPage = Integer.parseInt(request.getSession().getAttribute("serchCurrentPage").toString());
//		int currentPage = 1;
		int flag=Integer.parseInt(request.getParameter("flag"));
//		int flag = 0;
		
		if(key == null){
			key = "";
		}
		
		String sort = null;
		String dora = null;
		if(sorts != null){
			String s[] = sorts.split("0");
			sort = s[0];
			dora = s[1];
		}
		
		int count = igd.Count2(key);
		fenye fy = new fenye(pCount, count, currentPage);
		int rPage;
		int cPage;
		int enPage = fy.getEndPage();
		if(flag == 0){
			currentPage = fy.getLastPage();
			rPage = (currentPage-1)*pCount;
			cPage = rPage+pCount;
		}else if(flag == 1){
			currentPage = fy.getNextPage();
			rPage = (currentPage-1)*pCount;
			cPage = rPage+pCount;
		}else{
			rPage=(currentPage-1)*pCount;
			cPage=rPage+pCount;
		}
		List<GoodsPo> list = igd.serchSerch(key,rPage,cPage,sorts);
		
		request.getSession().setAttribute("goodsList1s", list);			//查询商品列表
		request.getSession().setAttribute("serchCount", count);		//查询总数
		request.getSession().setAttribute("serchCurrentPage", currentPage);//商品当前页
		request.getSession().setAttribute("serchEndPage", enPage);//商品最后一页
		request.getSession().setAttribute("sort1", sort);				//商品按什么排序
		request.getSession().setAttribute("dora1", dora);				//desc或者asc排序
		request.getSession().setAttribute("key1", key);
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
