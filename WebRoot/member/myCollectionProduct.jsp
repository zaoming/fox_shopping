<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0066)http://my.yihaodian.com/member/myCollection/myCollectionProduct.do -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><script src="./myCollectionProduct_files/info.do"></script><script type="text/javascript" async="" src="./myCollectionProduct_files/ga.js"></script>

	<title>我的91商城-我的收藏夹</title>

<meta name="Keywords" content="我的91商城-我的收藏夹">
<meta name="Description" content="我的91商城-我的收藏夹">


<!--css start-->
<link href="./myCollectionProduct_files/global_site_base.css" rel="stylesheet" type="text/css">



    <link href="./myCollectionProduct_files/usercenter.css" rel="stylesheet" type="text/css">
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

<link rel="stylesheet" type="text/css" href="./myCollectionProduct_files/global_yhdLib.css"><script type="text/javascript" src="./myCollectionProduct_files/global_yhdLib.js"></script><script type="text/javascript" src="./myCollectionProduct_files/global_login_frame.js"></script></head>
<link rel="stylesheet" type="text/css" href="./myCollectionProduct_files/base.css" media="all">
<link rel="stylesheet" type="text/css" href="./myCollectionProduct_files/plist20120412.css" media="all">
<link rel="stylesheet" type="text/css" href="./myCollectionProduct_files/pop_compare.css" media="all">
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
					<li class="fore1 ld" id="loginbar" clstag="homepage|keycount|home2012|01e">${memberName }，欢迎您！<span>
						<a href="" class="link-regist">[退出]</a></span></li>
				</c:if>
			<li class="fore2"><a href="">我的订单</a></li>
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
		<div id="logo" class="ld"><a href=""><b></b><img src="./myCollectionProduct_files/91logo.png" width="259" height="50" alt="91商城"></a></div><!--logo end-->
		<div id="search">
			<div class="i-search ld">
				<b></b><s></s>
				<ul id="123" class="hide"></ul>
				<div class="form">
				<form action="goodsSerch" method="post">
				<input type="text" class="text"  id="key1" name="key"  />
				<input type="submit" value="搜索" class="button" />
				</form>
				</div>
			</div>
			<div id="hotwords"><strong>热门搜索：</strong><a href="" target="_blank" style="color: #CC0000">北京青年</a><a href="" target="_blank">熊猫人之谜</a><a href="'" target="_blank">ThinkPad X1 Carbon</a><a href="" target="_blank">明基投影机</a><a href="" target="_blank">富士通LH532</a><a href="" target="_blank">酷冷散热</a><a href="" target="_blank">佳能打印机</a><a href="" target="_blank">联想Y460</a><a href="" target="_blank">AMD CPU</a><a href="" target="_blank">朗科</a><a href="" target="_blank">D-Link路由</a><a href="" target="_blank">HP原装墨盒</a><a href="" target="_blank">九州风神散热器</a><a href="" target="_blank">联强硬盘</a></div>
		</div><!--search end-->
		<div id="my360buy">
			<dl>
				<dt class="ld"><s></s><img src="./myCollectionProduct_files/blank.gif" width="24" height="24" alt="头像"><a href="http://home.360buy.com/">我的91</a><b></b></dt>
				<dd><div class="loading-style1"><b></b>加载中，请稍候...</div></dd>
			</dl>
		</div><!--my360buy end-->
		<div id="settleup">		
			<dl>
				<dt class="ld">
					<s class="shopping"><span id="shopping-amount">0</span></s>
					<a href="http://jd2008.360buy.com/purchase/ShoppingCart.aspx">去购物车结算</a>
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
<div id="container" class="clearfix">
	<div class="breadcrumb">
		您现在的位置：<a class="aBlu" href="">91商城</a> &gt; <a class="aBlu" href="">我的91商城</a> &gt; 我的收藏夹
	</div>
<div style="display: block; float: left;" id="myYihaodianLeftMenu" class="columnleft">
		<dl>
			<dt>订单查询</dt>
			<dd>&gt;<a href="">我的订单</a></dd>
			<dd class="current">&gt;<a href="./myCollectionProduct_files/myCollectionProduct.htm">我的收藏夹</a></dd>
			<dd>&gt;<a href="">评价商品</a></dd>
		</dl>
		<dl>
			<dt>账户信息</dt>
			<dd>&gt;<a href="">账户查询</a></dd>
		</dl>
		<dl>
			<dt>个人信息管理</dt>
			<dd>&gt;<a href="<%=path %>/member/memberEditInfo?memberID=${memberID }">编辑个人资料</a></dd>
			<dd>&gt;<a href="<%=path %>/member/updatePwd.jsp">修改密码</a></dd>
			<dd>&gt;<a href="<%=path %>/member/updateToPayPwd.jsp">修改支付密码</a></dd>
			<dd>&gt;<a href="">地址簿管理</a></dd>
			<dd>&gt;<a href="">邀请好友</a></dd>
			<dd>&gt;<a href="">一键分享</a></dd>
		</dl>
	<img src="./myCollectionProduct_files/leftfooter.gif">
</div>
	<div class="columnright">
			<ul class="ul_tab mb10">
					<li class="on"><s></s>我的91商城</li>
		    		<li onclick="javascript:window.location.href=&#39;http://my.1mall.com/member/myCollection/myCollectionProduct.do&#39;"><s></s>我的1号商城</li>
		    </ul>
	
	   <div class="tab_tb">
			    <div class="div_search"><input name="" type="text" class="fl ipt" id="search_textfield" size="29" value="请输入您收藏的商品名称"> 
			<button class="y44 fl search_btn" id="search_button">搜 索</button>
		<div class="recpt fl ml10">
          <ul class="w508">
		    <li class="on" refer="0" id="all_coll" tab_v="">全部收藏<cite></cite></li>
			<li refer="1" id="p_coll" tab_v="0"><s></s>商品收藏<cite></cite></li>
			</ul>
		</div>
		 </div>
			<div id="merchantTagDiv">
			</div>
	    	<div id="collectionProductAll"><div class="listtool list_head">
	<input name="" type="checkbox" value="" class="select_all_1"> 全选 
	<button class="w44 deleteFavorite" name="deleteFavorite">删除</button>
</div>
	<p style="margin-left: 17px;line-height:35px;">很抱歉，在全部商品分类下没有找到与“<span id="promptMessage">收藏分类</span>”相关的商品</p>
<div class="listtool">
	<input name="" type="checkbox" value="" class="select_all_2"> 全选 <button class="w44 deleteFavorite" name="deleteFavorite">删除</button>
</div>    
<div class="page">
 <ul class="latestnewpageboxinner">
    
    
    	<li class="latestnewcurrentpage">1</li>
    	
    	
    	
    <li class="latestnewtotalpage">共0页</li>
    <li class="sgotopage">到第<input type="text" class="spageinput" id="jumpto">页<input class="spagesubmit" id="jumptopage" type="button" onclick="javascript:loadCollectionProductAllInfo(jQuery(&#39;#jumpto&#39;).val());" value="确定"></li>
    <input id="pageCountPage" type="hidden" value="0">
    
    </ul>
    <div class="clear"></div>
</div></div>
	    	</div>
	  </div>
</div>
	     <!--content end-->

  
</div> 
<script type="text/javascript">
    if(lazyLoadImageObjArry){ 
    	lazyLoadImageObjArry.push("friendlinkLazyLoad");
    	lazyLoadImageObjArry.push("footerbannerLazyLoad");
    	lazyLoadImageObjArry.push("footerbanner2LazyLoad");
    }
</script>
	
		<div class="bottom_service_link mt clearfix clear">
		  <div class="help_link_list">
					 <dl>
					   <dt>新手入门</dt>
					 			<dd><a target="_blank" href="">购物流程</a></dd>
					 			<dd><a target="_blank" href="">积分说明</a></dd>
					 			<dd><a target="_blank" href="">发票制度</a></dd>
					 			<dd><a target="_blank" href="">服务承诺</a></dd>
					 			<dd><a target="_blank" href="">服务协议</a></dd>
					 			<dd><a target="_blank" href="">手机客户端</a></dd>
					 </dl>
					 <dl>
					   <dt>配送方式</dt>
					 			<dd><a target="_blank" href="">配送范围及时间</a></dd>
					 			<dd><a target="_blank" href="">一日三送服务</a></dd>
					 			<dd><a target="_blank" href="">商品验货与签收</a></dd>
					 </dl>
					 <dl>
					   <dt>支付方式</dt>
					 			<dd><a target="_blank" href="">货到付款</a></dd>
					 			<dd><a target="_blank" href="">网上支付</a></dd>
					 			<dd><a target="_blank" href="">银行转账</a></dd>
					 			<dd><a target="_blank" href="">礼品卡支付</a></dd>
					 			<dd><a target="_blank" href="">抵用券支付</a></dd>
					 </dl>
					 <dl>
					   <dt>售后服务</dt>
					 			<dd><a target="_blank" href="">退换货原则</a></dd>
					 			<dd><a target="_blank" href="">延保服务</a></dd>
					 			<dd><a target="_blank" href="">退换货地址</a></dd>
					 			<dd><a target="_blank" href="">退款说明</a></dd>
					 </dl>
					 <dl>
					   <dt>自助服务</dt>
					 			<dd><a target="_blank" href="">配送进度查询</a></dd>
					 			<dd><a target="_blank" href="">订单查询</a></dd>
					 			<dd><a target="_blank" href="">退换货申请</a></dd>
					 			<dd><a target="_blank" href="">在线投诉</a></dd>
					 			<dd><a target="_blank" href="">补开发票</a></dd>
					 			<dd><a target="_blank" href="">绑定手机\邮箱</a></dd>
					 </dl>
					 <dl>
					   <dt>帮助信息</dt>
					 			<dd><a target="_blank" href="">更多帮助信息</a></dd>
					 			<dd><a target="_blank" href="">常见问题</a></dd>
					 			<dd><a target="_blank" href="">找回密码</a></dd>
					 			<dd><a target="_blank" href="">联系客服</a></dd>
					 			<dd><a target="_blank" href="">手机访问</a></dd>
					 </dl>
		 </div>
	 </div>

		<div class="wrap mt" id="footer">
			   <div class="footer_service">
		          <a href="" target="_blank" onclick="addTrackPositionToCookie(&#39;1&#39;,&#39;YHD_HOME_manbai&#39;);"><span class="s1"></span>满百包邮</a><a href="http://www.yihaodian.com/cms/view.do?topicId=18993" target="_blank" onclick="addTrackPositionToCookie(&#39;1&#39;,&#39;YHD_HOME_zhengpin&#39;);"><span class="s2"></span>正品保障</a><a href="http://www.yihaodian.com/cms/view.do?topicId=18982" target="_blank" onclick="addTrackPositionToCookie(&#39;1&#39;,&#39;YHD_HOME_shouhou&#39;);"><span class="s3"></span>售后无忧</a>
	           </div>
		  
			  	  <p><a href="" target="_blank">关于91商城</a>|<a href="" target="_blank">我们的团队</a>|<a href="" target="_blank">网站联盟</a>|<a href="" target="_blank">友情链接</a>|<a href="" target="_blank">热门搜索</a>|<a href="" target="_blank">诚征英才</a>|<a href="" target="_blank">媒体报道</a>|<a href="" target="_blank">申请成为供应商</a>|<a href="" target="_blank">供应商登录/注册</a></p><p><a target="_blank" href="">沪ICP备10215750号</a>| <a target="_blank" href="">营业执照</a></p><p>Copyright © 91商城网上超市 2007-2012，All Rights Reserved </p>
		  <small id="footerbanner2LazyLoad" class="footer_pic_link"> 
		    
		      <a href="" target="_blank"><img src="./myCollectionProduct_files/blank.gif" original="http://image.yihaodianimg.com/member/global/images/unionpay.gif"></a>
			  <a href="" target="_blank"><img src="./myCollectionProduct_files/blank.gif" original="http://image.yihaodianimg.com/member/global/images/footer_pic_04.gif"></a>
			  <a target="_blank" href=""><img src="./myCollectionProduct_files/blank.gif" original="http://image.yihaodianimg.com/member/global/images/footer_pic_05.gif"></a>
		  	  <span><a href="" target="_blank"><img src="./myCollectionProduct_files/blank.gif" original="http://image.yihaodianimg.com/member/global/images/shgs.gif"></a></span>
		   </small>
		  
		</div>
		    <!--js start-->
 <!--无页面级头部js时, 全局头部js下移-->
	      <script type="text/javascript" src="./myCollectionProduct_files/global_site_top.js" charset="utf-8"></script>
	      <script type="text/javascript" src="./myCollectionProduct_files/collection.js" charset="utf-8"></script>
	    <script type="text/javascript" src="./myCollectionProduct_files/global_site_bottom.js" charset="utf-8"></script>
	    <!--js end-->
<div>
<a style="color: #FFFFFF">
				42!$
				0%&amp;
				2#@
				10!$
		,
</a> 
<a style="color: #FFFFFF">396276</a>
</div><div class="error_info_show none hide">
<p id="err_popwin">.........</p><p><button onclick="yhdLib.popclose();">确定</button></p>
</div>
<script type="text/javascript">
 var _gaq = _gaq || [];
 _gaq.push(['_setAccount', 'UA-4971657-1']); <!-- 91商城跟踪-->

 _gaq.push(['_trackPageview']);
 _gaq.push(['_trackPageLoadTime']);

(function() {
   var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
   ga.src = ('https:'== document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
   var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
 })();
</script>


</body></html>