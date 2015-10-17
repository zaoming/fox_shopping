<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	String s[] = {"手机","电脑","电池","平板电脑","小米手机","魅族手机","联想电脑","华硕电脑","m2"};
	String a = "电";
	String b = request.getParameter("inp");
	for(int i=0;i<s.length;i++){
		if(s[i].contains(b)){
			System.out.println(s[i]);
			out.print("<span id='"+i+"'"+">"+s[i]+"</span>");
		}
	}
	
%>
