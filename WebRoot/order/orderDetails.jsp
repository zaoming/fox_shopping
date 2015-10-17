<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0051)http://my.yihaodian.com/member/userinfo/editinfo.do -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><script src="<%=path %>/order/editinfo_files/info.do"></script><script type="text/javascript" async="" src="<%=path %>/order/editinfo_files/ga.js"></script>

	<title>我的91商城-编辑个人资料</title>

<meta name="Keywords" content="我的91商城-编辑个人资料">
<meta name="Description" content="我的91商城-编辑个人资料">


<!--css start-->
<link href="<%=path %>/order/orderdetails_files/global_site_base.css"
			rel="stylesheet" type="text/css">



		<link href="<%=path %>/order/orderdetails_files/ordercenter.css" rel="stylesheet"
			type="text/css">
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
<link rel="stylesheet" type="text/css" href="<%=path %>/order/orderdetails_files/global_yhdLib.css" />
		<script type="text/javascript" src="<%=path %>/order/orderdetails_files/global_yhdLib.js"></script>
		<script type="text/javascript" src="<%=path %>/order/orderdetails_files/global_login_frame.js"></script>
<link rel="stylesheet" type="text/css" href="<%=path %>/order/editinfo_files/base.css" media="all" />
<link rel="stylesheet" type="text/css" href="<%=path %>/order/editinfo_files/plist20120412.css" media="all" />
<link rel="stylesheet" type="text/css" href="<%=path %>/order/editinfo_files/pop_compare.css" media="all" />
<link href="./editinfo_files/WdatePicker.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="<%=path %>/order/editinfo_files/global_yhdLib.css" />
<script type="text/javascript" src="<%=path %>/order/editinfo_files/global_yhdLib.js"></script>
<script type="text/javascript" src="<%=path %>/order/editinfo_files/global_login_frame.js"></script></head>

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
		<div id="logo" class="ld"><a href="<%=path %>/index.jsp"><b></b><img src="<%=path %>/order/editinfo_files/91logo.png" width="259" height="50" alt="91商城"></a></div><!--logo end-->
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
				<dt class="ld"><s></s><img src="<%=path %>/order/editinfo_files/blank.gif" width="24" height="24" alt="头像"><a href="">我的91</a><b></b></dt>
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
				<a class="hblue" href="#/">91商城</a> &gt;
				<a class="hblue" href="">我的91商城</a> &gt;
				<a class="hblue" href="<%=path %>/orderQueryAll">我的订单</a> &gt;
				订单号：${orderdetail.orderID }
			</div>
			<div class="account_box package_num">
				<input type="hidden" id="orderid" value="78139341">
				<input type="hidden" id="isHistoryData" value="0">
				<form id="orderDetailForm" action="#/cart/batchAdd.do" method="get"
					style="display: inline;">
					<input type="hidden" name="productID" value="4289734">
					<input type="hidden" name="productNum" value="1"></input>
				</form>
				<em>订单编号：</em> ${ovone.orderID }
			</div>
			<ul class="ul_tab">
				<s></s>
				<input type="hidden" value="78139341" id="firstOId">
				<input type="hidden" value="expressStatus_78139341"
					id="goodFirstStatus">
				<input type="hidden" value="0" id="firstIndex">
				<li id="goodStatusli_0"
					onclick="gotracker(&#39;2&#39;,&#39;O_D_SWITCHPACKAGE&#39;);"
					class="orderTab on" nostartrun="0" divid="order_0"
					goodstatusid="expressStatus_78139341" oid="78139341">
					<s></s> 包裹一
				</li>
			</ul>
			<div class="tab_tb" style="" id="orderInfoDiv_78139341">
				<input type="hidden" finallysuccsesteptype="10"
					lastorderstatuslogtype="1">
				<div class="send_status clearfix">
					<div class="package_send_info">
					</div>
					<div class="package_samll" id="samll_78139341">
						<p>

							<span> 
							</span><i>提示：</i>
						</p>
						<a class="hblue" href="#/cms/view.do?topicId=18942&merchant=1"
							target="_blank"
							onclick="addTrackPositionToCookie(&#39;1&#39;,&#39;O_D_HELPCENTER&#39;);">更多帮助</a>
					</div>
				</div>
				<div class="order_detail">
					<div class="package_status">
						包裹状态：待支付
					</div>
					<div class="expressStatus" id="expressStatus_78139341">
						<div class="expr_nav">
							<span class="exp_time">操作时间</span><span>是否付款</span><span
								class="remark_tit">备注信息</span>
						</div>
						<ul class="expr_nav" style="height:40px;">
							<li style="height: 20px;padding-top: 10px;">
								<span ><i>${ovone.createDate }</i></span>
								
								<span >
									<c:if test="${ovone.orderStatus1 == 1}" >已付款</c:if>
									<c:if test="${ovone.orderStatus1 == 0}" >未付款</c:if>
								</span>
								<span>
									${ovone.orderRemark }
								</span>
							</li>
						
						</ul>
					</div>
				</div>
				<div class="order_infod mt10">
					<h2>
						订单信息
					</h2>
					<div class="order_continf">
						<dl>
							<dt>
								收货人信息
								<c:if test="${ovone.orderStatus1 == 0}" ><a class="hblue" href="#" onclick="">修改</a></c:if>
								
							</dt>
							<dd>
								收货人：${ovone.memberTrueName }
							</dd>
							<dd>
								收货地址:${ovone.memberProvince },${ovone.memberCity },${ovone.memberAddress }
							</dd>
							<dd>
								手机号码：${ovone.memberTelephone }
							</dd>
							<dd>
								邮政编码：${ovone.memberPostcode }
							</dd>
						</dl>
						<dl>
							<dt>
								订单信息
							</dt>
							<dd>
								支付状态：${ovone.orderStatus1 }
							</dd>
							<dd>
								支付类型： 网上付款
							</dd>
						</dl>						
						<dl>
							<dt>
								商家信息
							</dt>
							<dd> 
								商家名称： <a class="hblue" href="#/" target="_blank">91店</a>
							</dd>
						</dl>
						<div class="order_info_list mt10">
							<h3>
								商品信息
							</h3>
							<table cellspacing="1" cellpadding="0" border="0"
								class="product_table">
								<tbody>
									<tr>
										<th width="422">
											商品名称
										</th>
										<th> 
											91店价 
										</th>
										<th>
											数量
										</th>
										<th>
											金额小计
										</th>
										<th width="100">
											操作
										</th>
									</tr>
									<c:forEach items="${goodsDL }" var="gl">
									<tr>
										
										<td class="pro">
											<a class="pic" href="#" target="_blank"><img src="${gl.goodsPicture } "/></a>
											<p>
												<a href="<%=path %>/goods/goodsDetail?goodsID=${gl.goodsID }" target="_blank">${gl.goodsName }
										</a>
											</p>
										</td>
										<td>
											${gl.goodsPrice }
										</td>
										<td>
											${gl.goodsCoun }
										</td>
										<td>
											${gl.goodsCoun*gl.goodsPrice }
										</td>
										<td>
											<span> <a class="favoriteItem hblue"
												productid="4289734" merchantids="2" style="cursor: pointer;"
												onclick="gotracker(&#39;2&#39;,&#39;O_D_ADDTOFAV&#39;);">收藏</a>
											</span>
											
										</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="order_crash">
								<ul>
									<li>运费:10元</li>
									<li class="order_crash_total">
										<span>总计：</span><em>￥3888</em>
									</li>

								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="maskDiv"
			style="position: absolute; left: 0; top: 0; z-index: 100; display: none;"></div>
		<!--content end-->
		<br />
	</body>
</html>