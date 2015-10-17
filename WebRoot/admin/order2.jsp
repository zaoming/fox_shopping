<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.fox.sp.po.GoodsTypePo"%>
<%@page import="com.fox.sp.dao.IAdminGoodsTypeDao"%>
<%@page import="com.fox.sp.dao.impl.AdminGoodsTypeImpl"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
List<GoodsTypePo>list = new ArrayList<GoodsTypePo>();
IAdminGoodsTypeDao iagtd = new AdminGoodsTypeImpl();
List<GoodsTypePo> bigList = iagtd.goodsType(list, 0);
List<GoodsTypePo> li1 = new ArrayList<GoodsTypePo>();
List<GoodsTypePo> li2 = new ArrayList<GoodsTypePo>();
List<GoodsTypePo> li3 = new ArrayList<GoodsTypePo>();

Iterator<GoodsTypePo> it = bigList.iterator();
while(it.hasNext()){
	GoodsTypePo goodtypepo1 = it.next();
//	System.out.println(goodtypepo1.getTypeName()+"--1级--->");
	li1.add(goodtypepo1);
	
	List<GoodsTypePo> list1 = goodtypepo1.getList();
	Iterator<GoodsTypePo> it1 = list1.iterator();
	while(it1.hasNext()){
		GoodsTypePo goodtypepo2 = it1.next();
//		System.out.println(goodtypepo2.getTypeName()+"--2级-->");
		li2.add(goodtypepo2);
		
	}
}
out.print("<option value='0'>请选择根类别</option>");
for (GoodsTypePo goodsTypePo : li1) {
	out.println("<option value='"
			+goodsTypePo.getTypeID()+"'>"+goodsTypePo.getTypeName()+"</option>");
}
%>