<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.fox.sp.vo.OrderVo"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0040)#/order/myOrder.do -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<script
			src="#/advertise/getAdVoByJsonp.do?callback=jsonp1347699951069"></script>
		<script src="./image/info.do"></script>
		<script
			src="#/advertise/getMyOrderTopAdVo.do?callback=jsonp1347699951066"></script>
		<script type="text/javascript" async="" src="./image/ga.js"></script>

		<title>我的91商城-我的订单</title>

		<meta name="Keywords" content="我的91商城-我的订单">
		<meta name="Description" content="我的91商城-我的订单">

		<!--css start-->
		<link href="./image/global_site_base.css" rel="stylesheet"
			type="text/css">

		<!--css end-->
		<!--js start-->
		<script type="text/javascript">

var headerType="base";
var favorite="91商城，只为更好的生活";
var hostUrl="www.yihaodian.com";
var httpUrl="#";
var no3wUrl="yihaodian.com";
//var sinaUrl="yihaodian.house.sina.com";
var simpleUrl="yihaodian";
var chineseUrl="91商城";
var imagePath="http://image.yihaodianimg.com/member/global/images";
var currSiteId=1;
var currSiteType=1;
var multiSearch="true";
var isIndex = 0;
var currVersionNum= 373325; //
var currProvinceId=16;
var lazyLoadImageObjArry = lazyLoadImageObjArry || [];
</script>

		<!--js end-->
<link rel="stylesheet" type="text/css" href="./editinfo_files/base.css" media="all">
<link rel="stylesheet" type="text/css" href="./editinfo_files/plist20120412.css" media="all">
<link rel="stylesheet" type="text/css" href="./editinfo_files/pop_compare.css" media="all">
<link href="./editinfo_files/WdatePicker.css" rel="stylesheet" type="text/css"><link rel="stylesheet" type="text/css" href="./editinfo_files/global_yhdLib.css"><script type="text/javascript" src="./editinfo_files/global_yhdLib.js"></script><script type="text/javascript" src="./editinfo_files/global_login_frame.js"></script>

		<link rel="shortcut icon"
			href="http://image.yihaodianimg.com/member/global/images/favicon.ico">
		<style type="text/css"></style>
		<script src="./image/myYihaodianMenu.js"></script>
		<link rel="stylesheet" type="text/css"
			href="./image/global_yhdLib.css">
		<script type="text/javascript" src="./image/global_yhdLib.js"></script>
		<script type="text/javascript" src="./image/global_login_frame.js"></script>
		<style type="text/css">
@import url("image/ordercenter.css");

@import url("image/datePicker.css");

.columnleft {
	width: 200px;
	background:
		url(http://image.yihaodianimg.com/member/member/images/user_bg_y.gif)
		right repeat-y;
	float: left;
	padding-right: 4px !important;
	padding-right: 1px;
}

.columnleft dl {
	background:
		url(http://image.yihaodianimg.com/member/member/images/user_bg_x.gif)
		0 -268px repeat-x;
	border-left: #ccc 1px solid;
	margin-bottom: -2px;
	zoom: 1;
}

.columnleft dt {
	height: 32px;
	background:
		url(http://image.yihaodianimg.com/member/member/images/user_bg.gif)
		-180px 7px no-repeat;
	padding-left: 28px;
	font: bold 12px/ 32px Arial, Helvetica, sans-serif;
	color: #333;
}

.columnleft dd {
	font: 10px/ 30px '宋体';
	background:
		url(http://image.yihaodianimg.com/member/member/images/user_bg_x.gif)
		0 -71px repeat-x;
	background-position: 0 -71px9;
	margin: 0 8px;
	color: #333;
}

.columnleft .last {
	background: none;
}

.columnleft .current {
	background-color: #FFEFD9;
	margin: 0;
	padding: 0 8px;
	color: #900;
}

#container .columnleft a {
	font-size: 12px;
	color: #000;
}

#container a:hover {
	color: #900;
	text-decoration: none;
}

.bgnone {
	background-image: none;
}

.fixedRight {
	position: fixed;
	_position: absolute;
	top: 200px;
	top: 50%;
	left: 50%;
	margin-left: 491px;
	z-index: 999
}

.fixedRight a {
	display: block;
	width: 24px;
	padding-top: 15px;
	background:
		url(http://image.yihaodianimg.com/member/member/images/bg_spirit.png)
		-908px -441px no-repeat;
	color: #999;
	font-size: 12px;
	text-decoration: none
}

.fixedRight a span {
	display: block;
	width: 12px;
	padding: 0 6px 5px;
	background:
		url(http://image.yihaodianimg.com/member/member/images/bg.png) 0
		bottom;
	color: #999;
	cursor: pointer;
}

#container .fixedRight a:hover span {
	color: #000
}
</style>
<script>
	function queren(orderID,orderAmount){
		//var oAmount_value = document.getElementById("oAmount").value;
		//var orderID_value = document.getElementById("o_orderID").value;
		var aaa = document.getElementById("aaa");
		if(confirm("请确定您已收到货，如果确认，￥"+orderAmount+"将打给卖家，否则钱货两空")){
			//alert("orderToQueRen?orderID="+orderID_value);
			//location.href="orderToQueRen?orderID="+orderID_value;
			//alert(1);
			aaa.href="orderToQueRen?orderID="+orderID;
			location.href=aa.href;
		}
	}
</script>
</head>

	<body>
		 <div id="shortcut">
	<div class="w">
		<ul class="fl lh">
			<li class="fore1 ld"><b></b><a href="javascript:addToFavorite()">收藏91<span>商城</span></a></li>
			<li class="fore2"><a href="" target="_blank">360TOP<span>奢侈品</span></a></li>
			<li class="fore3"><a href="" target="_blank">迷你挑</a></li>
			<li class="fore4"><a href="" target="_blank"><span>91</span>好药师</a></li>
		</ul>
		<ul class="fr lh">
			<c:if test="${memberName == null}">
					<li class="fore1 ld" id="loginbar" clstag="homepage|keycount|home2012|01e">您好，欢迎来到91商城！<span>
						<a href="<%=path %>/member/login.jsp">[登录]</a> 
						<a href="<%=path %>/member/regedit.jsp" class="link-regist">[免费注册]</a></span></li>
				</c:if>
				<c:if test="${memberName != null}">
					<li class="fore1 ld" id="loginbar" clstag="homepage|keycount|home2012|01e"><a href="<%=path %>/member/memberEditInfo?memberID=${memberID }">${memberName }</a>，欢迎您！<span>
						<a href="<%=path %>/member/memberLogout" class="link-regist">[退出]</a></span></li>
				</c:if>
			<li class="fore2"><a href="<%=path %>/orderQueryAll">">我的订单</a></li>
			<li class="fore3 menu" data-widget="dropdown">
				<dl>
					<dt class="ld">特色栏目<b></b></dt>
					<dd>
						<div><a href="" target="_blank">校园频道</a></div>
						<div><a href="" target="_blank">在线读书</a></div>
						<div><a href="" target="_blank">装机大师</a></div>
						<div><a href="" target="_blank">礼品卡</a></div>
					</dd>
				</dl>
			</li>
			<li class="fore4"><a href="" target="_blank">手机91</a></li>
			<li class="fore5 menu" data-widget="dropdown">
				<dl>
					<dt class="ld">企业服务<b></b></dt>
					<dd>
						<div><a href="" target="_blank">企业客户</a></div>
						<div><a href="" target="_blank">办公直通车</a></div>
					</dd>
				</dl>
			</li>
			<li class="fore6 menu" data-widget="dropdown">
				<dl>
					<dt class="ld"><a href="" target="_blank">客户服务<b></b></a></dt>
					<dd>
						<div><a href="" target="_blank">常见问题</a></div>
						<div><a href="" target="_blank">售后服务</a></div>
						<div><a href="" target="_blank">在线客服</a></div>
						<div><a href="" target="_blank">投诉中心</a></div>
						<div><a href="" target="_blank">客服邮箱</a></div>
					</dd>
				</dl>
			</li>
		</ul>
		<span class="clr"></span>
	</div>
</div><!--shortcut end--><div id="o-header">
	<div class="w" id="header">
		<div id="logo" class="ld"><a href="<%=path %>/index.jsp"><b></b><img src="./editinfo_files/91logo.png" width="259" height="50" alt="91商城"></a></div><!--logo end-->
		<div id="search">
			<div class="i-search ld">
				<b></b><s></s>
				<ul id="123" class="hide"></ul>
				<div class="form">
				<form action="<%=path %>/goods/goodsSerch" method="post">
				<input type="text" class="text"  id="key1" name="key"  />
				<input type="submit" value="搜索" class="button" />
				</form>
				</div>
			</div>
			<div id="hotwords"><strong>热门搜索：</strong><a href="" target="_blank" style="color: #CC0000">北京青年</a><a href="" target="_blank">熊猫人之谜</a><a href="'" target="_blank">ThinkPad X1 Carbon</a><a href="" target="_blank">明基投影机</a><a href="" target="_blank">富士通LH532</a><a href="" target="_blank">酷冷散热</a><a href="" target="_blank">佳能打印机</a><a href="" target="_blank">联想Y460</a><a href="" target="_blank">AMD CPU</a><a href="" target="_blank">朗科</a><a href="" target="_blank">D-Link路由</a><a href="" target="_blank">HP原装墨盒</a><a href="" target="_blank">九州风神散热器</a><a href="" target="_blank">联强硬盘</a></div>
		</div><!--search end-->
		<div id="my360buy">
			<dl>
				<dt class="ld"><s></s><img src="./editinfo_files/blank.gif" width="24" height="24" alt="头像"><a href="">我的91</a><b></b></dt>
				<dd><div class="loading-style1"><b></b>加载中，请稍候...</div></dd>
			</dl>
		</div><!--my360buy end-->
		<div id="settleup">		
			<dl>
				<dt class="ld">
					<s class="shopping"><span id="shopping-amount">0</span></s>
					<a href="<%=path %>/trolleyDetail">去购物车结算</a>
					<b></b>
				</dt>
				<dd>
				<div class="prompt">				
					<div class="loading-style1"><b></b>加载中，请稍候...</div>
				</div>
				</dd>
			</dl>
		</div><!--settleup end-->
	</div><!--header end-->
	<div class="w">
		<div id="nav">
				
			<ul id="navitems">
				<li class="fore1" id="nav-home"><a href="">首页</a></li>
				<li class="fore2" id="nav-mall"><a href="">服装城</a></li>
				<li class="fore3" id="nav-minitiao"><a target="_blank" href="">迷你挑</a></li>
				<li class="fore4" id="nav-tuan"><a href="">团购</a></li>
				<li class="fore5" id="nav-auction"><a href="">夺宝岛</a></li>
				<li class="fore6" id="nav-club"><a href="">91社区</a></li>
			</ul>
		</div>
</div>	     <!--content start-->
			<div id="container">
				<div class="breadcrumb">
					您现在的位置：
					<a href="#/">91商城</a> &gt;
					<a href="#/member/my.do">我的91商城</a> &gt; 我的订单
				</div>
				<div id="myYihaodianLeftMenu" style="display: block; float: left;"
					class="columnleft">
					<p>
						<a href="#"><img src="image/11aa.png"
								width="202" height="34" />
						</a>
					</p>
					<dl>
						<dd>
							<a href="<%=path %>/orderQueryAll">&gt; 我的订单</a>
						</dd>
						<dd>
							<a href="">&gt; 我的收藏夹</a>
						</dd>
						<dd>
							<a href="">&gt; 评价商品</a>
						</dd>
					</dl>
					
					<dl>
						<a href=""><img src="image/11ac.png" />
						</a>
						<dd>
							<a href="<%=path %>/member/memberQueryAmount?memberID=${memberID }">&gt; 账户查询</a>
						</dd>
						<dd>
							<a href="">&gt; 积分查询</a>
						</dd>
					</dl>
					<dl>
						<a href=""><img src="image/11ad.png" />
						</a>
						<dd>
							<a href="<%=path %>/member/memberEditInfo?memberID=${memberID }">&gt; 编辑个人资料</a>
						</dd>
						<dd>&gt;<a href="<%=path %>/member/updatePwd.jsp">修改密码</a></dd>
						<dd>&gt;<a href="<%=path %>/member/updateToPayPwd.jsp">修改支付密码</a></dd>
						<dd>&gt;<a href="<%=path %>/memberAddrQueryAll">地址簿管理</a></dd>
					</dl>
					<div id="fixedRight"></div>
				</div>
				<div class="columnright">
					<ul class="ul_tab mb10">
						<li class="#" ishistoryorder="0" id="userOrderPage" onclick="#">
							<s></s>近期订单
							<cite>（1）</cite>
						</li>
					</ul>
					<div class="tab_tb" id="myOrderList">
						<link href="./image/datePicker.css" type="text/css"
							rel="stylesheet">

						<ul class="ul_select mb10">
							<li
								onclick="#" choosetype="0" non="" class="first cur myOrderChooseType ">
								全部
								<cite>(1)</cite>
							</li>
							<li
								onclick="#" choosetype="1" non="" class="order_list_info  ">
								待支付
								<cite>(1)</cite><span></span>
							</li>
							<li
								onclick="#" choosetype="2" non="1" class=" order_list_info">
								待收货
								<cite>(0)</cite>
							</li>
							<li
								onclick="#" id="order_list_zhuanfen" choosetype="3" non="1" class="  order_list_info">
								待评论
								<cite id="#">(0)</cite><span></span>
							</li>
							<li
								onclick="#" choosetype="4" non="1" class=" order_list_info">
								已取消
								<cite>(0)</cite>
							</li>
							<li
								onclick="#" choosetype="5" non="1" class=" order_list_info">
								已完成
								<cite>(0)</cite>
							</li>
						</ul>
						<input type="hidden" id="orderCodeStr" value="">
						
			<!-- 订单总表 -->			
				<c:forEach items="${sessionScope.ov }" var="l">
						<div class="orderlist">
							<div class="or_box">
							
							
							
								<div class="or_info order_dr">
									<p>
										<span>订单号：<a href="#" onclick="#" target="_blank">${l.orderID }</a></span>
										<input type="hidden" id="o_orderID" value="${l.orderID }" />
										
									</p>
									<p>
										<span>订购日期：</span>${l.createDate }
									</p>
									<p>
										<span>收件人：</span>${l.memberTrueName }
									</p>
									<p>
										<span>支付方式：</span> ${l.orderPay }
									</p>
									<p>
										<span>订单总计：</span>${l.orderAmount }
										<input type="hidden" id="oAmount" value="${l.orderAmount }"/>
									</p>
									<p>
										<span>可获积分：</span> 未定义
									</p>

									<p></p>
						<!-- 立即支付 -->
									<c:if test="${l.orderStatus1 == 0 }"><p>
											<a href="<%=path %>/order/toOrderPay?orderID=${l.orderID }"><img src="image/aaa.png"
													width="90" height="25" />
											</a>
									</p>
			 		    <!-- 立即支付end  -->
							
									
									<p>
										<a href="<%=path %>/orderQueryOne?orderID=${l.orderID }">订单详情</a>
									</p>
									<p>
										<a href="<%=path %>/orderUpdate?orderID=${l.orderID }">修改订单</a>
									</p>
									<p>
										<a href="<%=path %>/orderDelete?orderID=${l.orderID }">取消订单</a>
									</p>
									</c:if>
									<c:if test="${l.orderStatus1 == 1 }">
									<p>
										<a href="<%=path %>/orderQueryOne?orderID=${l.orderID }">订单详情</a>
									</p>
										<c:if test="${l.orderStatus2 == 1 }">
											<c:if test="${l.orderStatus3 == 0 }">
												<p>卖家已发货</p>
												<p>
													<a href="" id="aaa" onclick="queren(${l.orderID},${l.orderAmount })"><img src="image/queren.png" width="50" height="25" /></a>
												</p>
											</c:if>
											<c:if test="${l.orderStatus3 == 1 }">
												<p>交易完成</p>
											</c:if>
											
										</c:if>
									
									</c:if>
								</div>
						
								
								<div class="or_list or_listrf">
									<dl>
										<input type="hidden" class="OrderStatusTrackOrderCode"
											value="120915HB54RG" />
										<dt>
											<a class="hblue OrderStatusTrackMore"
												onclick="addTrackPositionToCookie(&#39;1&#39;,&#39;O_L_TRACKORDER&#39;);"
												href="http://my.yihaodian.com/order/orderDetail.do?orderCode=120915HB54RG&disPalyCode=120915HB54RG"
												target="_blank"></a>

											<!-- 非团购订单 -->


											<cite>包裹${l.row }</cite>
											
											
											<c:if test="${l.orderStatus1 == 0 }"><cite> 待支付 </cite>
											<small id="OrderStatusTrack_120915HB54RG">(订单已提交，等待付款)</c:if>
											
											<c:if test="${l.orderStatus1 == 1 }"><small id="OrderStatusTrack_120915HB54RG">
												<c:if test="${l.orderStatus2 == 1 }">
													<c:if test="${l.orderStatus3 == 0 }">(订单已付款,卖家已发货</c:if>
													<c:if test="${l.orderStatus3 == 1 }">(交易已完成</c:if>
												</c:if>
												<c:if test="${l.orderStatus2 == 0 }">
													(订单已付款，等待卖家发货
												</c:if>
												)
											</c:if>
											</small>
											<div style="" id="OrderStatusTrackIsShowMore_120915HB54RG">
												<div class="package_track"
													id="OrderStatusTrackMore_120915HB54RG">
													<span class="ico_com1">◆</span>
													<span class="ico_com2">◆</span>
													<ul>
														<li class="date">
															2012-09-15
														</li>
													
													</ul>
												</div>
											</div>
										</dt>
		<!-- 订单商品内容 -->
					
										
										
										<c:forEach items="${orderIDList }" var="orderIDl">
											<c:forEach items="${orderIDl }" var="ol">
												<c:if test="${ol.orderID == l.orderID}">
												<dd>
													<div class="fr">
												
													<br/>
													</div>
													<a href="<%=path %>/goods/goodsDetail?goodsID=${ol.goodsID }" target="_blank"><img src="${ol.goodsPicture }" height="60" width="55" /></a>
													<a href="#/product/4168942_2" target="_blank"></a>
													</br>
													<em> 商品金额：${ol.goodsPrice }</em> × ${ol.goodsCoun }<br/>
													商品名称:${ol.goodsName }
													</dd>
												</c:if>
											</c:forEach>
										</c:forEach>
											
											
										
									
		<!-- 订单商品内容end -->			
									</dl>
								</div>
					
								<div class="clear"></div>
							</div>
						</div>
						
					</c:forEach>
			<!-- 订单总表end -->
							<div>
								<input type="hidden" id="currPage" value="1">
								<ul class="latestnewpageboxinner">


									<li class="latestnewcurrentpage">
										1
									</li>
									<li class="latestnewtotalpage">
										共1页
									</li>
									<li class="sgotopage">
										到第
										<input type="text" class="spageinput" id="jumpto">
										页
										<input class="spagesubmit" id="jumptopage" type="button"
											onclick="javascript:orderListPageInfo(jQuery(&#39;#jumpto&#39;).val());"
											value="确定">
									</li>
									<input id="pageCountPage" type="hidden" value="1">
								</ul>
								<div class="clear"></div>
							</div>
							<div class="pop_rate"
								style="position: absolute; left: 0px; top: 0px; z-index: 10000; display: none;"
								id="deliveryEvaluationDiv">
								<a href="javascript:void(0);"
									class="close closeDeliveryEvaluation"><img
										src="./image/close.gif" width="14" height="14">
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--content end-->
			<script type="text/javascript">
    if(lazyLoadImageObjArry){ 
    	lazyLoadImageObjArry.push("friendlinkLazyLoad");
    	lazyLoadImageObjArry.push("footerbannerLazyLoad");
    	lazyLoadImageObjArry.push("footerbanner2LazyLoad");
    }
</script>

			<!--js start-->
			<!--无页面级头部js时, 全局头部js下移-->
			<script type="text/javascript" src="./image/global_site_top.js"
				charset="utf-8"></script>
			<script type="text/javascript" src="./image/myneworder.js"
				charset="utf-8"></script>
			<script type="text/javascript" src="./image/global_site_bottom.js"
				charset="utf-8"></script>
			<!--js end-->
			<div>
				<a style="color: #FFFFFF"> 39!$ 0%&amp; 2#@ 10!$ , </a>
				<a style="color: #FFFFFF">373325</a>
			</div>
			<div class="error_info_show none">
				<p id="err_popwin">
					.........
				</p>
				<p>
					<button onclick="yhdLib.popclose();">
						确定
					</button>
				</p>
			</div>
	</body>
</html>