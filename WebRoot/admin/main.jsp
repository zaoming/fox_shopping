<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>main</title>

</head>
<c:if test="${userTrueName == null }">
     <c:redirect url="index.html"></c:redirect>
</c:if>
<frameset rows="127,*,11" frameborder="no" border="0" framespacing="0">
	<frame src="top.jsp" name="topFrame" scrolling="no" noresize="noresize" id="topFrame" />
	<frame src="center.jsp" name="mainFrame" id="mainFrame" />
</frameset>
<noframes>
<body>
</body>
</noframes>
</html>