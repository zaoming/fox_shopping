package com.fox.sp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspWriter;

import com.fox.sp.dao.IAdminGoodsTypeDao;
import com.fox.sp.dao.impl.AdminGoodsTypeImpl;

public class AdminGoodsTypeAdd extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6864880812528442846L;

	/**
	 * Constructor of the object.
	 */
	public AdminGoodsTypeAdd() {
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
			IAdminGoodsTypeDao iagtd = new AdminGoodsTypeImpl();
			int type1 = Integer.parseInt(request.getParameter("type1"));
			int type2 = Integer.parseInt(request.getParameter("type2"));
			String typeName = request.getParameter("typeName");
			String typeDesc = request.getParameter("typeDesc");
			int parentID = 0;				//要传到service的父ID
			int isLeaf = 1;					//是否是叶子节点 1,表示非叶子节点
			int typeLevel = 1;				//商品类型等级
			if(type1 == 0){
				parentID = 0;
				isLeaf = 1;
				typeLevel = 1;
			}else{
				if(type2 == 0){
					parentID = type1;
					isLeaf = 0;
					typeLevel = 2;
				}else{
					parentID = type2;
					isLeaf = 0;
					typeLevel = 3;
				}
			}
			//String creater = request.getSession().getAttribute("userName").toString();
			String creater = request.getSession().getAttribute("userTrueName").toString();
			Timestamp createDate = new Timestamp(new Date().getTime());
			String updater = request.getSession().getAttribute("userTrueName").toString();
			Timestamp updateDate = new Timestamp(new Date().getTime());
			PrintWriter out = response.getWriter();
			if(iagtd.goodsTypeAdd(typeName,typeDesc,isLeaf,parentID,typeLevel,creater,createDate,updater,updateDate)){
				
				out.print("添加成功");
			}
			else{
				out.print("添加失败");
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
