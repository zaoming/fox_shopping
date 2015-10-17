package com.fox.sp.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.service.NoticeService;
import com.fox.sp.service.PicAdService;
import com.fox.sp.service.impl.NoticeServiceImpl;
import com.fox.sp.service.impl.PicAdServiceImpl;
import com.fox.sp.vo.NoticeVo;
import com.fox.sp.vo.PicAdVo;

public class PicAdPro extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 834426842962624367L;
	PicAdService pas = new PicAdServiceImpl();
	NoticeService ns = new NoticeServiceImpl();
	/**
	 * Constructor of the object.
	 */
	public PicAdPro() {
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
		List<PicAdVo> list = pas.checkAdPro();
		List<NoticeVo> listno = ns.checkNoAll();
		List<PicAdVo> lad = new ArrayList<PicAdVo>();
		List<NoticeVo> lno = new ArrayList<NoticeVo>();

		System.out.println("广告：");
		Iterator<PicAdVo> it = list.iterator();
		for (int i = 0; it.hasNext(); i++) {
			PicAdVo pa = it.next();
			if(i < 8){
				lad.add(pa);
				System.out.println(pa.getAdsPicture());
				System.out.println(pa.getAddress());
			}else{
				break;
			}

		}
		System.out.println("公告：");
		Iterator<NoticeVo> itn = listno.iterator();

		for(int i = 0;itn.hasNext();i++){
			NoticeVo no = itn.next();
			if(i < 4){
				lno.add(no);
				System.out.println("第" + i + "条公告：" + no.getPlacardTitle());
			}else{
				break;
			}
		}
		
      	Integer trolleyid = 1;
      	request.getSession().setAttribute("trolleyID",trolleyid);
		request.getSession().setAttribute("lad", lad);
		request.getSession().setAttribute("lno", lno);
		response.sendRedirect("index.jsp");
		//response.sendRedirect("js/index.jsp");
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
