<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'pictureAdd.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="<%=path %>/admin/jquery/jquery-1.4.2.js"></script>
	<script>
		function aa(path1){
			opener.window.setPictureValue(path1);
			alert(path1);
			window.close();
		}
	</script>
  </head>
  
  <body>
     <form action="admin/upload.jsp" method="post" ENCTYPE="multipart/form-data">
     	<input type="file" name="file1" /><br/>
     	<input type="submit" value="上传" name="submit"/>
     </form>
     <img alt="" src="${pa }" width="100" height="100"></img>
     <span id="mesg">${msg }</span>
     <input type="button" id="set1" name="111" value="确定传值" onclick="aa('${pa }')"/>
  </body>
</html>
