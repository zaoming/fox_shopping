<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'a.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<style>
		#a{
			width:100px;
		}
	</style>
	
	<script src="<%=path %>/goods/js/jquery-1.4.2.js"></script>
	<script>
	$(document).ready(function(){
		var te = document.getElementById("te");
		var aa = document.getElementById("a");
		  $("#te").keyup(function (){
			  //alert(te.value);
			  $.ajax({
					type:"post",
					url:"<%=path %>/goods/jquery/b.jsp",
					data:"inp="+te.value,
					error:function(){alert(1)},
					success:function(msg){
						alert(msg);
						aa.innerHTML=msg;
					}
				});
		  })
			  $("#1").click(function (){
				  	alert(12);
				  	var a = document.getElementById("b");
				  	alert($(this).html());
				 	$("#te").val($(this).html());
			   });
			   $("#0").click(function (){
				  	alert(12);
				  	var a = document.getElementById("b");
				  	alert($(this).html());
				 	$("#te").val($(this).html());
			   });

		  	
		   $("#9").click(function (){
			  	alert(12);
			  	
		   })
			
	}); 
	</script>
  </head>
  
  <body>
  	
    <input type="text" id="te" width="100px"/>
    <div id="a"></div>
    <div id=9>aaa</div>
  </body>
</html>
