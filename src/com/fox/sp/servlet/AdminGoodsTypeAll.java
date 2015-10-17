package com.fox.sp.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.dao.IAdminGoodsTypeDao;
import com.fox.sp.dao.impl.AdminGoodsTypeImpl;
import com.fox.sp.po.GoodsTypePo;

public class AdminGoodsTypeAll extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3427486840245720544L;

	/**
	 * Constructor of the object.
	 */
	public AdminGoodsTypeAll() {
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
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getSession().getAttribute("userTrueName") == null
				|| request.getSession().getAttribute("userTrueName").equals("")) {
			response.sendRedirect("index.html");
		} else {
			String url = request.getParameter("url");
			List<GoodsTypePo> list = new ArrayList<GoodsTypePo>();
			IAdminGoodsTypeDao iagtd = new AdminGoodsTypeImpl();
			List<GoodsTypePo> bigList = iagtd.goodsType(list, 0);
			List<GoodsTypePo> li1 = new ArrayList<GoodsTypePo>();
			List<GoodsTypePo> li2 = new ArrayList<GoodsTypePo>();
			List<GoodsTypePo> li3 = new ArrayList<GoodsTypePo>();

			Iterator<GoodsTypePo> it = bigList.iterator();
			while (it.hasNext()) {
				GoodsTypePo goodtypepo1 = it.next();
				// System.out.println(goodtypepo1.getTypeName()+"--1级--->");
				li1.add(goodtypepo1);

				List<GoodsTypePo> list1 = goodtypepo1.getList();
				Iterator<GoodsTypePo> it1 = list1.iterator();
				while (it1.hasNext()) {
					GoodsTypePo goodtypepo2 = it1.next();
					// System.out.println(goodtypepo2.getTypeName()+"--2级-->");
					li2.add(goodtypepo2);

					List<GoodsTypePo> list2 = goodtypepo2.getList();
					Iterator<GoodsTypePo> it2 = list2.iterator();
					while (it2.hasNext()) {
						GoodsTypePo goodtypepo3 = it2.next();
						// System.out.println(goodtypepo3.getTypeName()+"---3->");
						li3.add(goodtypepo3);
					}

				}
			}
			request.getSession().setAttribute("goodsType1", li1);
			request.getSession().setAttribute("goodsType2", li2);
			request.getSession().setAttribute("goodsType11", li1);
			request.getSession().setAttribute("goodsType22", li2);
			request.getSession().setAttribute("goodsType3", li3);
			// System.out.println(url);
			// for (GoodsTypePo goodsTypePo : li1) {
			// System.out.println(goodsTypePo.getTypeName());
			// }
			response.sendRedirect(url);
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
