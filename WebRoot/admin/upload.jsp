<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.io.File"%>
<%@page import="java.io.PrintWriter"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'up.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <% 
    	boolean isMultipart = ServletFileUpload.isMultipartContent(request); //是否为文件上传表单
    	if(isMultipart){
    		FileItemFactory factory = new DiskFileItemFactory();
    		ServletFileUpload upload = new ServletFileUpload(factory);
    		upload.setFileSizeMax(10000000); //设置文件的最大大小
    		Iterator items = upload.parseRequest(request).iterator();
    		FileItem item = (FileItem)items.next();
    		if(!item.isFormField()){//判断是否是文件表单字段
    			//取出上传文件的文件名称
    			Date date = new Date();
    			String name = Integer.toString(date.getYear())+Integer.toString(date.getMonth())+Integer.toString(date.getDate())+Integer.toString(date.getDay())+Integer.toString(date.getHours())+Integer.toString(date.getMinutes())+Integer.toString(date.getSeconds())+item.getName();
    			String fileName = name.substring(name.lastIndexOf('\\')+1,name.length());
    			String path1 = request.getRealPath("goodsPicture");
    			String path2 = request.getRealPath("goodsPicture")+File.separatorChar+fileName;
    			String path3 = basePath+"goodsPicture/"+fileName;
    			//System.out.println(path3);
    			//System.out.println(path);
    			File uploadedFile = new File(path1);
    			File uploadedFile2 = new File(path2);
    			//System.out.println(path2);
    			if(!uploadedFile.exists()){
    				uploadedFile.mkdirs();
    			}
    			item.write(uploadedFile2);
    			//打印上传成功信息
    			response.setContentType("text/html");
    			response.setCharacterEncoding("utf-8");
    			//out.print("<img src="+path3+"></img>");
    			//request.setAttribute("name",name);
    			//request.setAttribute("fileName",fileName);
    			request.setAttribute("pa",path3);
    			request.setAttribute("msg","上传成功!");
    			request.getRequestDispatcher("pictureAdd.jsp").forward(request,response);
    			//request.getSession().setAttribute("a","aaa");
    		}
    	}
    	
     %>
  </body>
</html>
