<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<c:if test="${goodsType1_former == null }">
		<c:redirect url="goodsTypeView"></c:redirect>
	</c:if>
  </head>
  
  <body>
    <DIV class=menuNav>
      <H2>所有商品分类</H2>
      <c:forEach items="${goodsType1_former }" var="li1">
      <DIV id=SNmenuNav class=navlist>
        <DL>
          <DT class=icon03><A href="#"  target=_blank>${li1.typeName }</A></DT>
          <DD class=menv03>
            <UL class=sideleft>
              <H3>${li1.typeName }</H3>
              <c:forEach items="${goodsType2_former }" var="li2">
              <c:if test="${li1.typeID == li2.parentID }">
              <LI class=noline><B>${li2.typeName }</B>
                <DIV><c:forEach items="${goodsType3_former }" var="li3">
                	<c:if test="${li2.typeID == li3.parentID }">
                	 <A title=GSM手机 href="#" target=_blank>${li3.typeName }</A>
                	 </c:if>
                	  </c:forEach>
                </DIV>
                <SPAN class=clear></SPAN>
              </LI>
              </c:if>
              </c:forEach>
            </UL>
           </DD>
          </DL>
       </DIV>
       </c:forEach>
    </DIV>
  </body>
</html>
