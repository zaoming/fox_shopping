<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
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
-->
</style>
<script>
	function aa(){
		var typeID = document.getElementById("typeserch1").value;
		location.href="adminGoodsSerch?flag=0&typeID="+typeID;
	}
	
</script>
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
                <td width="" height="19" valign="bottom"><div align="center"><img src="images/tb.gif" width="14" height="14" /></div></td>
                <td width="" valign="bottom"><span class="STYLE1"> 商品列表</span></td>
               <td><span class="STYLE1">商品所属类别</span>
               		<select name="typeserch1" id="typeserch1">
               			<c:forEach items="${sessionScope.adminGoodsTypeList }" var="lis1">
               				<option value="${lis1.typeID }">${lis1.typeName }</option>
               			</c:forEach>	
               		</select><input type="button" value="确定" onclick="aa()"/></td>
               		<td>
               		<form action="adminGoodsSerch?flag=0" method="post">
               			<span class="STYLE1">商品名称</span>
               			<input type="text" id="goodsName" name="goodsName"/>
               			<input type="submit" value="确定"/>
               		</form></td>
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
    <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#a8c7ce">
      <tr>
        <td width="4%" height="20" bgcolor="d3eaef" class="STYLE10"><div align="center">
          
        </div></td>
        <td width="6%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">商品类型</span></div></td>
        <td width="5%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">商品ID</span></div></td>
        <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">商品简介</span></div></td>
        <td width="8%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">市场价格</span></div></td>
        <td width="5%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">商城价格</span></div></td>
        <td width="5%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">折扣率</span></div></td>
        <td width="5%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">所属类别</span></div></td>
        <td width="5%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">商品余量</span></div></td>
        <td width="6%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">是否特价</span></div></td>
        <td width="6%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">是否有效 </span></div></td>
        <td width="5%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">商品图片</span></div></td>
        <td width="7%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">创建人</span></div></td>
        <td width="8%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">创建时间</span></div></td>
        <td width="7%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">修改人</span></div></td>
        <td width="8%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">修改时间</span></div></td>
      </tr>
      
      
      <c:forEach items="${adminGoodsList }" var="li1">
      <tr>
        <td height="20" bgcolor="#FFFFFF"><div align="center">
         
        </div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE6"><div align="center"><span class="STYLE19"><a href="adminGoodsDetail?goodsID=${li1.goodsID }">${li1.goodsName }</a></span></div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center">${li1.goodsID }</div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center">${li1.goodsIntroduce }</div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center">${li1.goodsNormalPrice }</div></td>
        <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE21">${li1.goodsMemberPrice }</div></td>
        <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE21">${li1.goodsRebate }</div></td>
        <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE21">${li1.typeID }</div></td>
        <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE21">${li1.goodsNumber }</div></td>
        <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE21"><c:if test="${li1.isSale == 1 }">非特价<br/><font color="red" size="2px"><a href="goodsNSale?isSale=${li1.isSale }&goodsID=${li1.goodsID }">[->特价]</a></font></c:if> <c:if test="${li1.isSale == 0 }">特价<br/><font color="red" size="2px"><a href="goodsNSale?isSale=${li1.isSale }&goodsID=${li1.goodsID }">[->非特价]</a></font></c:if> </div></td>
        <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE21"><c:if test="${li1.isValid == 1 }">有效<br/><font color="red" size="2px"><a href="goodsNValid?isValid=${li1.isValid }&goodsID=${li1.goodsID }">[->下架]</a></font></c:if> <c:if test="${li1.isValid == 0 }">已下架<br/><font color="red" size="2px"><a href="goodsNValid?isValid=${li1.isValid }&goodsID=${li1.goodsID }">[->上架]</a></font></c:if></div></td>
        <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE21"><img height="50" width="50" src="${li1.goodsPicture1 }"/></div></td>
        <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE21">${li1.creater }</div></td>
        <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE21">${li1.createDate }</div></td>
        <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE21">${li1.updater }</div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center">${li1.updateDate }</div></td>
      </tr>
      
      </c:forEach>
      
    </table></td>
  </tr>
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="33%"><div align="left"><span class="STYLE22">&nbsp;&nbsp;&nbsp;&nbsp;共有<strong> ${adminGoodsCount }</strong> 条记录，当前第<strong> ${adminGoodsCurrentPage }</strong> 页，共 <strong>${adminGoodsEndPage }</strong> 页</span></div></td>
        <td width="67%"><table width="312" border="0" align="right" cellpadding="0" cellspacing="0">
         	<tr>
            <td  class="STYLE22"><div align="center"><a href="adminGoodsSerch?flag=0">上一页</a></div></td>
            <td  class="STYLE22"><div align="center"><a href="adminGoodsSerch?flag=1">下一页</a></div></td>
            
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
