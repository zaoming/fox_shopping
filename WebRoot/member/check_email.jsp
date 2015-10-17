<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.fox.sp.dao.IMemberDao"%>
<%@page import="com.fox.sp.dao.impl.MemberDaoImpl"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
IMemberDao imd = new MemberDaoImpl();
String memberName = request.getParameter("user.email");
List<String> list = imd.getMemberEmail();
boolean b = true;
for(String string:list){
	if(memberName.equals(string)){
		b = false;	
	}
}
if(b){
	out.print("1");
}else{
	out.print("2");
}
%>