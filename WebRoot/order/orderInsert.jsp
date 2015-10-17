<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0051)http://my.yihaodian.com/member/userinfo/editinfo.do -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><script src="./editinfo_files/info.do"></script><script type="text/javascript" async="" src="./editinfo_files/ga.js"></script>

	<title>我的91商城-编辑个人资料</title>

<meta name="Keywords" content="我的91商城-编辑个人资料">
<meta name="Description" content="我的91商城-编辑个人资料">


<!--css start-->
<link href="./orderInsert_files/global_site_simple.css"
			rel="stylesheet" type="text/css">



		<link href="./orderInsert_files/checkoutV3.css" rel="stylesheet"
			type="text/css">
<link href="./editinfo_files/global_site_base.css" rel="stylesheet" type="text/css">



    <link href="./editinfo_files/editinfo.css" rel="stylesheet" type="text/css">
<!--css end-->
<!--js start-->
<script type="text/javascript">
var URLPrefix = {"my_statics":"http://image.yihaodianimg.com/member","search_keyword":"http://search.yihaodian.com","shop":"http://shop.1mall.com","yihaodian_img":"http://d11.yihaodianimg.com;http://d12.yihaodianimg.com;http://d13.yihaodianimg.com","caipiao":"http://caipiao.yihaodian.com/mylottery/queryOrder.do","yaowang":"http://www.111.com.cn","jipiao":"http://jipiao.1mall.com","chongzhi":"http://chongzhi.1mall.com/my/queryMyOrders.do","tracker":"tracker.yihaodian.com","statics":"http://image.yihaodianimg.com/member","mallImgDomain":".yihaodianimg.com","mall":"http://www.1mall.com","mymall":"http://my.1mall.com","central":"http://www.yihaodian.com","uploadPostUrl":"http://upload.yihaodian.com/upload/UploadAction","piao":"http://piao.1mall.com/myOrder.action","search":"http://www.yihaodian.com/ctg","my":"http://my.yihaodian.com","insurance":"http://life.1mall.com/queryMyOrders.action","yaowang_img":"http://d1.111.com.cn","dqg":"http://www.yihaodian.com/dqg/mysubscribe/mySubscribe.do","pms":"http://pms.yihaodian.com/pms/getPeriodProduct.do?currSiteType=1","passport":"https://passport.yihaodian.com","yihaomall_img":"http://d11.yihaodianimg.com;http://d12.yihaodianimg.com;http://d13.yihaodianimg.com","sitedomain":".yihaodian.com","passportmall":"https://passport.1mall.com"};
var headerType="base";
var favorite="91商城，只为更好的生活";
var hostUrl="www.yihaodian.com";
var httpUrl="http://www.yihaodian.com";
var no3wUrl="yihaodian.com";
//var sinaUrl="yihaodian.house.sina.com";
var simpleUrl="yihaodian";
var chineseUrl="91商城";
var imagePath="http://image.yihaodianimg.com/member/global/images";
var currSiteId=1;
var currSiteType=1;
var siteStyle=1;
var siteFlag=1;
var currDomain="http://www.yihaodian.com";
var oppositeDomain="http://www.1mall.com";
var busystock = "http://busystock.i.yihaodian.com";
var multiSearch="true";
var isIndex = 0;
var currVersionNum= 396276; //
var currProvinceId=3;
var lazyLoadImageObjArry = lazyLoadImageObjArry || [];
var isFixTopNav = false

</script>

<!--js end-->
  <link rel="shortcut icon" href="http://image.yihaodianimg.com/member/global/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="./editinfo_files/base.css" media="all">
<link rel="stylesheet" type="text/css" href="./editinfo_files/plist20120412.css" media="all">
<link rel="stylesheet" type="text/css" href="./editinfo_files/pop_compare.css" media="all">
<link href="./editinfo_files/WdatePicker.css" rel="stylesheet" type="text/css"><link rel="stylesheet" type="text/css" href="./editinfo_files/global_yhdLib.css"><script type="text/javascript" src="./editinfo_files/global_yhdLib.js"></script><script type="text/javascript" src="./editinfo_files/global_login_frame.js"></script></head>

	  <body>
	    <div id="shortcut">
	<div class="w">
		<ul class="fl lh">
			<li class="fore1 ld">p<a href="javascript:addToFavorite()">收藏91<span>商城</span></a></li>
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
		<script type="text/javascript"> 
      writeHeaderContent();
      buildMyYihaodian();
</script>

		<!--content start-->
		<!--content start-->
		<div id="SettlementProcess" class="containerBox clearfix"
			xmlns="http://www.w3.org/1999/html">
			<h1>
				填写核对订单信息
			</h1>
			<div id="splitMsg"></div>
			<div id="receiverUI" class="delivery checkInforBox">
				<h2 class="infoTitle">
					收货信息
					<a href="<%=path %>/order/orderInsert_1.jsp"><span class="btTit">[添加新地址]</span></a>
					<div class="adverPositon none" id="receiverAD"></div>
				</h2>
				<ul class="showInfoOrder" id="desplaySelectedReceiver">
					<script>
						function aa(a){
							alert(a);
							var add = document.getElementById("add");
							var add1= document.getElementById("add1");
							add1.innerText=a;
							add.value = a;
						}
						function bb(b){
							alert(document.getElementById("orderRemark").firstChild.nodeValue);
							var r = document.getElementById("remark");
							r.value = document.getElementById("orderRemark").firstChild.nodeValue;
						}
					</script>

					<c:forEach items="${sessionScope.mav }" var="mav">

						
						<li id="haveSetAddress" addressid="12625057">
						<input type="radio" name="addr"
							value="${mav.memberName },${mav.memberProvince },${mav.memberCity },${mav.memberAddr },${mav.memberCode },${mav.memberTelephone }"
							onclick="aa(this.value)" />
							<i>${mav.memberName },${mav.memberProvince },${mav.memberCity
								},${mav.memberAddr },${mav.memberCode },${mav.memberTelephone }</i><span
								class="defaultAddress"></span>
						</li>
					</c:forEach>
				</ul>


				<div class="rece_box editAddressBt">
					<button type="button" class="bt_yrt6 saveRecieverInfor" style="">
						保存收货信息
					</button>
					<small id="addressWarnning" class="PromptInfo"></small>
				</div>
			</div>
			<div id="deliveryUI" class="distrInfo checkInforBox">
				<h2 class="infoTitle">
					配送信息
					<span class="btTit">[修改]</span>
					<div class="adverPositon none" id="deliveryAD"></div>
				</h2>
				<div id="DeliveryDisplayDiv" class="showInfoOrder">
					<table cellspacing="0" cellpadding="0" border="0"
						class="showInfoOrder">
						<tbody>
							<tr>
								<th>
									包裹
								</th>
								<th>
									配送方式
								</th>
								<th>
									配送备注
								</th>
								<th>
									确认备注
								</th>
								<th>
									运费
								</th>
							</tr>
							<tr>
								<td>
									包裹
								</td>
								<td>
									普通快递
								</td>
								<td>
									<textarea rows="8" cols="80" id="orderRemark" ></textarea>
								</td>
								<td>
								<input type="button" value="确认备注信息" onclick="bb()" />
								</td>
								<td>
									<b>免费</b>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="rece_box" id="DeliveryEditDiv"></div>
				<div class="rece_box editeDeliveryBt">
					<button class="bt_yrt6 saveOrderDelivery" type="button" style="">
						保存配送信息
					</button>
					<!--<small class="PromptInfo">储蓄卡单笔最高限额¥1000,000,信用卡单笔最高限额¥1000</small>-->
				</div>
			</div>

			<!-- <div class="planInforConfig checkInforBox">
        <h2 class="infoTitle">确认合约计划信息</h2>
        <table cellspacing="1" cellpadding="0" border="0">
            <tr><td><span>机主姓名：</span>王小华</td><td><span>预存话费：</span>¥2151</td></tr>
            <tr><td><span>手机号码：</span>18615232026</td><td><span>签约期：</span>12期</td></tr>
            <tr><td><span>证件类型：</span>身份证</td><td><span>购机资费：</span>¥3665</td></tr>
            <tr><td><span>证件号码：</span>41041212554648466564</td><td><span>每月返还资费：</span>¥160</td></tr>
            <tr><td><span>城市：</span>上海</td><td><span>套餐月费：</span>¥186</td></tr>
        </table>
    </div> -->
			<div class="commodityInfor checkInforBox">
				<h2 class="infoTitle">
					商品信息
					<div class="adverPositon none" id="confirmAD"></div>
				</h2>
				<div id="confirmUI">
					<table class="showInfoOrder orderProductListInfo" width="100%"
						cellspacing="0" cellpadding="0" border="0">
						<tbody>
							<tr>
								<th width="48">
									包裹
								</th>
								<th width="450" class="txtl">
									商品名称
								</th>
								<th>
									数 量(个)
								</th>

								<th>
									单价(元)
								</th>
		
								<th>
									金额小计
								</th>
							</tr>
							<c:forEach items="${oDetailList }" var="odl">
							<tr class="btTD">
								<td rowspan="1">
									包裹1
								</td>
								<td class="txtl">
									${odl.goodsName }
									<img src="${odl.goodsPicture }" height="60" width="60"/>
								</td>
								<td>
									${odl.goodsCoun }
								</td>
								<td>
									${odl.goodsPrice }
								</td>

								<td>
									¥${odl.goodsPrice * odl.goodsCoun }
								</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<div class="mallsettelment">
				<div id="statisticsUI" class="payTotal">
					<p class="fr">
						商品金额
						<b>${amount }</b>元
					</p>
					<p class="fr">
						运费
						<b>10</b>元
					</p>
					<p>
						包裹(个)：1&nbsp;
					</p>
					<strong>您需为订单支付<b>${amount+10 }</b>元</strong>
					<div class="mallsettelment_address">
						<span id="add1"></span>

						<a href="#/checkoutV3/index.do#" onclick="returnToEdit();"> 修改</a>
					</div>
				</div>
				<div class="btOrderConfig">
					<div id="validateCode"></div>
					<form action="<%=path %>/orderInsert" name="fm" method="post">

						<input type="hidden" id="add" name="memberAddr" />
						<input type="hidden" id="remark" name="orderRemark"  />

						<img src="orderInsert_files/orderInsert.png"
							onclick="javascript:document.fm.submit();" />
					</form>
				</div>
			</div>
		</div>


		<!-- ---------------------------------------------------------------------------------------------- -->



		<div id="temp"></div>
		<!-- 临时存放页面元素用，不可删除 -->
		<div class="rechange_pop"></div>
		<!-- 临时存放页面元素用，不可删除 -->

	</body>
</html>