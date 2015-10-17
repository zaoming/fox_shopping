package com.fox.sp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fox.sp.dao.IMemberDao;
import com.fox.sp.dao.impl.MemberDaoImpl;

public class MemberInfoUpdate extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -381949920826697203L;

	/**
	 * Constructor of the object.
	 */
	public MemberInfoUpdate() {
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
		IMemberDao imd = new MemberDaoImpl();
		int memberID = Integer.parseInt(request.getParameter("memberID"));
		String memberNiCheng = request.getParameter("userInfo.userRealName");
		String memberRealName = request.getParameter("userInfo.userRealRealName");
		String memberTelePhone = request.getParameter("userInfo.userMobile");
		String memberSex = request.getParameter("userInfo.userSex");
		String memberShenFen = request.getParameter("userInfo.profileInfo.userDegree");
		String memberShouRu = request.getParameter("userInfo.profileInfo.incomeDesc");
		String isBirthday = request.getParameter("isBirthday");
		String memberBirthday;
		
		if(memberShouRu.trim().equals("0")){
			memberShouRu = request.getParameter("isShouRu");
		}
		if(memberShenFen == null){
			memberShenFen = request.getParameter("isShenFen");
		}
		if(isBirthday == null || isBirthday.trim().equals("")){
			String birthYear = request.getParameter("birthYear");
			String birthMonth = request.getParameter("birthMonth");
			String birthDate = request.getParameter("birthDate");
			memberBirthday = birthYear+"年   "+birthMonth+"月   "+birthDate+"日";
			System.out.println(memberBirthday+"--null");
		}else{
			memberBirthday = isBirthday;
			System.out.println("!null--"+memberBirthday);
		}
		System.out.println("收入"+"---"+memberShouRu);
		System.out.println("身份"+"---"+memberShenFen);
//		String birthYear = request.getParameter("birthYear");
//		String birthMonth = request.getParameter("birthMonth");
//		String birthDate = request.getParameter("birthDate");
//		memberBirthday = birthYear+"年"+birthMonth+"月"+birthDate+"日";
//		System.out.println(memberBirthday);
		
		
		boolean b = imd.update(memberID,memberNiCheng,memberRealName,memberTelePhone,memberSex,memberBirthday,memberShenFen,memberShouRu);
		if(b){
			request.getRequestDispatcher("memberEditInfo?memberID="+memberID).forward(request, response);
		}else{
			System.out.println("修改出现错误");
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
