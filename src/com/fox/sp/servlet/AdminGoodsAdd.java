package com.fox.sp.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.dao.IAdminGoodsDao;
import com.fox.sp.dao.impl.AdminGoodsDaoImpl;
import com.sun.jmx.snmp.Timestamp;

public class AdminGoodsAdd extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4794548675870969978L;

	/**
	 * Constructor of the object.
	 */
	public AdminGoodsAdd() {
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
		if(request.getSession().getAttribute("userTrueName") == null || request.getSession().getAttribute("userTrueName").equals("")){
			response.sendRedirect("index.html");
		}else{
			IAdminGoodsDao iagd = new AdminGoodsDaoImpl();
			String goodsName = request.getParameter("goodsName");
			String goodsIntroduce = request.getParameter("goodsIntroduce");
			float goodsNormalPrice = Float.parseFloat(request.getParameter("goodsNormalPrice"));
			float goodsMemberPrice = Float.parseFloat(request.getParameter("goodsMemberPrice"));
			float goodsRebate = Float.parseFloat(request.getParameter("goodsRebate"));
			int typeID = Integer.parseInt(request.getParameter("typeID"));
			int goodsNumber = Integer.parseInt(request.getParameter("goodsNumber"));
			int isSale = Integer.parseInt(request.getParameter("isSale"));
			String GoodsPicture1 = request.getParameter("imgPath1");
//			System.out.println(GoodsPicture1);
//			String creter = request.getSession().getAttribute("userName");
			String creater = request.getSession().getAttribute("userTrueName").toString();
			java.sql.Timestamp  createDate = new java.sql.Timestamp(new Date().getTime());
			String updater = request.getSession().getAttribute("userTrueName").toString();
//			String updater = request.getSession().getAttribute("userName");
			java.sql.Timestamp  updateDate = new java.sql.Timestamp(new Date().getTime());
			
			if(iagd.goodsAdd(goodsName,goodsIntroduce,goodsNormalPrice,goodsMemberPrice,goodsRebate,typeID,goodsNumber,isSale,GoodsPicture1,creater,createDate,updater,updateDate)){
				response.getWriter().print("添加成功!");
			}else{
				response.getWriter().print("添加数据失败!");
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
