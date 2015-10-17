<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<script type="text/javascript" src="js/Calendar3.js"></script>
<style type="text/css">
<!--
body {
	margin-left: 3px;
	margin-top: 0px;
	margin-right: 3px;
	margin-bottom: 0px;
}
.STYLE1 {
	color: #e1e2e3;
	font-size: 12px;
}
.STYLE6 {color: #000000; font-size: 12; }
.STYLE10 {color: #000000; font-size: 12px; }
.STYLE19 {
	color: #344b50;
	font-size: 12px;
}
.STYLE21 {
	font-size: 12px;
	color: #3b6375;
}
.STYLE22 {
	font-size: 12px;
	color: #295568;
}

#main{
	margin-left:200px;
}
-->
</style>
</head>

<body>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="24" bgcolor="#353c44"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="6%" height="19" valign="bottom"><div align="center"><img src="images/tb.gif" width="14" height="14" /></div></td>
                <td width="94%" valign="bottom"><span class="STYLE1"> 广告图片添加 </span></td>
              </tr>
            </table></td>
            <td><div align="right"><span class="STYLE1">
              <input type="checkbox" name="checkbox11" id="checkbox11" />
              全选      &nbsp;&nbsp;<img src="images/add.gif" width="10" height="10" /> 添加   &nbsp; <img src="images/del.gif" width="10" height="10" /> 删除    &nbsp;&nbsp;<img src="images/edit.gif" width="10" height="10" /> 编辑   &nbsp;</span><span class="STYLE1"> &nbsp;</span></div></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td>

    	

    	<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#a8c7ce" align="center">

    	   	
   	    	<div id="main">
			<form action="../picUp" method="post" enctype="multipart/form-data">
		      	<b>广告图片：</b>
		      	<input type="file" name="file"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		        <input type="submit" style="font-weight: bolder;color: red;" value="上传"/>    
		    </form>	
		    <br />
		    
		    <form action="../picAdd?">
		    <img src="${path }" name="pic" /><br /><br />
		    <input name="picture" value="${path }" type="hidden"/>
		    <b>广告地址：</b> <input type="text" name="addr" />
		    <br /><br />
		    <b>生效时间：</b> 
		    <input name="control_date" type="text" id="control_date" size="10"
                    maxlength="10" onclick="new Calendar().show(this);" readonly="readonly" />
            <input type="button" name="button" id="button" value="日期" 
            		onclick="new Calendar().show(this.form.control_date);" />
		    <br /><br />
		    <b>失效时间：</b> 
            <input name="control_date2" type="text" id="control_date2" size="10"
                    maxlength="10" onclick="new Calendar().show(this);" readonly="readonly" />
            <input type="button" name="button" id="button1" value="日期" 
            		onclick="new Calendar().show(this.form.control_date2);" />
		    <br /> <br />
		    <input type="submit" value="提交广告" style="font-weight: bolder;color: red;" onmouseover="shijian();"/>
	 	 	</form>
	 	 	
	 	 	</div>

   	 	</table>
   	 	   	 	<script type="text/javascript">
   	 		function shijian(){
   	 			var starts = document.getElementById("control_date").value;
   	 			var ends = document.getElementById("control_date2").value;
   	 			//alert("hehe");
   	 			
   	 			var sts = new Array();
   	 			var ens = new Array();
   	 			sts = starts.split("-");
   	 			ens = ends.split("-");
   	 			//alert("hehe");
   	 			var length = sts.length;
   	 			for(var i=0;i<length;i++){
   	 				var st = sts[i];
   	 				var en = ens[i];
   	 				var k = Number(en);
   	 				var j = Number(st);
   	 				
   	 				
   	 				if(k < j){
   	 					alert("亲，截止时间不能早于起效时间欧！");
   	 					break;
   	 				}
   	 				if(j < k){
   	 					break;
   	 				}
   	 			}
   	 		}
   	 	</script>
<!-- 		<%
		    	session.removeAttribute("path");
		     %>
   	 	<script type="text/javascript">
   	 		function sub(){
   	 			window.location.href=('../picAdd');
   	 		}
   	 	</script>
 -->
    </td>
  </tr>
</table>
</body>
</html>
