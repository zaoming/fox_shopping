<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String path1 = path+"/admin/";
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'goodsAdd.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	
	<script type="text/javascript" src="<%=path %>/admin/jquery/jquery-1.4.2.js"></script>
	<script>
		function aa(){
			$.ajax({
				type:"post",
				url:"admin/order4.jsp",
				error:function(){alert(1)},
				success:function(msg){
					var test=document.getElementById("sel1");
					test.innerHTML="<select id='typeID' name='typeID'>"+msg+"</select>";
				}
				});
		} 

		 function opendialog1(goodsPicture)//打开增加商品图片页面
	     {
	    		var style = "width=800,height=400,location=no,directories=no,toolbar=no,status=no,menubar=no,resizable=no,scrollbars=no,z-look=yes";  
	            window.open("<%=path1 %>pictureAdd.jsp","打开窗口传值",style);
	     }

	     function setPictureValue(picturePath){
			document.getElementById("image1").src=picturePath;
			document.getElementById("path1").value=picturePath;
		 }

		 function upRebate(){
			 var normal = document.getElementById("goodsNormalPrice").value;
			 var member = document.getElementById("goodsMemberPrice").value;
			 var rebate = document.getElementById("goodsRebate");
			 rebate.value = ((normal-member)/normal).toFixed(2);
			 
		 }
	</script>

	<style type="text/css">
		#div2{
			float:left;
			margin-left:50;
		}
		#div1{
			float:left;
			width:200;
		}
	</style>
  </head>
  
  <body>
  <div align="left" style="margin-left: 50">
    <form action="admin/adminGoodsUpdate" method="post" >
    <div id="div1">
    	<input type="hidden" name="goodsID" value="${adminGoodsPo.goodsID }"/>
    	<font size='2px'>商品名称:</font><input size="30" type="text" name="goodsName"/ value="${adminGoodsPo.goodsName }" ><br/><br/>
    	<font size='2px'>商品简介:</font><textarea rows="10" cols="24" name="goodsIntroduce">${adminGoodsPo.goodsIntroduce }"</textarea> <br/><br/>
    	<font size='2px'>市场价格:</font><input type="text" id="goodsNormalPrice" name="goodsNormalPrice" onblur="upRebate()" value="${adminGoodsPo.goodsNormalPrice }" /><br/><br/>
    	<font size='2px'>商城价格:</font><input type="text" id="goodsMemberPrice" name="goodsMemberPrice" onblur="upRebate()" value="${adminGoodsPo.goodsMemberPrice }" /><br/><br/>
    	<font size='2px'>折扣率:</font><input type="text" id="goodsRebate" name="goodsRebate" value="${adminGoodsPo.goodsRebate}" /><br/><br/>
    	<font size='2px'>所属类别:</font><input type="button" id="addgoods" name="addgoods" value="查找类别" onclick="aa()"/>
    	
    	<div id="sel1">
    		<select id='typeID' name='typeID'>
    			<option value="${adminGoodsPo.typeID }"> ${adminGoodsPo.typeID } </option>
    		</select>
    	</div><br/>
    	<font size='2px'>商品库存:</font><input type="text" id="goodsNumber" name="goodsNumber" value="${adminGoodsPo.goodsNumber }" /><br/>
    	</div>
    	
    	<div id="div2">
    		<font size='2px'>商品图片地址1:</font><div id="goodsPicture1"><input type="button" value="上传" onclick="opendialog1(goodsPicture1)" /></div><br/>
    			<div id="img1"><img src="${adminGoodsPo.goodsPicture1 }" width="100" height="100" id="image1"></img></div>
    			<input type="hidden" id="path1" name="imgPath1" value="${adminGoodsPo.goodsPicture1 }"/><br/> 
    		<input type="submit" value="修改" />		
    	</div>
    	<input type="hidden" value="${userName }" name="updater"/>
    </form>
    	
    </div>
  </body>
</html>
