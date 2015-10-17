<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/chili-1.7.pack.js"></script>
<script type="text/javascript" src="js/jquery.easing.js"></script>
<script type="text/javascript" src="js/jquery.dimensions.js"></script>
<script type="text/javascript" src="js/jquery.accordion.js"></script>
<script language="javascript">
	jQuery().ready(function(){
		jQuery('#navigation').accordion({
			header: '.head',
			navigation1: true, 
			event: 'click',
			fillSpace: true,
			animated: 'bounceslide'
		});
	});
</script>
<style type="text/css">
<!--
body {
	margin:0px;
	padding:0px;
	font-size: 12px;
}
#navigation {
	margin:0px;
	padding:0px;
	width:147px;
}
#navigation a.head {
	cursor:pointer;
	background:url(images/main_34.gif) no-repeat scroll;
	display:block;
	font-weight:bold;
	margin:0px;
	padding:5px 0 5px;
	text-align:center;
	font-size:12px;
	text-decoration:none;
}
#navigation ul {
	border-width:0px;
	margin:0px;
	padding:0px;
	text-indent:0px;
}
#navigation li {
	list-style:none; display:inline;
}
#navigation li li a {
	display:block;
	font-size:12px;
	text-decoration: none;
	text-align:center;
	padding:3px;
}
#navigation li li a:hover {
	background:url(images/tab_bg.gif) repeat-x;
		border:solid 1px #adb9c2;
}
-->
</style>
</head>
<body>
<div  style="height:100%;">
  <ul id="navigation">
    <li> <a class="head">用户管理</a>
      <ul>
        <li><a href="adminMemberAll" target="rightFrame">查看/修改用户</a></li>
      </ul>
    </li>
    <li> <a class="head">商品管理</a>
      <ul>
        <li><a href="goodsTypeAdd.jsp" target="rightFrame">添加商品类型</a></li>
        <li><a href="adminGoodsTypeAll?url=goodsTypeAll.jsp" target="rightFrame">查看/修改商品类型</a></li>
        <li><a href="goodsAdd.jsp" target="rightFrame">添加商品</a></li>
        <li><a href="adminGoodsAll?flag=0" target="rightFrame">查看商品</a></li>
      </ul>
    </li>
    <li><a class="head">订单管理</a>
	   <ul>
		<li><a href="<%=path %>/orderAdminQueryAll" target="rightFrame">查看/修改订单</a></li>
	   </ul>
	</li>
    <li> <a class="head">销售统计</a>
      <ul>
        <li><a href="adminGoodsTop" target="rightFrame">销售排行</a></li>
      </ul>
    </li>
    <li> <a class="head">广告管理</a>
      <ul>
        <li><a href="rightadadd.jsp" target="rightFrame">添加广告</a></li>
        <li><a href="../picAdCheck" target="rightFrame">查看/修改广告</a></li>
      </ul>
    </li>
         <li> <a class="head">公告管理</a>
      <ul>
        <li><a href="rightNoticeAdd.jsp" target="rightFrame">添加公告</a></li>
        <li><a href="../noticeCheck" target="rightFrame">查看/修改公告</a></li>
      </ul>
    </li>
  </ul>
    
</div>
</body>
</html>
