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
<link href="./orderPay_files/global_site_simple.css" rel="stylesheet" type="text/css">



    <link href="./orderPay_files/complete.css" rel="stylesheet" type="text/css">
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
</div>	     <!--content start-->  <!--content start-->
	  <!--content start-->
<div class="order_form">
    <h3 class="prompt_title">您的订单已生成，请尽快支付订单！</h3>
    <div class="prompt">
        <p>为了保证及时处理您的订单，请于下单<span id="countDown">23时59分41秒</span>内付款，若逾期未付款订单将被取消，需重新下单。</p>
    </div>
    <input type="hidden" value="80533436" id="orderId">
    <input type="hidden" value="56" id="methodId">
    <table class="order_table">
        <tbody><tr>
            <th width="150">订单号</th>
            <th width="150">包裹数量</th>
            <th width="150">商品数量</th>
            	<th width="150">订单金额</th>
            	<th width="150">订单备注</th>
        </tr>
        <tr>
            <td>${orderVo1.orderID }</td>
            <td>1</td>
            <td>${goodsCount }</td>
            <td><strong class="c00">${orderVo1.orderAmount}</strong>元</td>
            	<td>${orderVo1.orderRemark }</td>
        </tr>
        <tr>
            <td><strong>网银支付</strong></td>
            <td colspan="4">
                <div class="money">
                    <strong>${orderVo1.orderAmount }</strong>元<img class="bank_pic" src="./orderPay_files/jianshe.gif">
                    <span class="des"><a href="javascript:void(0);" onclick="YHD.popwin(jQuery(&#39;#tableBankList&#39;).html(), &#39;658px&#39;, &#39;300px&#39;);">选择其他网银支付方式</a><br></span>
                </div>
            </td>
        </tr>
       
       	 <tr>
        	
        		<td>请输入支付密码</td>
        		<td colspan="2"> <form action="<%=path %>/member/toPay" method="post"><input type="hidden" name="userName" />
        				<input type="hidden" name="amount" id="amount" value="${orderVo1.orderAmount }"/>
        				<input type="password" name="toPayPassword" />
        				<input type="submit" value="支付订单" />
        			</form></td>
        		<td></td>
        	
        </tr>
    </tbody></table>
    <div class="btn">
        <input type="button" value="立即支付" onclick="doPayV2(&#39;317&#39;,&#39;80533436&#39;,&#39;http://netpay.yihaodian.com/online-payment/return/317/1/1/&#39;);gotracker(&#39;2&#39;,&#39;gotoBank:{gatewayId:317}&#39;, null);">
    </div>
    <div class="other">
        <a href="">查看订单详情</a>
        <a href="">继续购物</a>
        <a href="">掌上1号店</a>
        <a href="" target="_blank">新版结算流程使用调查</a>
    </div>
</div>
<div class="none" id="pay_wait_win">
<div class="pay_confirm">
    <h3 class="pay_title">付款确认<span class="close popwinClose">关闭</span></h3>
    <div class="pay_confirm_box">
        <p class="check_bank">您已选择<img class="bank_pic" src="./orderPay_files/jianshe.gif">的网上支付</p>
        <div class="settlementCoutBox" style="display:none">1号商城还有<b></b>件商品待结算<a class="settlementCoutBT" href="" target="_blank">去查看</a></div>
        <p class="p_text">请在新开网银页面完成付款后选择：</p>
        <table class="pay_confirm_table">
            <tbody><tr>
                <th width="100">付款成功</th>
                <td width="200"><a href="">查看订单详情</a></td>
                <td width="200"><a href="">继续购物</a></td>
            </tr>
            <tr>
                <th>付款失败</th>
                <td><a href="javascript:void(0);" onclick="YHD.popwin(jQuery(&#39;#tableBankList&#39;).html(), &#39;658px&#39;, &#39;300px&#39;);gotracker(&#39;2&#39;,&#39;chooseOtherBank2&#39;, null);">选择其他支付方式</a>&nbsp;</td>
                <td><a href="javascript:void(0);">查看支付帮助</a></td>
            </tr>
        </tbody></table>
        <div class="des">
            <dl>
                <dt>您付款遇到了问题吗？</dt>
                <dd>1.网上银行已经扣款，但1号店没有给您已经付款的信息？
                    <p>答：这是因为银行的数据没有及时给我们，我们会在两个工作日内与银行对账后给于确认，请再耐心等待一下。</p>
                </dd>
                <dd>2.网上银行页面打不开，怎么办？
                    <p>答：建议使用Microsoft　IE浏览器。点击IE的菜单“工具”－“Internet选项”－“安全”，将安全中的各项设置回复到默认级别。</p>
                </dd>
                <dd>3.我网上银行重复多次付款了怎么办？
                    <p>答：由于您的支付银行没有及时传输给1号店，造成您的银行重复扣款。不过请放心，我们会在两个工作日内与银行对账，确认您的汇款后，重复支付付款会直接充值到您的1号店账户。</p>
                </dd>
            </dl>
        </div>
    </div>
</div>
</div>
<script>
   trackerContainer.addParameter(new Parameter("orderCode","121017HGSNWY"));
</script>
<div id="tableBankList" class="none">
	<div class="sa_popup pay_bank">
	    <h3 class="popTitle">选择支付平台或支付银行<span class="close popwinClose" id="bankListClose">关闭</span></h3>
	    <div class="sa_popup_box">
	        <p class="title_p">支付平台</p>
	        <ul class="pay_bank_list">
		                        <li>
		                            <span class="pay_bank_item">
		                                <label style="background:url(http://www.yihaodian.com/images/v2/bank/zfb.gif) no-repeat right 0;"><input type="radio" name="pay_bank_radio" id="bank_300" bankid="300" bankname="支付宝" desc="通过支付宝付款，无支付宝帐户也可以通过银行网关直接付款" value="http://www.yihaodian.com/images/v2/bank/zfb.gif" onclick="bankSelect(&#39;300&#39;);"></label>
		                            </span>
		                        </li>
		                        <li>
		                            <span class="pay_bank_item">
		                                <label style="background:url(http://www.yihaodian.com/images/v2/bank/xlzx.gif) no-repeat right 0;"><input type="radio" name="pay_bank_radio" id="bank_303" bankid="303" bankname="银联" desc="" value="http://www.yihaodian.com/images/v2/bank/xlzx.gif" onclick="bankSelect(&#39;303&#39;);"></label>
		                            </span>
		                        </li>
		                        <li>
		                            <span class="pay_bank_item">
		                                <label style="background:url(http://image.yihaodianimg.com/images/v2/bank/caifutong.gif) no-repeat right 0;"><input type="radio" name="pay_bank_radio" id="bank_301" bankid="301" bankname="财付通" desc="通过腾讯财付通支付平台支付" value="http://image.yihaodianimg.com/images/v2/bank/caifutong.gif" onclick="bankSelect(&#39;301&#39;);"></label>
		                            </span>
		                        </li>
		                        <li>
		                            <span class="pay_bank_item">
		                                <label style="background:url(http://image.yihaodianimg.com/images/v2/bank/wanlong.gif) no-repeat right 0;"><input type="radio" name="pay_bank_radio" id="bank_305" bankid="305" bankname="万隆卡" desc="" value="http://image.yihaodianimg.com/images/v2/bank/wanlong.gif" onclick="bankSelect(&#39;305&#39;);"></label>
		                            </span>
		                        </li>
		                        <li>
		                            <span class="pay_bank_item">
		                                <label style="background:url(http://image.yihaodianimg.com/images/v2/bank/kuaiqian.gif) no-repeat right 0;"><input type="radio" name="pay_bank_radio" id="bank_306" bankid="306" bankname="快钱" desc="" value="http://image.yihaodianimg.com/images/v2/bank/kuaiqian.gif" onclick="bankSelect(&#39;306&#39;);"></label>
		                            </span>
		                        </li>
		                        <li>
		                            <span class="pay_bank_item">
		                                <label style="background:url(http://www.yihaodian.com/images/v2/bank/cmcc.png) no-repeat right 0;"><input type="radio" name="pay_bank_radio" id="bank_304" bankid="304" bankname="移动支付" desc="" value="http://www.yihaodian.com/images/v2/bank/cmcc.png" onclick="bankSelect(&#39;304&#39;);"></label>
		                            </span>
		                        </li>
	        </ul>
	        <!-- 弹框-支付限额帮助页xmt 2012-6-4 10:42 -->
	        <p class="title_p">支付网银<a href="http://www.yihaodian.com/product/confirmOrder!saveOrder2.do?orderID=1&rdCheck=17db5a5d-2342-411e-9210-62701e9c9e07&rd=0.00030382839031517506###" onclick="popNetPayHelp();">了解网银支付限额&gt;&gt;</a></p>
	        <ul class="pay_bank_list">
	                        <li>
	                            <span class="pay_bank_item">
	                                <label style="background:url(http://www.yihaodian.com/images/v2/bank/zhaoshang.gif) no-repeat right 0;"><input type="radio" name="pay_bank_radio" id="bank_302" bankid="302" bankname="招商银行" desc="" value="http://www.yihaodian.com/images/v2/bank/zhaoshang.gif" onclick="bankSelect(&#39;302&#39;);"></label>
	                            </span>
	                        </li>
	                
	                        <li>
	                            <span class="pay_bank_item">
	                                <label style="background:url(http://image.yihaodianimg.com/images/v2/bank/gongshang.gif) no-repeat right 0;"><input type="radio" name="pay_bank_radio" id="bank_316" bankid="316" bankname="工商银行" desc="" value="http://image.yihaodianimg.com/images/v2/bank/gongshang.gif" onclick="bankSelect(&#39;316&#39;);"></label>
	                            </span>
	                        </li>
	                
	                        <li>
	                            <span class="pay_bank_item">
	                                <label style="background:url(http://image.yihaodianimg.com/images/v2/bank/jianshe.gif) no-repeat right 0;"><input type="radio" name="pay_bank_radio" id="bank_317" bankid="317" bankname="建设银行" desc="" value="http://image.yihaodianimg.com/images/v2/bank/jianshe.gif" onclick="bankSelect(&#39;317&#39;);" checked=""></label>
	                            </span>
	                        </li>
	                
	                        <li>
	                            <span class="pay_bank_item">
	                                <label style="background:url(http://image.yihaodianimg.com/images/v2/bank/nongye.gif) no-repeat right 0;"><input type="radio" name="pay_bank_radio" id="bank_312" bankid="312" bankname="农业银行" desc="" value="http://image.yihaodianimg.com/images/v2/bank/nongye.gif" onclick="bankSelect(&#39;312&#39;);"></label>
	                            </span>
	                        </li>
	                
	                        <li>
	                            <span class="pay_bank_item">
	                                <label style="background:url(http://image.yihaodianimg.com/images/v2/bank/china.gif) no-repeat right 0;"><input type="radio" name="pay_bank_radio" id="bank_315" bankid="315" bankname="中国银行" desc="" value="http://image.yihaodianimg.com/images/v2/bank/china.gif" onclick="bankSelect(&#39;315&#39;);"></label>
	                            </span>
	                        </li>
	                
	                        <li>
	                            <span class="pay_bank_item">
	                                <label style="background:url(http://image.yihaodianimg.com/images/v2/bank/jiaotong.gif) no-repeat right 0;"><input type="radio" name="pay_bank_radio" id="bank_313" bankid="313" bankname="交通银行" desc="" value="http://image.yihaodianimg.com/images/v2/bank/jiaotong.gif" onclick="bankSelect(&#39;313&#39;);"></label>
	                            </span>
	                        </li>
	                
	                        <li>
	                            <span class="pay_bank_item">
	                                <label style="background:url(http://image.yihaodianimg.com/images/v2/bank/pufa.gif) no-repeat right 0;"><input type="radio" name="pay_bank_radio" id="bank_311" bankid="311" bankname="浦发银行" desc="" value="http://image.yihaodianimg.com/images/v2/bank/pufa.gif" onclick="bankSelect(&#39;311&#39;);"></label>
	                            </span>
	                        </li>
	                
	                        <li>
	                            <span class="pay_bank_item">
	                                <label style="background:url(http://image.yihaodianimg.com/images/v2/bank/mingshen.gif) no-repeat right 0;"><input type="radio" name="pay_bank_radio" id="bank_318" bankid="318" bankname="民生银行" desc="" value="http://image.yihaodianimg.com/images/v2/bank/mingshen.gif" onclick="bankSelect(&#39;318&#39;);"></label>
	                            </span>
	                        </li>
	                
	                        <li>
	                            <span class="pay_bank_item">
	                                <label style="background:url(http://image.yihaodianimg.com/images/v2/bank/xingye.gif) no-repeat right 0;"><input type="radio" name="pay_bank_radio" id="bank_314" bankid="314" bankname="兴业银行" desc="" value="http://image.yihaodianimg.com/images/v2/bank/xingye.gif" onclick="bankSelect(&#39;314&#39;);"></label>
	                            </span>
	                        </li>
	                
	        </ul>
	        <p class="text_p">为了保证及时处理您的订单，请于下单<span>24小时内</span>付款，逾期未付款订单将被取消，需重新下单。</p>
	    </div>
	</div>
</div>
<!-- 弹框-支付限额帮助页xmt 2012-6-4 10:42 -->
<!-- 弹框-银行支付限额xmt 2012-6-1 16:39 -->
<div class="payCountPop hide">
<table width="734" cellspacing="0" cellpadding="0" border="0">
<tbody>
<tr>
    <th width="80" rowspan="2">银行类别</th>
    <th width="52" rowspan="2">卡种</th>
    <th width="400" rowspan="2" colspan="2">支付类别</th>
    <th width="250" colspan="2">银行网银规定</th>
    <th width="250" colspan="2">支付宝</th>
    <th rowspan="2">开通备注</th>
</tr>
<tr class="thbg">
    <th>单笔</th>
    <th>单日</th>
    <th>单笔</th>
    <th>单日</th>
</tr>
<tr>
    <td id="zs" class="tc" rowspan="4">招商银行</td>
    <td rowspan="2">一卡通</td>
    <td>&nbsp;</td>
    <td>大众版</td>
    <td>500</td>
    <td>500</td>
    <td>500</td>
    <td>500</td>
    <td class="tl">1）大众版，可通过柜台、电话银行和网上注册任何一种方式开通。</td>
</tr>
<tr>
    <td>&nbsp;</td>
    <td>专业版</td>
    <td>无限额</td>
    <td>无限额</td>
    <td>无限额</td>
    <td>无限额</td>
    <td class="tl">2）专业版，需持身份证件及银行卡去招行柜台开通。</td>
</tr>
<tr>
    <td rowspan="2">信用卡</td>
    <td>&nbsp;</td>
    <td>大众版</td>
    <td>500</td>
    <td>无限额</td>
    <td>499.99</td>
    <td>无限额</td>
    <td class="tl"></td>
</tr>
<tr>
    <td>&nbsp;</td>
    <td>专业版</td>
    <td>500</td>
    <td>无限额</td>
    <td>499.99</td>
    <td>无限额</td>
    <td class="tl"></td>
</tr>
<!--交通银行-->
<tr class="bg_blue">
    <td id="jt" class="tc" rowspan="4">交通银行</td>
    <td rowspan="2">借记卡，准货记卡</td>
    <td>&nbsp;</td>
    <td>手机注册版</td>
    <td>5000</td>
    <td>5000</td>
    <td>5000</td>
    <td>5000</td>
    <td class="tl">1）需要持身份证件及银行卡去交行柜台开通网上支付功能，成为交行手机注册版用户或者证书认证版用户，开通后需要进行激活。</td>
</tr>
<tr class="bg_blue">
    <td>&nbsp;</td>
    <td>证书认证版</td>
    <td>50000</td>
    <td>50000</td>
    <td>50000</td>
    <td>50000</td>
    <td class="tl">2）交行信用卡开通网上银行只需要带身份证和银行卡去银行办理网银业务后自行在网银中开通支付功能即可，不需要挂靠在储蓄卡或者准贷记卡下。</td>
</tr>
<tr class="bg_blue">
    <td rowspan="2">信用卡</td>
    <td>&nbsp;</td>
    <td>手机注册版</td>
    <td>5000</td>
    <td>5000</td>
    <td>5000</td>
    <td>5000</td>
    <td class="tl"></td>
</tr>
<tr class="bg_blue">
    <td>&nbsp;</td>
    <td>证书认证版</td>
    <td>5000</td>
    <td>5000</td>
    <td>5000</td>
    <td>5000</td>
    <td class="tl"></td>
</tr>
<!-- 中国工商-->
<tr>
    <td id="zggs" class="tc" rowspan="7">中国工商</td>
    <td rowspan="4">借记卡，准货记卡</td>
    <td>&nbsp;</td>
    <td>柜面注册存量静态密码客户</td>
    <td>300</td>
    <td>300</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td class="tl"></td>
</tr>
<tr>
    <td rowspan="2">电子银行口令卡</td>
    <td>未开通短信认证</td>
    <td>500</td>
    <td>1000</td>
    <td>500</td>
    <td>1000</td>
    <td class="tl"></td>
</tr>
<tr>
    <td>开通短信认证</td>
    <td>2000</td>
    <td>5000</td>
    <td>2000</td>
    <td>5000</td>
    <td class="tl">电子银行口令卡可以携带有效证件和注册过网上银行的银行卡到工行营业网点免费领取,请在领取时向工作人员说明开通"电子商务"功能；U盾也需要到柜台去开通。</td>
</tr>
<tr>
    <td>&nbsp;</td>
    <td>U盾客户</td>
    <td>100w</td>
    <td>100w</td>
    <td>100w</td>
    <td>100w</td>
    <td class="tl"></td>
</tr>
<tr>
    <td rowspan="3">信用卡</td>
    <td rowspan="2">电子银行口令卡</td>
    <td>未开通短信认证</td>
    <td>500</td>
    <td>1000</td>
    <td>500</td>
    <td>1000</td>
    <td class="tl"></td>
</tr>
<tr>
    <td>开通短信认证</td>
    <td>2000</td>
    <td>5000</td>
    <td>2000</td>
    <td>5000</td>
    <td class="tl"></td>
</tr>
<tr>
    <td>U顿客户</td>
    <td>&nbsp;</td>
    <td>100w</td>
    <td>100w</td>
    <td>1000</td>
    <td>信用卡额度</td>
</tr>
<!--中国民生-->
<tr class="bg_blue">
    <td id="zgms" class="tc" rowspan="6">中国民生</td>
    <td rowspan="3">借记卡</td>
    <td>&nbsp;</td>
    <td>大众版</td>
    <td>累计300</td>
    <td>累计300</td>
    <td>累计300</td>
    <td>累计300</td>
    <td class="tl"></td>
</tr>
<tr class="bg_blue">
    <td>&nbsp;</td>
    <td>浏览器证书</td>
    <td>5000</td>
    <td>5000</td>
    <td>5000</td>
    <td>5000</td>
    <td class="tl">1）大众版可以直接网站开通。</td>
</tr>
<tr class="bg_blue">
    <td>&nbsp;</td>
    <td>U宝</td>
    <td>50w</td>
    <td>50w</td>
    <td>2w</td>
    <td>10w</td>
    <td class="tl">2）贵宾版需持身份证和和银行卡去银
        行柜台办理。</td>
</tr>
<tr class="bg_blue">
    <td rowspan="3">信用卡</td>
    <td>&nbsp;</td>
    <td>大众版</td>
    <td>累计300</td>
    <td>累计300</td>
    <td>不支持</td>
    <td>不支持</td>
    <td class="tl"></td>
</tr>
<tr class="bg_blue">
    <td>&nbsp;</td>
    <td>浏览器证书</td>
    <td>5000</td>
    <td>5000</td>
    <td>不支持</td>
    <td>不支持</td>
    <td class="tl"></td>
</tr>
<tr class="bg_blue">
    <td>&nbsp;</td>
    <td>U宝</td>
    <td>50w</td>
    <td>50w</td>
    <td>不支持</td>
    <td>不支持</td>
    <td class="tl"></td>
</tr>
<!--平安银行-->
<tr>
    <td id="pa" class="tc" rowspan="2">平安银行</td>
    <td>借记卡</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>无</td>
    <td>5w</td>
    <td>5w</td>
    <td>5w</td>
    <td class="tl"></td>
</tr>
<tr>
    <td>信用卡</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>无</td>
    <td>&nbsp;</td>
    <td>不支持</td>
    <td>不支持</td>
    <td class="tl"></td>
</tr>
<!--兴业银行-->
<tr class="bg_blue">
    <td id="xy" class="tc" rowspan="4">兴业银行</td>
    <td rowspan="3">借记卡</td>
    <td>&nbsp;</td>
    <td>开通网上支付</td>
    <td>无</td>
    <td>&nbsp;</td>
    <td>1000</td>
    <td>1000</td>
    <td class="tl">1）非证书客户可直接网上注册开通。</td>
</tr>
<tr class="bg_blue">
    <td>&nbsp;</td>
    <td>电子支付卡</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>5000</td>
    <td>5000</td>
    <td class="tl">2）兴业e卡可直接网上申请，如本身无兴业银行卡申请的，还需要到柜台去进行确认。</td>
</tr>
<tr class="bg_blue">
    <td>&nbsp;</td>
    <td>证书版网上支付</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>无限额</td>
    <td>无限额</td>
    <td class="tl">3）证书客户需持身份证和银行卡到柜台开通，开通后需下载证书和进行激活。</td>
</tr>
<tr class="bg_blue">
    <td>信用卡</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>600</td>
    <td>账期内1000</td>
    <td class="tl">3）证书客户需持身份证和银行卡到柜台开通，开通后需下载证书和进行激活。</td>
</tr>
<!--中国农业银行-->
<tr>
    <td id="zgny" class="tc" rowspan="3">中国农业银行</td>
    <td rowspan="2">借记卡</td>
    <td>&nbsp;</td>
    <td>IE办</td>
    <td>1000</td>
    <td>3000</td>
    <td>1000</td>
    <td>3000</td>
    <td class="tl">注册客户需持证件和银行卡去柜台办理。</td>
</tr>
<tr>
    <td>&nbsp;</td>
    <td>K宝</td>
    <td>50w</td>
    <td>100w</td>
    <td>无限额</td>
    <td>无限额</td>
    <td class="tl"></td>
</tr>
<tr>
    <td>信用卡</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>不支持</td>
    <td>不支持</td>
    <td class="tl"></td>
</tr>
<!--浦发银行-->
<tr class="bg_blue">
    <td id="pf" class="tc" rowspan="4">浦发银行</td>
    <td rowspan="2">借记卡</td>
    <td>&nbsp;</td>
    <td>动态密码版</td>
    <td>5000</td>
    <td>5000</td>
    <td>200000</td>
    <td>200000</td>
    <td class="tl">持身份证件及银行卡或存折去银行柜台开通。</td>
</tr>
<tr class="bg_blue">
    <td>&nbsp;</td>
    <td>数字证书版</td>
    <td>5000</td>
    <td>无限额</td>
    <td>无限额</td>
    <td>无限额</td>
    <td class="tl"></td>
</tr>
<tr class="bg_blue">
    <td rowspan="2">信用卡</td>
    <td>&nbsp;</td>
    <td>数字证书版</td>
    <td>500</td>
    <td>1000</td>
    <td>无限额</td>
    <td>无限额</td>
    <td class="tl"></td>
</tr>
<tr class="bg_blue">
    <td>&nbsp;</td>
    <td>数字证书版</td>
    <td>500</td>
    <td>1000</td>
    <td>无限额</td>
    <td>无限额</td>
    <td class="tl"></td>
</tr>
<!--中国建设 -->
<tr>
    <td id="zgjs" class="tc" rowspan="5">中国建设银行</td>
    <td rowspan="4">借记卡</td>
    <td>&nbsp;</td>
    <td>便捷支付</td>
    <td>500</td>
    <td>500</td>
    <td>不支持</td>
    <td>不支持</td>
    <td class="tl">需要拿身份证和龙卡去建行柜台签约开通。</td>
</tr>
<tr>
    <td>&nbsp;</td>
    <td>动态口令</td>
    <td>1000</td>
    <td>1000</td>
    <td>1000</td>
    <td>1000</td>
    <td class="tl"></td>
</tr>
<tr>
    <td>&nbsp;</td>
    <td>文件证书+动态口令</td>
    <td>3000</td>
    <td>3000</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td class="tl"></td>
</tr>
<tr>
    <td>&nbsp;</td>
    <td>网银盾</td>
    <td>50w</td>
    <td>50w</td>
    <td>50w</td>
    <td>50w</td>
    <td class="tl"></td>
</tr>
<tr>
    <td>信用卡</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>500</td>
    <td>500</td>
    <td>不支持</td>
    <td>不支持</td>
    <td class="tl"></td>
</tr>
<!--中国银行-->
<tr class="bg_blue">
    <td id="zg" class="tc" rowspan="2">中国银行</td>
    <td>借记卡</td>
    <td>&nbsp;</td>
    <td>动态口令</td>
    <td>50000</td>
    <td>100000</td>
    <td>50000</td>
    <td>100000</td>
    <td class="tl">您需要携带本人有效身份证件亲临中国银行网点办理注册开通手续。网银开通时需使用一张长城电子储蓄卡，您可携带已有的储蓄卡，也可选择到柜台申请
        新的储蓄卡并开通新版网上银行。</td>
</tr>
<tr class="bg_blue">
    <td>信用卡</td>
    <td>&nbsp;</td>
    <td>动态口令</td>
    <td>50000</td>
    <td>100000</td>
    <td>300</td>
    <td>100000</td>
    <td class="tl"></td>
</tr>
</tbody>
</table>
</div>

<script>
// 弹框-支付限额帮助页xmt 2012-5-30 15:36
function popNetPayHelp(){
    yhdLib.popwin({
        /*clickid;"",*///jquery选择器
        poptitle:"银行支付限额",
        popcontent:".payCountPop",
        mask:1 //是否要遮罩
    });
}
</script><!-- Google Code for Order Completed Conversion Page   -->

<script type="text/javascript">
/* <![CDATA[ */
var unioncookie=jQuery.cookie("unionKey"); 

if(unioncookie==8215831)
{

<!-- Google Code for &#35746;&#21333;&#36716;&#25442; Conversion Page -->
/* <![CDATA[ */
var google_conversion_id = 955994928;
var google_conversion_language = "ar";
var google_conversion_format = "2";
var google_conversion_color = "ffffff";
var google_conversion_label = "lyM0CMCo_gIQsKbtxwM";
var google_conversion_value = 0;
/* ]]> */

document.write(unescape("%3Cscript src='http://www.googleadservices.com/pagead/conversion.js' type='text/javascript'%3E%3C/script%3E"));
document.write("<noscript><div style='display:inline;'><img height='1' width='1' style='border-style:none;' alt='' src='http://www.googleadservices.com/pagead/conversion/955994928/?label=lyM0CMCo_gIQsKbtxwM&amp;guid=ON&amp;script=0'/></div></noscript>");

}

if(unioncookie==1651270)
{

<!-- Google Code for Order Completed Conversion Page -->

/* <![CDATA[ */
var google_conversion_id = 1025835260;
var google_conversion_language = "zh_CN";
var google_conversion_format = "2";
var google_conversion_color = "ffffff";
var google_conversion_label = "DbgqCMDp1gEQ_IGU6QM";
var google_conversion_value = 0;
if (200) {
  google_conversion_value = 200;
}
/* ]]> */

document.write(unescape("%3Cscript src='http://www.googleadservices.com/pagead/conversion.js' type='text/javascript'%3E%3C/script%3E"));
document.write('<noscript><div style="display:inline;"><img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/1025835260/?value=200&amp;label=DbgqCMDp1gEQ_IGU6QM&amp;guid=ON&amp;script=0"/></div></noscript>');


}

if(unioncookie==9633)
{

<!-- Google Code for Order Complete -- &#31454;&#21697; Conversion Page -->

/* <![CDATA[ */
var google_conversion_id = 956610288;
var google_conversion_language = "zh_CN";
var google_conversion_format = "2";
var google_conversion_color = "ffffff";
var google_conversion_label = "BFFsCOit-QIQ8O2SyAM";
var google_conversion_value = 0;
/* ]]> */

document.write(unescape("%3Cscript src='http://www.googleadservices.com/pagead/conversion.js' type='text/javascript'%3E%3C/script%3E"));
document.write('<noscript><div style="display:inline;"><img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/956610288/?label=BFFsCOit-QIQ8O2SyAM&amp;guid=ON&amp;script=0"/></div></noscript>');


}

if(unioncookie==1053782777)
{

<!-- Google Code for Order Complete Conversion Page -->

/* <![CDATA[ */
var google_conversion_id = 1016983065;
var google_conversion_language = "en";
var google_conversion_format = "2";
var google_conversion_color = "ffffff";
var google_conversion_label = "4JcsCIf1rwIQmdz35AM";
var google_conversion_value = 0;
/* ]]> */

document.write(unescape("%3Cscript src='http://www.googleadservices.com/pagead/conversion.js' type='text/javascript'%3E%3C/script%3E"));
document.write('<noscript><div style="display:inline;"><img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/1016983065/?label=4JcsCIf1rwIQmdz35AM&amp;guid=ON&amp;script=0"/></div></noscript>');

}

if(unioncookie==1063662797)
{

<!-- Google Code for Order Complete--&#32654;&#23481;&#25252;&#29702; Conversion Page -->

/* <![CDATA[ */
var google_conversion_id = 963169622;
var google_conversion_language = "zh_CN";
var google_conversion_format = "2";
var google_conversion_color = "ffffff";
var google_conversion_label = "IMCGCPLA-gIQ1pqjywM";
var google_conversion_value = 0;
/* ]]> */

document.write(unescape("%3Cscript src='http://www.googleadservices.com/pagead/conversion.js' type='text/javascript'%3E%3C/script%3E"));
document.write('<noscript><div style="display:inline;"><img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/963169622/?label=IMCGCPLA-gIQ1pqjywM&amp;guid=ON&amp;script=0"/></div></noscript>');

}

if(unioncookie==1010482782)
{

<!-- Google Code for Order Complete--&#27597;&#23156; Conversion Page -->

/* <![CDATA[ */
var google_conversion_id = 1017404181;
var google_conversion_language = "zh_CN";
var google_conversion_format = "2";
var google_conversion_color = "ffffff";
var google_conversion_label = "o3tkCNuVnQIQlbaR5QM";
var google_conversion_value = 0;
/* ]]> */

document.write(unescape("%3Cscript src='http://www.googleadservices.com/pagead/conversion.js' type='text/javascript'%3E%3C/script%3E"));
document.write('<noscript><div style="display:inline;"><img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/1017404181/?label=o3tkCNuVnQIQlbaR5QM&amp;guid=ON&amp;script=0"/></div></noscript>');


}

if(unioncookie==1023882783)
{

<!-- Google Code for Order Complete--&#21416;&#21355;&#28165;&#27905; Conversion Page -->

/* <![CDATA[ */
var google_conversion_id = 957976135;
var google_conversion_language = "zh_CN";
var google_conversion_format = "2";
var google_conversion_color = "ffffff";
var google_conversion_label = "OPJjCOH5lQMQx5zmyAM";
var google_conversion_value = 0;
/* ]]> */

document.write(unescape("%3Cscript src='http://www.googleadservices.com/pagead/conversion.js' type='text/javascript'%3E%3C/script%3E"));
document.write('<noscript><div style="display:inline;"><img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/957976135/?label=OPJjCOH5lQMQx5zmyAM&amp;guid=ON&amp;script=0"/></div></noscript>');

}


if(unioncookie==1087192784)
{

<!-- Google Code for Order Complete--&#23478;&#23621;&#29992;&#21697; Conversion Page -->

/* <![CDATA[ */
var google_conversion_id = 1014197291;
var google_conversion_language = "zh_CN";
var google_conversion_format = "2";
var google_conversion_color = "ffffff";
var google_conversion_label = "O-GTCN389gEQq9jN4wM";
var google_conversion_value = 0;
/* ]]> */

document.write(unescape("%3Cscript src='http://www.googleadservices.com/pagead/conversion.js' type='text/javascript'%3E%3C/script%3E"));
document.write('<noscript><div style="display:inline;"><img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/1014197291/?label=O-GTCN389gEQq9jN4wM&amp;guid=ON&amp;script=0"/></div></noscript>');


}

if(unioncookie==1055022785)
{

<!-- Google Code for Order Complete Conversion Page -->

/* <![CDATA[ */
var google_conversion_id = 957911581;
var google_conversion_language = "zh_CN";
var google_conversion_format = "2";
var google_conversion_color = "ffffff";
var google_conversion_label = "1Fa2CJvHggMQnaTiyAM";
var google_conversion_value = 0;
/* ]]> */

document.write(unescape("%3Cscript src='http://www.googleadservices.com/pagead/conversion.js' type='text/javascript'%3E%3C/script%3E"));
document.write('<noscript><div style="display:inline;"><img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/957911581/?label=1Fa2CJvHggMQnaTiyAM&amp;guid=ON&amp;script=0"/></div></noscript>');

}

if(unioncookie==1058503492)
{

<!-- Google Code for Order Complete--&#25968;&#30721;&#30005;&#22120; Conversion Page -->

/* <![CDATA[ */
var google_conversion_id = 1014542912;
var google_conversion_language = "zh_CN";
var google_conversion_format = "2";
var google_conversion_color = "ffffff";
var google_conversion_label = "F5BPCJiJpQIQwOTi4wM";
var google_conversion_value = 0;
/* ]]> */

document.write(unescape("%3Cscript src='http://www.googleadservices.com/pagead/conversion.js' type='text/javascript'%3E%3C/script%3E"));
document.write('<noscript><div style="display:inline;"><img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/1014542912/?label=F5BPCJiJpQIQwOTi4wM&amp;guid=ON&amp;script=0"/></div></noscript>');


}

if(unioncookie==1044833493)
{

<!-- Google Code for Order Complete--&#30005;&#33041;&#21150;&#20844; Conversion Page -->

/* <![CDATA[ */
var google_conversion_id = 957669779;
var google_conversion_language = "zh_CN";
var google_conversion_format = "2";
var google_conversion_color = "ffffff";
var google_conversion_label = "r_IiCJX3jQMQk8PTyAM";
var google_conversion_value = 0;
/* ]]> */

document.write(unescape("%3Cscript src='http://www.googleadservices.com/pagead/conversion.js' type='text/javascript'%3E%3C/script%3E"));
document.write('<noscript><div style="display:inline;"><img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/957669779/?label=r_IiCJX3jQMQk8PTyAM&amp;guid=ON&amp;script=0"/></div></noscript>');


}

if(unioncookie==1081832786)
{

<!-- Google Code for Order Complete--&#29609;&#20855;&#22270;&#20070; Conversion Page -->

/* <![CDATA[ */
var google_conversion_id = 1031499376;
var google_conversion_language = "zh_CN";
var google_conversion_format = "2";
var google_conversion_color = "ffffff";
var google_conversion_label = "cb0mCLjUgwIQ8Nzt6wM";
var google_conversion_value = 0;
/* ]]> */

document.write(unescape("%3Cscript src='http://www.googleadservices.com/pagead/conversion.js' type='text/javascript'%3E%3C/script%3E"));
document.write('<noscript><div style="display:inline;"><img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/1031499376/?label=cb0mCLjUgwIQ8Nzt6wM&amp;guid=ON&amp;script=0"/></div></noscript>');


}

if(unioncookie==1065262787)
{

<!-- Google Code for Order Complete--&#26381;&#39280;&#38795;&#24125; Conversion Page -->

/* <![CDATA[ */
var google_conversion_id = 1018869083;
var google_conversion_language = "zh_CN";
var google_conversion_format = "2";
var google_conversion_color = "ffffff";
var google_conversion_label = "MondCP2-qwIQ2-rq5QM";
var google_conversion_value = 0;
/* ]]> */

document.write(unescape("%3Cscript src='http://www.googleadservices.com/pagead/conversion.js' type='text/javascript'%3E%3C/script%3E"));
document.write('<noscript><div style="display:inline;"><img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/1018869083/?label=MondCP2-qwIQ2-rq5QM&amp;guid=ON&amp;script=0"/></div></noscript>');


}

if(unioncookie==1068172788)
{

<!-- Google Code for Order Complete--&#33829;&#20859;&#20445;&#20581; Conversion Page -->

/* <![CDATA[ */
var google_conversion_id = 975546886;
var google_conversion_language = "zh_CN";
var google_conversion_format = "2";
var google_conversion_color = "ffffff";
var google_conversion_label = "kD7QCJrE7gIQhtSW0QM";
var google_conversion_value = 0;
/* ]]> */

document.write(unescape("%3Cscript src='http://www.googleadservices.com/pagead/conversion.js' type='text/javascript'%3E%3C/script%3E"));
document.write('<noscript><div style="display:inline;"><img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/975546886/?label=kD7QCJrE7gIQhtSW0QM&amp;guid=ON&amp;script=0"/></div></noscript>');


}

if(unioncookie==1054562789)
{

<!-- Google Code for Order Complete--&#21150;&#20844;&#29992;&#21697; Conversion Page -->

/* <![CDATA[ */
var google_conversion_id = 960740229;
var google_conversion_language = "zh_CN";
var google_conversion_format = "2";
var google_conversion_color = "ffffff";
var google_conversion_label = "yb35COPjgQMQhfeOygM";
var google_conversion_value = 0;
/* ]]> */

document.write(unescape("%3Cscript src='http://www.googleadservices.com/pagead/conversion.js' type='text/javascript'%3E%3C/script%3E"));
document.write('<noscript><div style="display:inline;"><img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/960740229/?label=yb35COPjgQMQhfeOygM&amp;guid=ON&amp;script=0"/></div></noscript>');

}

if(unioncookie==1023582790)
{

<!-- Google Code for Order Complete Conversion Page -->

/* <![CDATA[ */
var google_conversion_id = 956895171;
var google_conversion_language = "zh_CN";
var google_conversion_format = "2";
var google_conversion_color = "ffffff";
var google_conversion_label = "4PB1CL3XiQMQw5-kyAM";
var google_conversion_value = 0;
/* ]]> */

document.write(unescape("%3Cscript src='http://www.googleadservices.com/pagead/conversion.js' type='text/javascript'%3E%3C/script%3E"));
document.write('<noscript><div style="display:inline;"><img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/956895171/?label=4PB1CL3XiQMQw5-kyAM&amp;guid=ON&amp;script=0"/></div></noscript>');

}

if(unioncookie==1089329376)
{

<!-- Google Code for Order Complete Conversion Page -->

/* <![CDATA[ */
var google_conversion_id = 1012279805;
var google_conversion_language = "zh_CN";
var google_conversion_format = "2";
var google_conversion_color = "ffffff";
var google_conversion_label = "OmlgCJPi6wIQ_dPY4gM";
var google_conversion_value = 0;
/* ]]> */

document.write(unescape("%3Cscript src='http://www.googleadservices.com/pagead/conversion.js' type='text/javascript'%3E%3C/script%3E"));
document.write('<noscript><div style="display:inline;"><img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/1012279805/?label=OmlgCJPi6wIQ_dPY4gM&amp;guid=ON&amp;script=0"/></div></noscript>');

}

if(unioncookie==1047505509){
	/* <![CDATA[ */
	var google_conversion_id = 956895171;
	var google_conversion_language = "zh_CN";
	var google_conversion_format = "2";
	var google_conversion_color = "ffffff";
	var google_conversion_label = "4PB1CL3XiQMQw5-kyAM";
	var google_conversion_value = 0;
	/* ]]> */
	
	document.write(unescape("%3Cscript src='http://www.googleadservices.com/pagead/conversion.js' type='text/javascript'%3E%3C/script%3E"));
	document.write('<noscript><div style="display:inline;"><img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/956895171/?label=4PB1CL3XiQMQw5-kyAM&amp;guid=ON&amp;script=0"/></div></noscript>');
}

</script>

<script type="text/javascript">
try{
var unioncookie=jQuery.cookie("unionKey");
if(unioncookie ==2225501 || unioncookie ==10196111028)
{
var mvHost=(("https:" == document.location.protocol) ? "https://secure." : "http://track.");
document.write(unescape("%3Cscript src='" + mvHost + "mediav.com/mv_1hd.js' type='text/javascript'%3E%3C/script%3E"));
}
}catch(e){}
</script><script type="text/javascript">
    var unioncookie=jQuery.cookie("unionKey");   
     var ucocode=jQuery.cookie("ucocode"); 
     if(!ucocode||ucocode!='pingan'){ 
        if(unioncookie)
        {
         if(unioncookie ==2225501||unioncookie ==10196111028)
         {
               var newPhoneMobile=1;
                         newPhoneMobile=0;  
               var userstatus;
                   var bughttime=-1;
               if(bughttime>0 || newPhoneMobile==1)
               {
                    userstatus="old";//old
               }else
               {
                    userstatus="new";//new
               }
                     _yhd_addCategory("121017HGSNWY", "1", "进口食品、进口牛奶-进口饼干糕点-进口曲奇",  "",10.1);                                                      
                     _yhd_addCategory("121017HGSNWY", "2", "进口食品、进口牛奶-进口饼干糕点-进口曲奇",  "",14.2);                                                      
              _yhd_trackOrder("121017HGSNWY", userstatus, 34.3);
         }
        }
    }
        
</script>    
	  <!--content end-->
	     <!--content end-->
	<div id="footer">
		<div class="bordertop_solid mt20 pb10">
<div class="sitemap2"><ul><li><a rel="nofollow" target="_blank" href="http://www.miibeian.gov.cn/">沪ICP备10215750号</a></li><li class="gray ml5 mr5">|</li><li><a target="_blank" href="http://image.yihaodianimg.com/images/licence.JPG">营业执照</a></li></ul></div><div class="copyright">Copyright © 1号店网上超市 2007-2012， All Rights Reserved</div>		</div>
	</div>
	    <!--js start-->
	    	    <script type="text/javascript" src="./orderPay_files/global_site_bottom.js" charset="utf-8"></script>
	    <!--js end-->
<div>
<a style="color: #FFFFFF">
				17!$
				0%&amp;
				2#@
				10!$
		,
</a> 
<a style="color: #FFFFFF">399431</a>
</div><div class="error_info_show none hide">
<p id="err_popwin">.........</p><p><button onclick="yhdLib.popclose();">确定</button></p>
</div>
<script type="text/javascript">
 var _gaq = _gaq || [];
 _gaq.push(['_setAccount', 'UA-4971657-1']); <!-- 1号店跟踪-->

 _gaq.push(['_trackPageview']);
 _gaq.push(['_trackPageLoadTime']);

(function() {
   var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
   ga.src = ('https:'== document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
   var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
 })();
</script>


</body></html>