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
import com.fox.sp.po.GoodsTypePo;
import com.fox.sp.util.fenye;

public class GoodsMenuSerchT extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3948223503897047752L;

	/**
	 * Constructor of the object.
	 */
	public GoodsMenuSerchT() {
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
		int typeID=Integer.parseInt(request.getSession().getAttribute("menuSerchtypeID").toString());
		String sorts = request.getParameter("sorts");
		int pCount = 8;
		int currentPage = Integer.parseInt(request.getSession().getAttribute("menuSerchCurrentPage").toString());
//		int currentPage = 1;
		int flag=Integer.parseInt(request.getParameter("flag"));
//		int flag = 0;
		
		
		int count = igd.Count1(typeID);
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
		List<GoodsPo> list = igd.serchMenu(typeID,rPage,cPage,sorts);
		String sort = null;
		String dora = null;
		if(sorts != null){
			String s[] = sorts.split("0");
			sort = s[0];
			dora = s[1];
		}
		request.getSession().setAttribute("goodsList1", list);			//查询商品列表
		request.getSession().setAttribute("menuSerchCount", count);		//查询总数
		request.getSession().setAttribute("menuSerchCurrentPage", currentPage);//商品当前页
		request.getSession().setAttribute("menuSerchEndPage", enPage);//商品最后一页
		request.getSession().setAttribute("sort", sort);				//商品按什么排序
		request.getSession().setAttribute("dora", dora);				//desc或者asc排序
		response.sendRedirect("goodsSerch.jsp");
		
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
