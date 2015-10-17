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
		
		List<GoodsTypePo> list2 = goodtypepo2.getList();
		Iterator<GoodsTypePo> it2 = list2.iterator();
		while(it2.hasNext()){
			GoodsTypePo goodtypepo3 = it2.next();
//			System.out.println(goodtypepo3.getTypeName()+"--3级-->");
			li3.add(goodtypepo3);
			
		}
		
	}
}
out.print("<option value='0'>请选择三级类别</option>");
for (GoodsTypePo goodsTypePo : li3) {
	
	out.println("<option value='"
			+goodsTypePo.getTypeID()+"'>"+goodsTypePo.getTypeName()+"</option>");
}
%>
