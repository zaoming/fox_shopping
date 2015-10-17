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
		var serchId = document.getElementById("typeserch1").value;
		location.href="goodsTypeSerch?serchId="+serchId;
	}
	
	function bb(){
		var serchId = document.getElementById("typeserch2").value;
		location.href="goodsTypeSerch?serchId="+serchId;
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
                <td width="" valign="bottom"><span class="STYLE1"> 商品类型列表</span></td>
               <td><span class="STYLE1">商品根类别</span>
               		<select name="typeserch1" id="typeserch1">
               			<c:forEach items="${sessionScope.goodsType11 }" var="lis1">
               				<option value="${lis1.typeID }">${lis1.typeName }</option>
               			</c:forEach>	
               		</select><input type="button" value="确定" onclick="aa()"/></td>
               		<td><span class="STYLE1">二级类别</span>
               		<select name="typeserch2" id="typeserch2">
               			<c:forEach items="${sessionScope.goodsType22 }" var="lis2">
               				<option value="${lis2.typeID }">${lis2.typeName }</option>
               			</c:forEach>	
               		</select><input type="button" value="确定" onclick="bb()"/></td>
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
          <input type="checkbox" name="checkbox" id="checkbox" />
        </div></td>
        <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">商品类型</span></div></td>
        <td width="5%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">商品ID</span></div></td>
        <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">商品上级名称</span></div></td>
        <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">商品描述</span></div></td>
        <td width="5%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">商品等级</span></div></td>
        <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">创建人</span></div></td>
        <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">创建时间</span></div></td>
        <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">修改人</span></div></td>
        <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">修改时间</span></div></td>
      </tr>
      <c:forEach items="${sessionScope.goodsType1 }" var="li1">
      <tr>
        <td height="20" bgcolor="#FFFFFF"><div align="center">
          <input type="checkbox" name="checkbox2" id="checkbox2" />
        </div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE6"><div align="center"><span class="STYLE19"><a href="adminGoodsTypeOne?typeID=${li1.typeID }">${li1.typeName }</a></span></div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center">${li1.typeID }</div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"></div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center">${li1.typeDesc }</div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center">${li1.typeLevel }</div></td>
        <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE21">${li1.creater }</div></td>
        <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE21">${li1.createDate }</div></td>
        <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE21">${li1.updater }</div></td>
        <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE21">${li1.updateDate }</div></td>
      </tr>
      
      	<c:forEach items="${sessionScope.goodsType2 }" var="li2">
      	<c:if test="${li1.typeID == li2.parentID }">
      		<tr>
        		<td height="20" bgcolor="#FFFFFF"><div align="center">
          		<input type="checkbox" name="checkbox2" id="checkbox2" />
        		</div></td>
        		<td height="20" bgcolor="#FFFFFF" class="STYLE6"><div align="center"><span class="STYLE19"><a href="adminGoodsTypeOne?typeID=${li2.typeID }">${li2.typeName }</a></span></div></td>
        		<td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center">${li2.typeID }</div></td>
        		<td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center">${li1.typeName }</div></td>
        		<td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center">${li2.typeDesc }</div></td>
        		<td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center">${li2.typeLevel }</div></td>
        		<td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE21">${li2.creater }</div></td>
        		<td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE21">${li2.createDate }</div></td>
        		<td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE21">${li2.updater }</div></td>
        		<td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE21">${li2.updateDate }</div></td>
      		</tr>
      			<c:forEach items="${sessionScope.goodsType3 }" var="li3">
      			<c:if test="${li2.typeID == li3.parentID }">
      				<tr>
        				<td height="20" bgcolor="#FFFFFF"><div align="center">
          				<input type="checkbox" name="checkbox2" id="checkbox2" />
        				</div></td>
        				<td height="20" bgcolor="#FFFFFF" class="STYLE6"><div align="center"><span class="STYLE19"><a href="adminGoodsTypeOne?typeID=${li3.typeID }">${li3.typeName }</a></span></div></td>
        				<td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center">${li3.typeID }</div></td>
        				<td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center">${li2.typeName }</div></td>
        				<td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center">${li3.typeDesc }</div></td>
        				<td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center">${li3.typeLevel }</div></td>
        				<td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE21">${li3.creater }</div></td>
        				<td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE21">${li3.createDate }</div></td>
        				<td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE21">${li3.updater }</div></td>
        				<td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE21">${li3.updateDate }</div></td>
      				</tr>
      			</c:if>
      			</c:forEach>
      	</c:if>
      	</c:forEach>
      </c:forEach>
      
    </table></td>
  </tr>
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="33%"><div align="left"><span class="STYLE22">&nbsp;&nbsp;&nbsp;&nbsp;共有<strong> 243</strong> 条记录，当前第<strong> 1</strong> 页，共 <strong>10</strong> 页</span></div></td>
        <td width="67%"><table width="312" border="0" align="right" cellpadding="0" cellspacing="0">
          <tr>
            <td width="49"><div align="center"><img src="images/main_54.gif" width="40" height="15" /></div></td>
            <td width="49"><div align="center"><img src="images/main_56.gif" width="45" height="15" /></div></td>
            <td width="49"><div align="center"><img src="images/main_58.gif" width="45" height="15" /></div></td>
            <td width="49"><div align="center"><img src="images/main_60.gif" width="40" height="15" /></div></td>
            <td width="37" class="STYLE22"><div align="center">转到</div></td>
            <td width="22"><div align="center">
              <input type="text" name="textfield" id="textfield"  style="width:20px; height:12px; font-size:12px; border:solid 1px #7aaebd;"/>
            </div></td>
            <td width="22" class="STYLE22"><div align="center">页</div></td>
            <td width="35"><img src="images/main_62.gif" width="26" height="15" /></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
