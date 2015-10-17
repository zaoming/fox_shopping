<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.fox.sp.po.GoodsTypePo"%>
<%@page import="com.fox.sp.dao.IAdminGoodsTypeDao"%>
<%@page import="com.fox.sp.dao.impl.AdminGoodsTypeImpl"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
int id = Integer.parseInt(request.getParameter("type_id"));
List<GoodsTypePo>list = new ArrayList<GoodsTypePo>();
IAdminGoodsTypeDao iagtd = new AdminGoodsTypeImpl();
List<GoodsTypePo> bigList = iagtd.goodsType(list, id);
List<GoodsTypePo> li1 = new ArrayList<GoodsTypePo>();

Iterator<GoodsTypePo> it = bigList.iterator();

while(it.hasNext()){
	GoodsTypePo goodtypepo1 = it.next();
//	System.out.println(goodtypepo1.getTypeName()+"--1级--->");
 	li1.add(goodtypepo1);
}
out.print("<option value='0'>请选择二级类别</option>");
for (GoodsTypePo goodsTypePo : li1) {
	
	out.println("<option value='"
			+goodsTypePo.getTypeID()+"'>"+goodsTypePo.getTypeName()+"</option>");
}
%>

