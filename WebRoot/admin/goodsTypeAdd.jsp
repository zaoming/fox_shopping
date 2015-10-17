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
    
    <title>My JSP 'goodsTypeAdd' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="<%=path %>/admin/jquery/jquery-1.4.2.js"></script>
	<script type="text/javascript">
	function over(a)
	{
		document.getElementById('addLevel1').style.display="none";
		document.getElementById('addLevel2').style.display="none";
		document.getElementById('addLevel3').style.display="none";
		document.getElementById(a).style.display="block";
		if(a == "addLevel3"){
			document.getElementById('addLevel2').style.display="block";
			}
		//$(this).load("adminGoodsTypeAll",{url:goodsTypeAdd.jsp});
		//$.post("adminGoodsTypeAll",{url:goodsTypeAdd.jsp});
		//location.href="admin/adminGoodsTypeAll?url=goodsTypeAdd.jsp";
		if(a == "addLevel2"){
			
			$.ajax({
				type:"post",
				url:"admin/order2.jsp",
				error:function(){alert(1)},
				success:function(msg){
					var test=document.getElementById("addLevel2");
					test.innerHTML="<select id='type1' name='type1' onchange='change(this.value)'>"+msg+"</select>";
				}
				});
		}
		if(a == "addLevel3"){
			$.ajax({
				type:"post",
				url:"admin/order2.jsp",
				error:function(){alert(1)},
				success:function(msg){
					var test=document.getElementById("addLevel2");
					test.innerHTML="<select id='type1'name='type1' onchange='change(this.value)' >"+msg+"</select>";
				}
				});
		}
	}
	function change(b)
	{
		$.ajax({
			type:"post",
			url:"admin/order3.jsp",
			data:"type_id="+b,
			error:function(){alert(1)},
			success:function(msg){
				var test=document.getElementById("addLevel3");
				test.innerHTML="<select id='type2' name='type2'>"+msg+"</select>";
			}
			});
	}
	
</script>

  </head>
  
  <body>
  	<span id="ss"></span>
  	<input type="button" id="add1" value="添加根类别" onclick="over('addLevel1')"/>
  	<input type="button" id="add2" value="添加二级类别" onclick="over('addLevel2')"/>
  	<input type="button" id="add3" value="添加三级类别" onclick="over('addLevel3')"/>
  	
  	<form action="admin/adminGoodsTypeAdd" method="post">
  	<div id="addLevel1" style="display:none">
  	</div>
  	
  	<div id="addLevel2" style="display:none">
  	<select id="type1" name='type1' onchange="change(this.value)">
  		<option value="0">请选择根类别</option>
  	</select>
  	--->
  	</div>
  	
  	<div id="addLevel3" style="display:none">
  	<select id="type2" name='type2'>
  		<option value="0">请选择二级类别</option>
  	</select>
  	--->
  	</div>
  	<br/>
  	<font size="2.5px">类别名称:</font>
  	<input type="text"  name="typeName"/><br/>
  	<font size="2.5px">类别描述:</font>
  	<input type="text"  name="typeDesc"/><br/>
  	
  	<input type="submit"  value="添加" >
  	</form>
  </body>
</html>
