<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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

.STYLE6 {
	color: #000000;
	font-size: 12;
}

.STYLE10 {
	color: #000000;
	font-size: 12px;
}

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
<meta http-equiv="refresh" content="10" />
	</head>

	<body>
		<table width="100%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="30">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="24" bgcolor="#353c44">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td>
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0">
												<tr>
													<td width="6%" height="19" valign="bottom">
														<div align="center">
															<img src="images/tb.gif" width="14" height="14" />
														</div>
													</td>
													<td width="94%" valign="bottom">
														<span class="STYLE1"> 管理人员基本信息列表</span>
													</td>
												</tr>
											</table>
										</td>
										<td>
											<div align="right">
												<span class="STYLE1"> <input type="checkbox"
														name="checkbox11" id="checkbox11" /> 全选 &nbsp;&nbsp;<img
														src="images/add.gif" width="10" height="10" /> 添加 &nbsp;
													<img src="images/del.gif" width="10" height="10" /> 删除
													&nbsp;&nbsp;<img src="images/edit.gif" width="10"
														height="10" /> 编辑 &nbsp;</span>
												<span class="STYLE1">&nbsp;</span>
											</div>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table width="100%" border="0" cellpadding="0" cellspacing="1"
						bgcolor="#a8c7ce">
						<tr>
							<td width="1%" height="20" bgcolor="d3eaef" class="STYLE10">
								<div align="center">
									<input type="checkbox" name="checkbox" id="checkbox" />
								</div>
							</td>
							<td width="3%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">订单ID</span>
								</div>
							</td>
							<td width="2%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">会员ID</span>
								</div>
							</td>
							<td width="3%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">收货人</span>
								</div>
							</td>
							<td width="5%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">收货地址</span>
								</div>
							</td>
							<td width="3%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">邮政编码</span>
								</div>
							</td>
							<td width="5%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">订单备注</span>
								</div>
							</td>
							<td width="5%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">创建时间</span>
								</div>
							</td>
							<td width="2%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">订单金额</span>
								</div>
							</td>

							<td width="2%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">是否支付</span>
								</div>
							</td>
							
							<td width="2%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">是否发货</span>
								</div>
								
							</td >
							<td width="2%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">是否收货</span>
								</div>
								
							</td>
							<td width="2%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">基本操作</span>
								</div>
							</td>
						</tr>
				<c:forEach items="${sessionScope.adminov }" var="aov">
							<tr>
								<td height="2" bgcolor="#FFFFFF">
									<div align="center">
										<input type="checkbox" name="checkbox2" id="checkbox2" />
									</div>
								</td>
								<td height="20" bgcolor="#FFFFFF" class="STYLE6">
									<div align="center">
										<span class="STYLE10">${aov.orderID }</span>
									</div>
								</td>
								<td height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										${aov.memberID }
									</div>
								</td>
								<td height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										${aov.memberTrueName }
									</div>
								</td>
								<td height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										${aov.memberProvince },
										${aov.memberCity },
										${aov.memberAddress }
									</div>
								</td>
								<td height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										${aov.memberPostcode }
									</div>
								</td>
								<td height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
									<c:if test="${aov.orderStatus2 == 0 }">
										<form action="<%=path %>/orderAdminUpdateRemark" name="fm" method="post">
										
										
											<textarea rows="4" cols="30" name="orderRemark" >${aov.orderRemark }</textarea>
											<input type="hidden" name="orderID" value="${aov.orderID }" />
											<input type="submit" value="修改备注" />
										</form>
									</c:if>
									<c:if test="${aov.orderStatus2 == 1 }">
										${aov.orderRemark }
									</c:if>
										
											<!--	<script type="text/javascript">
												function xiugai(){
											//alert("确认发货?");
											if(confirm("确信修改备注？")){
												document.fm.submit();
						     				}else {
												alert("未修改");
											}
										}	 		
									</script> -->
										
									</div>
								</td>
								<td height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<span class="STYLE10">${aov.createDate }</span>
									</div>
								</td>
								<td height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										${aov.orderAmount }
									</div>
								</td>
								<td height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<c:if test="${aov.orderStatus1 == 0 }">未支付</c:if>
										<c:if test="${aov.orderStatus1 == 1 }">已支付</c:if>
									</div>
								</td>
								<td height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
									<c:if test="${aov.orderStatus1 == 1 }">
										<c:if test="${aov.orderStatus2 == 0 }">
											<input type="hidden" id="orderID1" value="${aov.orderID }" />
 											<input type="button" value="发货" onclick="fahuo();">
										<script type="text/javascript">
										function fahuo(){
											//alert("确认发货?");
											var orderID_value = document.getElementById("orderID1").value;
											if(confirm("你确信要发货？")){
												alert(orderID_value);
						         				location.href="../orderAdminUpdate?orderID="+orderID_value;
						     				}else {
												alert("未发货");
											}
										}			
									</script>
										</c:if>
										<c:if test="${aov.orderStatus2 == 1 }">
											已发货
										</c:if>
									</c:if>
									<c:if test="${aov.orderStatus1 == 0 }">
										
									</c:if>
									</div>
								</td>
								<td height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
									<c:if test="${aov.orderStatus3 == 0 }">未收货</c:if>
									<c:if test="${aov.orderStatus3 == 1 }">已收货</c:if>
									</div>
								</td>
								<td height="20" bgcolor="#FFFFFF">
									<div align="center" class="STYLE21">
										<c:if test="${aov.orderStatus1 == 0 }">
										<a href="<%=path %>/orderAdminDelete?orderID=${aov.orderID }"> 删除</a> 
										</c:if>
										
									</div>
								</td>
							</tr>
			</c:forEach>
			

					</table>
				</td>
			</tr>
			
		</table>
	</body>
</html>
