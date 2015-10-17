<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0041)http://www.360buy.com/product/570129.html -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>【${goodsDetailPo.goodsName }】${goodsDetailPo.goodsIntroduce } 【行情 报价 价格 评测】</title>
    <script type="text/javascript" async="" src="./qq_files/ga.js"></script><script>var jdpts = new Object(); jdpts._st = new Date().getTime();</script>
    
    <meta name="keywords" content="APPLEiPhone 4S,苹果iPhone 4S,苹果iPhone 4S手机报价,APPLEiPhone 4S报价">
    <meta name="description" content="【苹果iPhone 4S】等待明天不如享用今天！支持升级iOS6，更多新体验！订单完成返100京券！ 360BUY91商城(360BUY.COM)提供苹果iPhone 4S正品行货，全国价格最低，并包括APPLEiPhone 4S手机网购指南，以及苹果iPhone 4S图片、iPhone 4S参数、iPhone 4S评论、iPhone 4S心得、iPhone 4S技巧等信息，网购苹果iPhone 4S手机上91,放心又轻松">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="mobile-agent" content="format=xhtml; "> 
    <meta http-equiv="mobile-agent" content="format=html5; ">
    <link rel="stylesheet" type="text/css" href="./qq_files/base.css" media="all">
    <link rel="stylesheet" type="text/css" href="./qq_files/pshow.css" media="all">
    
    <script type="text/javascript">
    	function setAmountReduce(){
    		var count = document.getElementById("buy-num");
			var countvalue = document.getElementById("buy-num").value;
			if(countvalue == 0){
				count.value = 1;
			}else{
				count.value = parseInt(countvalue)-1;
			}
        }
    	function setAmountAdd(){
    		var count = document.getElementById("buy-num");
			var countvalue = document.getElementById("buy-num").value;
			if(countvalue > ${goodsDetailPo.goodsNumber }){
				count.value = 1;
			}else{
				count.value = parseInt(countvalue)+1;
			}
        }
    </script>
 
<body class="root61"><div class="w ld" id="toppanel"><div id="sidepanel" class="hide" style="right: 43.5px; display: block; "><a class="research" target="_blank" href="http://survey.360buy.com/index.php?sid=68129&lang=zh-Hans"><b></b>调查问卷</a><a href="http://www.360buy.com/product/570129.html#" class="gotop" title="使用快捷键T也可返回顶部哦！"><b></b>返回顶部</a></div></div>
    <script type="text/javascript" src="./qq_files/base-v1.js" charset="UTF-8"></script>
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
			<li class="fore2"><a href="<%=path %>/orderQueryAll">我的订单</a></li>
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
			<li class="fore4"><a href="" target="_blank">移动91</a></li>
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
		<div id="logo" class="ld"><a href="<%=path %>/index.jsp"><b></b><img src="./b_files/91logo.png" width="259" height="50" alt="91商城"></a></div><!--logo end-->
		<div id="search">
			<div class="i-search ld">
				<b></b><s></s>
				<ul id="shelper" class="hide"></ul>
				<div class="form">
				<form action="<%=path %>/goods/goodsSerch" method="post">
				<input type="text" class="text"  name="key" id="key1" />
				<input type="submit" value="搜索" class="button" />
				</form>
				</div>
			</div>
			<div id="hotwords"><strong>热门搜索：</strong><a href="" target="_blank" style="color: #CC0000">北京青年</a><a href="" target="_blank">熊猫人之谜</a><a href="'" target="_blank">ThinkPad X1 Carbon</a><a href="" target="_blank">明基投影机</a><a href="" target="_blank">富士通LH532</a><a href="" target="_blank">酷冷散热</a><a href="" target="_blank">佳能打印机</a><a href="" target="_blank">联想Y460</a><a href="" target="_blank">AMD CPU</a><a href="" target="_blank">朗科</a><a href="" target="_blank">D-Link路由</a><a href="" target="_blank">HP原装墨盒</a><a href="" target="_blank">九州风神散热器</a><a href="" target="_blank">联强硬盘</a></div>
		</div><!--search end-->
		<div id="my360buy">
			<dl>
				<dt class="ld"><s></s><img src="./b_files/blank.gif" width="24" height="24" alt="头像"><a href="">我的91</a><b></b></dt>
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
			<div id="categorys">
				<div class="mt ld">
					<h2><a href="">全部商品分类<b></b></a></h2>
				</div>
			</div>
			<div id="treasure"></div>
			<ul id="navitems">
				<li class="fore1" id="nav-home"><a href="">首页</a></li>
				<li class="fore2" id="nav-mall"><a href="">服装城</a></li>
				<li class="fore3" id="nav-minitiao"><a target="_blank" href="">迷你挑</a></li>
				<li class="fore4" id="nav-tuan"><a href="">团购</a></li>
				<li class="fore5" id="nav-auction"><a href="">夺宝岛</a></li>
				<li class="fore6" id="nav-club"><a href="">91社区</a></li>
			</ul>
		</div>
	</div>
</div>
<script type="text/javascript">
(function(){if(pageConfig.navId){var object=document.getElementById("nav-"+pageConfig.navId);if(object)object.className+=" curr";}})();
</script><!-- header end -->

    <div class="w">
        <div class="breadcrumb">
           <strong><a href="">${typeName1 }</a></strong><span>&nbsp;&gt;&nbsp;
           <a href="">${typeName2 }</a>&nbsp;&gt;&nbsp;
           <a href="">${typeName3 }</a>&nbsp;&gt;&nbsp;
           <a href="./qq_files/qq.htm">${goodsDetailPo.goodsName }</a></span>
        </div>
    </div>
    <!--breadcrumb end-->
    <div class="w">
	    <div id="search-result" class="m m2">
		    <div class="mt"></div>
		    <div class="mc">
			    <div class="search-item clearfix">
				    <div class="iloading">正在加载中，请稍候...</div>
			    </div>
		    </div>
	    </div>
    </div><!-- search-result end -->
    
    
    
    <div class="w">
        <div id="product-intro" class="">
            <div id="name">
                <h1>${goodsDetailPo.goodsName } &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${goodsDetailPo.goodsIntroduce }</h1>
            </div>
            <!--name end-->
            <script type="text/javascript">var warestatus = 1; var wareinfo = { pid: "570129", sid: "EEAABCEAC3D38BBAB1F21BBA74761B22", djd: 0};</script>
            
                <div class="clearfix" clstag="shangpin|keycount|product|share">
                <ul id="summary">
                <li id="summary-market">
                 
                     <div class="dt">商品编号：</div>
                     <div class="dd"><span>${goodsDetailPo.goodsID }</span></div>
                 
                </li>
                <li id="summary-price">
                    <div class="dt">9 1 价：</div>
                    <div class="dd">
                        <strong class="p-price">${goodsDetailPo.goodsMemberPrice }</strong> 
                    </div>
                </li>
                <li id="summary-promotion" class="hide" style="display: list-item; ">
                    <div class="dt">促销信息：</div>
                    <div class="dd"><em class="hl_red_bg">赠券</em><em class="hl_red">赠100元京券</em></div>
                </li>
                
                <li id="summary-stock">
                    <div class="dt">库　　存：</div>
                    <div class="dd">                   
                        <div id="store-selector" class="">
                            <div>${goodsDetailPo.goodsNumber }</div><b></b>
                            
                        </div>
                        <!--store-selector end-->
                        <div id="store-prompt"><strong>现货</strong>，下单后立即发货</div>
                        <!--store-prompt end--->
                    </div>
                    <span class="clr"></span>
                </li>
                <li id="summary-service" class="hide" style="display: list-item; "><div class="dt">服　　务：</div><div class="dd">本商品由<a href="">fox商城</a>提供，并负责配送及开具发票</div></li>
                <li id="summary-tips" class="hide">
                    <div class="dt">温馨提示：</div>
                    <div class="dd"></div>
                </li>
                <li id="summary-gifts" class="hide">
                    <div class="dt">赠　　品：</div>
                    <div class="dd"></div>
                </li>
                <li id="summary-promotion-extra" class="none">
					<div class="dt">促销信息：</div>
					<div class="dd"></div>
				</li>
                </ul>
                <!--summary end-->
			    
                <!--brand-bar-->
                <form action="<%=path %>/troAdd" name="addTroForm" method="post">
                <ul id="choose" clstag="shangpin|keycount|product|choose">
                <li id="choose-color"><div class="dt">选择颜色：</div><div class="dd"><div class="item "><b></b><a href="" title="黑色"><img alt="黑色" src="./qq_files/e7022b13-e237-4f5b-97a3-c846a5cde518.jpg" width="50" height="50"></a></div><div class="item selected"><b></b><a href="http://www.360buy.com/product/570129.html#none" title="白色"><img alt="白色" src="./qq_files/3ebc8f60-b924-4d1b-af32-b4ac2f8408cf.jpg" width="50" height="50"></a></div></div></li><li id="choose-version"><div class="dt">选择版本：</div><div class="dd"><div class="item selected"><b></b><a href="http://www.360buy.com/product/570129.html#none" title="16G" style="cursor: pointer; ">16G</a></div><div class="item disabled"><b style="display: none; "></b><i></i><a href="http://www.360buy.com/product/570129.html#none" title="所选颜色该版本商品无货" style="cursor: not-allowed; ">64G</a></div><div class="item "><b></b><a href="http://www.360buy.com/product/570129.html#none" title="16G 北京特价版" style="cursor: pointer; ">16G 北京特价版</a></div><div class="item "><b></b><a href="http://www.360buy.com/product/570129.html#none" title="江苏特价版4680元" style="cursor: pointer; ">江苏特价版4680元</a></div><div class="item "><b></b><a href="http://www.360buy.com/product/570129.html#none" title="上海特价版（直降700元）" style="cursor: pointer; ">上海特价版（直降700元）</a></div></div></li>
                <li id="choose-amount">
                    <div class="dt">购买数量：</div>
                    <div class="dd">
                        <div class="wrap-input">
                            <a href="javascript:;" class="btn-reduce" onclick="setAmountReduce()"><img src="./qq_files/jian.png"/></a>
							
							<input value="1" size="1" id="buy-num" name="GoodsCoun" type="text" style="font-size:12px;height:15px;line-height:20px;" />
							<input type="hidden" name="goodsName" value="${goodsDetailPo.goodsName }"/>
							<input type="hidden" name="goodsid" value="${goodsDetailPo.goodsID }"/>
							<input type="hidden" name="goodsPrice" value="${goodsDetailPo.goodsMemberPrice }"/>
							<a href="javascript:;" class="btn-add" onclick="setAmountAdd()"><img src="./qq_files/jia.png"/></a>
                        </div>
                    </div>
                </li>
				<li id="choose-result" style="display: list-item; ">
					<div class="dt"></div>
					<div class="dd"><em>已选择</em><strong>“白色”</strong>，<strong>“16G”</strong></div>
				</li>
                <li id="choose-btns">
                    <div id="choose-btn-append" class="btn">
                        <a href="javascript:document.addTroForm.submit();"><img src="./qq_files/addcart.png"/></a><!-- 加入购物车 -->
                    </div>
                    <div id="choose-btn-easybuy" class="btn" style="display: block; ">
                    	
                    </div>
                   <div id="choose-btn-divide" class="btn" style="display: block; "></div>
                    <div id="choose-btn-coll" class="btn">
                        <a href=""><img src="./qq_files/addguanzhu.png"/></a>
                    </div>
                    <div id="Fqfk_Tip" class="Tip360" style="display:none;"></div>
                </li>
                <script type="text/javascript"> var ColorSize = [{"SkuId":570127,"Color":"\u9ED1\u8272","Size":"16G"},{"SkuId":570137,"Color":"\u9ED1\u8272","Size":"64G"},{"SkuId":735058,"Color":"\u9ED1\u8272","Size":"16G \u5317\u4EAC\u7279\u4EF7\u7248"},{"SkuId":577497,"Color":"\u9ED1\u8272","Size":"\u6C5F\u82CF\u7279\u4EF7\u72484680\u5143"},{"SkuId":640467,"Color":"\u9ED1\u8272","Size":"\u4E0A\u6D77\u7279\u4EF7\u7248\uFF08\u76F4\u964D700\u5143\uFF09"},{"SkuId":570129,"Color":"\u767D\u8272","Size":"16G"},{"SkuId":570139,"Color":"\u767D\u8272","Size":"64G "},{"SkuId":735056,"Color":"\u767D\u8272","Size":"16G \u5317\u4EAC\u7279\u4EF7\u7248"},{"SkuId":593519,"Color":"\u767D\u8272","Size":"\u6C5F\u82CF\u7279\u4EF7\u72484680\u5143"},{"SkuId":598532,"Color":"\u767D\u8272","Size":"\u4E0A\u6D77\u7279\u4EF7\u7248\uFF08\u76F4\u964D700\u5143\uFF09"}];</script>
                </ul>
                </form>
                <!--choose end-->
                <span class="clr"></span>
            </div>
            
            <div id="preview">
                <div id="spec-n1" class="jqzoom" onclick="window.open(&#39;${goodsDetailPo.goodsPicture1 })" clstag="shangpin|keycount|product|spec-n1">                    
                    <img data-img="1" width="350" height="350" src="${goodsDetailPo.goodsPicture1 }" alt="" jqimg="${goodsDetailPo.goodsPicture1 }">
                </div>
           		
			        <div id="view-360" class="view-sup"><a target="_blank" href="">360度</a></div>
			    
                <div id="spec-list" >
				    <a href="javascript:;" class="spec-control disabled" id="spec-forward"></a>
				    <a href="javascript:;" class="spec-control" id="spec-backward"></a>
                    <div class="spec-items" style="position: absolute; width: 310px; height: 54px; overflow: hidden; ">
                        <ul class="lh" style="position: absolute; left: 0px; top: 0px; width: 868px; ">
                        
                            <li>
                                <img data-img="1" src="${goodsDetailPo.goodsPicture1 }" width="50" height="50" alt="苹果（APPLE）iPhone 4S 16G版 3G手机（白色）WCDMA/GSM" data-url="${goodsDetailPo.goodsPicture1 }" class="img-hover"></li>
                        
                            <li>
                                <img data-img="1" src="${goodsDetailPo.goodsPicture1 }" width="50" height="50" alt="苹果（APPLE）iPhone 4S 16G版 3G手机（白色）WCDMA/GSM" data-url="${goodsDetailPo.goodsPicture1 }" class=""></li>
                        
                            <li>
                                <img data-img="1" src="${goodsDetailPo.goodsPicture1 }" width="50" height="50" alt="苹果（APPLE）iPhone 4S 16G版 3G手机（白色）WCDMA/GSM" data-url="${goodsDetailPo.goodsPicture1 }" class=""></li>
                        
                            <li>
                                <img data-img="1" src="${goodsDetailPo.goodsPicture1 }" width="50" height="50" alt="苹果（APPLE）iPhone 4S 16G版 3G手机（白色）WCDMA/GSM" data-url="${goodsDetailPo.goodsPicture1 }" class=""></li>
                        
                            <li>
                                <img data-img="1" src="${goodsDetailPo.goodsPicture1 }" width="50" height="50" alt="苹果（APPLE）iPhone 4S 16G版 3G手机（白色）WCDMA/GSM" data-url="${goodsDetailPo.goodsPicture1 }" class=""></li>
                        
                            <li>
                                <img data-img="1" src="${goodsDetailPo.goodsPicture1 }" width="50" height="50" alt="苹果（APPLE）iPhone 4S 16G版 3G手机（白色）WCDMA/GSM" data-url="${goodsDetailPo.goodsPicture1 }" class=""></li>
                        
                            <li>
                                <img data-img="1" src="${goodsDetailPo.goodsPicture1 }" width="50" height="50" alt="苹果（APPLE）iPhone 4S 16G版 3G手机（白色）WCDMA/GSM" data-url="${goodsDetailPo.goodsPicture1 }" class=""></li>
                        
                            <li>
                                <img data-img="1" src="${goodsDetailPo.goodsPicture1 }" width="50" height="50" alt="苹果（APPLE）iPhone 4S 16G版 3G手机（白色）WCDMA/GSM" data-url="${goodsDetailPo.goodsPicture1 }" class=""></li>
                        
                            <li>
                                <img data-img="1" src="${goodsDetailPo.goodsPicture1 }" width="50" height="50" alt="苹果（APPLE）iPhone 4S 16G版 3G手机（白色）WCDMA/GSM" data-url="${goodsDetailPo.goodsPicture1 }" class=""></li>
                        
                            <li>
                                <img data-img="1" src="${goodsDetailPo.goodsPicture1 }" width="50" height="50" alt="苹果（APPLE）iPhone 4S 16G版 3G手机（白色）WCDMA/GSM" data-url="${goodsDetailPo.goodsPicture1 }" class=""></li>
                        
                            <li>
                                <img data-img="1" src="${goodsDetailPo.goodsPicture1 }" width="50" height="50" alt="苹果（APPLE）iPhone 4S 16G版 3G手机（白色）WCDMA/GSM" data-url="${goodsDetailPo.goodsPicture1 }" class=""></li>
                        
                            <li>
                                <img data-img="1" src="${goodsDetailPo.goodsPicture1 }" width="50" height="50" alt="苹果（APPLE）iPhone 4S 16G版 3G手机（白色）WCDMA/GSM" data-url="${goodsDetailPo.goodsPicture1 }" class=""></li>
                        
                            <li>
                                <img data-img="1" src="${goodsDetailPo.goodsPicture1 }" width="50" height="50" alt="苹果（APPLE）iPhone 4S 16G版 3G手机（白色）WCDMA/GSM" data-url="${goodsDetailPo.goodsPicture1 }" class=""></li>
                        
                            <li>
                                <img data-img="1" src="${goodsDetailPo.goodsPicture1 }" width="50" height="50" alt="苹果（APPLE）iPhone 4S 16G版 3G手机（白色）WCDMA/GSM" data-url="${goodsDetailPo.goodsPicture1 }" class=""></li>
                        
                        </ul>
                    </div>
                </div>
               <div id="short-share">
				
            </div>
            <!--preview end-->
        </div>
        <!--product-intro end-->
    </div>
    <div class="w">
        <div class="right">
            <div id="favorable-suit" class="m m2 hide">
              <div class="mt"><h2>优惠套装</h2></div>
                <div class="mc"><div class="iloading">正在加载中，请稍候...</div></div>
            </div>
            <div id="recommend" class="m m1" data-widget="tabs" style="display: block; ">
            
            </div><!--recommend end-->
            <div id="product-detail" class="m m1" data-widget="tabs" clstag="shangpin|keycount|product|detail">
                <div class="float-nav-wrap" style="height: 31px; "><div class="mt" style="height: 31px; width: 989px; ">
                    <ul class="tab">
                        <li clstag="shangpin|keycount|product|pinfotab" data-widget="tab-item" class="curr"><a href="javascript:;">商品介绍</a></li>
					    <li clstag="shangpin|keycount|product|pcanshutab" data-widget="tab-item"><a href="javascript:;">规格参数</a></li>
					    <li clstag="shangpin|keycount|product|packlisttab" data-widget="tab-item"><a href="javascript:;">包装清单</a></li>
					    <li clstag="shangpin|keycount|product|pingjiatab" data-widget="tab-item"><a href="javascript:;">商品评价</a></li>
					    <li clstag="shangpin|keycount|product|psaleservice" data-widget="tab-item"><a href="javascript:;">售后保障</a></li>
                        <li data-widget="tab-item"><a href="javascript:;">购买须知</a></li><!--知识库标签-->
                    </ul>

                </div></div>
                <div class="mc" data-widget="tab-content" id="product-detail-1">
                    <ul class="detail-list">
                    <li title="苹果（APPLE）iPhone 4S 16G版 3G手机（白色）WCDMA/GSM">${goodsDetailPo.goodsName }</li>
                    <li>商品编号：${goodsDetailPo.goodsID }</li>
                    <li>
                              
                    </li>
                    <li>上架时间：${goodsDetailPo.createDate }</li>
                    <li>商品毛重：400g</li>
                    <li>商品产地：中国大陆</li>
                    <li>网络：${typeName3 }</li><li>外观：直板</li><li>操控：电容屏触屏</li><li>系统：IOS、iOS</li><li>特点：3G视频通话、高像素手机、商务手机、女性手机、购机送话费、双核、wifi/wapi、高像素手机、导航手机、商务手机、女性手机</li><li>屏幕尺寸：3.5-3.9英寸</li>
                    </ul>
                    <div class="detail-correction">
                        <b></b>如果您发现商品信息不准确，<a target="_blank" href="http://club.360buy.com/jdvote/skucheck.aspx?skuid=570129&cid1=652&cid2=653&cid3=655">欢迎纠错</a>；
                        如果您发现有比91价格更低的，<a target="_blank" href="http://myjd.360buy.com/pricetip/report/priceReport.action?id=570129">欢迎举报</a>
                    </div>
                    <div class="detail-content">
                        <font style="font-size: 14px;font-weight: bold;color: #FF0000;"><table border="0" width="750" align="center">  <tbody><tr>    <td><a href="http://sale.360buy.com/act/X6fGVy5KCujxDs.html"><img alt="" align="middle" src="./qq_files/rBEHZlBO7g0IAAAAAAGA2R4MPWYAABIcAD17mYAAYDx948.jpg" class="err-product"></a></td>  </tr></tbody></table></font><br>
                        		<br><table align="center" border="0" cellpadding="0" cellspacing="0" width="750"><tbody><tr><td width="335"><img alt="" border="0" height="406" width="375" src="./qq_files/xA7kWF2qEHJkw0vf.jpg" class="err-product"></td><td width="415"><div style="PADDING-BOTTOM: 15px; LINE-HEIGHT: 1.5em; PADDING-LEFT: 7px; PADDING-RIGHT: 15px; FONT-FAMILY: &#39;微软雅黑&#39;; FONT-SIZE: 14px; PADDING-TOP: 15px"><img alt="" border="0" height="38" width="200" src="./qq_files/JwWh1ewjsZ9HULeR.jpg" class="err-product"></div><div style="PADDING-BOTTOM: 15px; LINE-HEIGHT: 1.5em; PADDING-LEFT: 7px; PADDING-RIGHT: 15px; FONT-FAMILY: &#39;微软雅黑&#39;; FONT-SIZE: 14px; PADDING-TOP: 15px">双核 A5 芯片，全新 800 万像素摄像头和光学技术，iOS 5 和 iCloud。出色的 iPhone，如今更出色。<br></div></td></tr></tbody></table><br><table align="center" border="0" cellpadding="0" cellspacing="0" width="750"><tbody><tr><td width="63"><span style="font-family:&#39;微软雅黑&#39;;font-size:16px;color:#000000;PADDING-BOTTOM: 7px; PADDING-LEFT: 7px; PADDING-RIGHT: 7px; FONT-WEIGHT: bold; PADDING-TOP: 7px"><img alt="" border="0" height="64" width="62" src="./qq_files/3CZNaK1GR3BO94zk.jpg" class="err-product"></span></td><td width="687"><div style="PADDING-BOTTOM: 7px; PADDING-LEFT: 7px; PADDING-RIGHT: 7px; FONT-FAMILY: &#39;微软雅黑&#39;; COLOR: #000; FONT-SIZE: 16px; FONT-WEIGHT: bold; PADDING-TOP: 7px">双核 A5 芯片，迄今最强劲的 iPhone 处理器。</div></td></tr></tbody></table><table align="center" border="0" cellpadding="0" cellspacing="0" width="750"><tbody><tr><td><div style="PADDING-BOTTOM: 15px; LINE-HEIGHT: 1.5em; PADDING-LEFT: 7px; PADDING-RIGHT: 15px; FONT-FAMILY: &#39;微软雅黑&#39;; FONT-SIZE: 14px; PADDING-TOP: 15px">双核，让 A5 芯片双倍强大，图形处理快达 7 倍1。你会感觉到它所带来的效果 — 飞快。iPhone 4S 快速，反应灵敏，当你启动应用软件、浏览网页，以及做各种操作时，就会体验到它所成就的与众不同。而且无论你正在做什么，都可以持续进行。A5 芯片具有极高的效能，赋予 iPhone 4S 超长的电池使用时间。</div><div align="center"><img alt="" border="0" height="328" width="743" src="./qq_files/tAFGECpfU4sYiR8c.jpg" class="err-product"></div></td></tr><tr><td align="center"><div style="PADDING-BOTTOM: 15px; LINE-HEIGHT: 1.5em; PADDING-LEFT: 7px; PADDING-RIGHT: 15px; FONT-FAMILY: &#39;微软雅黑&#39;; FONT-SIZE: 14px; PADDING-TOP: 15px"><div align="left">iPhone 4S 是游戏玩家的绝佳选择。A5 芯片让图形处理比以往快达 7 倍，游戏更流畅，更逼真。图形密集型应用软件表现更出色。</div></div></td></tr></tbody></table><p>&nbsp;</p>
                        <tbody>    <tr>      <td><img alt="" data-lazyload="http://img30.360buyimg.com/jgsq-productsoa/g5/M00/00/0F/rBEIDE-8Uz4IAAAAAABbO1mr-hgAAAGQAHOy8kAAFtT165.jpg" src="./qq_files/blank.gif" class="err-product"></td>    </tr>  </tbody></table><table border="0" width="750" align="center">  <tbody>    <tr>      <td colspan="3"><strong></strong>          <hr id="null2" color="#a52a2a"></td>    </tr>    <tr>      <td rowspan="7" width="288"><p align="center"> <strong><img alt="" data-lazyload="http://img30.360buyimg.com/erpWareDetail/aBgrnRitFQitEQhN.jpg" border="0" height="150" width="155" src="./qq_files/blank.gif" class="err-product"></strong> </p></td>      <td height="80" width="617"><p align="left"> <strong></strong>&nbsp; </p>          <p align="left"> <strong><span style="color:#000000;"><span class="STYLE3"><span style="font-size:32px;color:#a52a2a;">购 物 指 南</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:18px;">为您节约时间 更加方便快捷</span></span></strong> </p></td>      <td rowspan="7" width="1"><span style="color:#000000;">&nbsp;</span></td>    </tr>    <tr>      <td><span style="font-family:&#39;微软雅黑&#39;;color:#000000;FONT-SIZE: 14px">1、如您在购物过程中遇到配送、支付、售后、购买等问题，请您参照</span></td>    </tr>    <tr>      <td><span class="STYLE7"><a href="http://help.360buy.com/">http://help.360buy.com/</a><span style="color:#000000;">或发送邮件至<a href="mailto:service@360buy.com">service@360buy.com</a> ，我司客服会为您妥</span></span><span style="font-family:&#39;微软雅黑&#39;;color:#000000;FONT-SIZE: 14px">善处理；</span></td>    </tr>    <tr>      <td height="21"><span style="font-family:&#39;微软雅黑&#39;;color:#000000;FONT-SIZE: 14px">2、手机产品常见问答，请您</span><span class="STYLE7"><a href="http://bbs.360buy.com/thread-2894-1-1.html"><span style="color:#a52a2a;">点击进入</span></a><span style="color:#000000;">；</span></span></td>    </tr>    <tr>      <td height="21"><span style="font-family:&#39;微软雅黑&#39;;color:#000000;FONT-SIZE: 15px">3、使用技巧欢迎您来</span><span class="STYLE7"><a href="http://bbs.360buy.com/showforum-3.aspx"><span style="color:#a52a2a;">91手机论坛</span></a><span style="color:#000000;">与网友讨论交流或咨询论坛版主；</span></span></td>    </tr>    <tr>      <td height="9">&nbsp;</td>    </tr>    <tr>      <td height="21">&nbsp;</td>    </tr>    <tr>      <td colspan="3"><hr id="null2" color="#a52a2a"></td>    </tr>  </tbody></table><table border="0" width="750" align="center">  <tbody>    <tr>      <td><img alt="" data-lazyload="http://img30.360buyimg.com/erpWareDetail/tpXRUJ99eXvo1CVX.jpg" border="0" height="141" width="752" src="./qq_files/blank.gif" class="err-product"></td>    </tr>    <tr>      <td><div style="PADDING-BOTTOM: 1px; LINE-HEIGHT: 1.5em; PADDING-LEFT: 7px; PADDING-RIGHT: 15px; FONT-FAMILY: &#39;微软雅黑&#39;; COLOR: #000000; FONT-SIZE: 14px; PADDING-TOP: 1px"> 为确保您收到的产品是全新未拆封的正品行货，91商城推出质保转印章服务，质保章由原来的91盖章转变为使用转印章加盖质保章，转印章操作流程：将质保章撕下，贴于质保卡右下角（购机商店盖章）处，使劲挤压后，将表层膜撕下即可；<br>      </div></td>    </tr>  </tbody></table></strong></font>
                    </div>
                </div>
                <div class="mc hide" data-widget="tab-content" id="product-detail-2">
                    <table cellpadding="0" cellspacing="1" width="100%" border="0" class="Ptable"><tbody><tr><th class="tdTitle" colspan="2">主体</th></tr><tr></tr><tr><td class="tdTitle">品牌</td><td>${goodsDetailPo.goodsName }</td></tr><tr><td class="tdTitle">型号</td><td>${goodsDetailPo.goodsName }</td></tr><tr><td class="tdTitle">颜色</td><td>白色</td></tr><tr><td class="tdTitle">上市时间</td><td>${goodsDetailPo.createDate }</td></tr><tr><td class="tdTitle">外观设计</td><td>直板</td></tr><tr><td class="tdTitle">3G视频通话</td><td>不支持</td></tr><tr><td class="tdTitle">操作系统</td><td>ios5</td></tr><tr><td class="tdTitle">智能机</td><td>是</td></tr><tr><td class="tdTitle">键盘类型</td><td>虚拟QWERTY键盘</td></tr><tr><td class="tdTitle">输入方式</td><td>触控</td></tr><tr><th class="tdTitle" colspan="2">网络</th></tr><tr></tr><tr><td class="tdTitle">网络制式</td><td>WCDMA/GSM</td></tr><tr><td class="tdTitle">网络频率</td><td>UMTS/HSDPA/HSUPA (850, 900, 1900, 2100 MHz) GSM/EDGE (850, 900, 1800, 1900 MHz)</td></tr><tr><td class="tdTitle">数据业务</td><td>802.11b/g/n WLAN 网络(仅适用于 802.11n 2.4GHz) 
<br>Bluetooth 4.0 无线技术</td></tr><tr><td class="tdTitle">浏览器</td><td>safari</td></tr><tr><th class="tdTitle" colspan="2">存储</th></tr><tr></tr><tr><td class="tdTitle">机身内存</td><td>16GB</td></tr><tr><td class="tdTitle">储存卡类型</td><td>不支持</td></tr><tr><th class="tdTitle" colspan="2">显示</th></tr><tr></tr><tr><td class="tdTitle">屏幕尺寸</td><td>3.5 英寸</td></tr><tr><td class="tdTitle">屏幕色彩</td><td>Retina 显示屏</td></tr><tr><td class="tdTitle">屏幕材质</td><td>IPS</td></tr><tr><td class="tdTitle">分辨率</td><td>960x640 像素分辨率，每英寸 326 像素</td></tr><tr><td class="tdTitle">触摸屏</td><td>电容屏</td></tr><tr><td class="tdTitle">重力感应</td><td>支持</td></tr><tr><td class="tdTitle">光线传感器</td><td>支持</td></tr><tr><td class="tdTitle">距离感应</td><td>支持</td></tr><tr><td class="tdTitle">3D加速</td><td>支持</td></tr><tr><th class="tdTitle" colspan="2">娱乐功能</th></tr><tr></tr><tr><td class="tdTitle">音乐播放</td><td>AAC (8 至 320 Kbps)、Protected AAC (来自 iTunes Store)、HE-AAC、MP3 (8 至 320 Kbps)、MP3 VBR、Audible (格式 2、3、4，Audible Enhanced Audio、AAX 与 AAX+)、Apple Lossless、AIFF 与 WAV </td></tr><tr><td class="tdTitle">视频播放</td><td>H.264 视频最高可达 1080p，每秒 30 帧，High Profile level 4.1，采用 AAC-LC 声音格式，最高 160 Kbps，48kHz, 立体声为 .m4v, .mp4 与 .mov 文件格式；MPEG-4 视频最高可达 2.5 Mbps，640 x 480，每秒 30 帧，Simple Profile 采用 AAC-LC 声音格式，每声道最高 160 Kbps，48 KHz，立体声为 .m4v、.mp4 与 .mov 文件格式；Motion JPEG (M-JPEG) 最高可达 35 Mbps，1280 x 720，每秒 30 帧，音频为 ulaw 格式，PCM 立体声为 .avi 文件格式 </td></tr><tr><td class="tdTitle">JAVA</td><td>不支持</td></tr><tr><td class="tdTitle">电子书</td><td>支持</td></tr><tr><td class="tdTitle">收音机</td><td>不支持</td></tr><tr><td class="tdTitle">电视播放</td><td>不支持</td></tr><tr><td class="tdTitle">彩信功能</td><td>支持</td></tr><tr><td class="tdTitle">铃音类型</td><td>MP3铃声</td></tr><tr><th class="tdTitle" colspan="2">摄像功能</th></tr><tr></tr><tr><td class="tdTitle">摄像头</td><td>800W</td></tr><tr><td class="tdTitle">副摄像头</td><td>30W</td></tr><tr><td class="tdTitle">传感器类型</td><td>CMOS</td></tr><tr><td class="tdTitle">闪光灯</td><td>支持</td></tr><tr><td class="tdTitle">视频拍摄</td><td>支持</td></tr><tr><td class="tdTitle">连拍功能</td><td>支持</td></tr><tr><td class="tdTitle">变焦模式</td><td>数码变焦</td></tr><tr><td class="tdTitle">自动对焦</td><td>支持</td></tr><tr><td class="tdTitle">拍摄模式</td><td>支持</td></tr><tr><td class="tdTitle">拍摄场景</td><td>支持</td></tr><tr><td class="tdTitle">其他性能</td><td>三轴陀螺仪 
<br>加速感应器 
<br>距离感应器 
<br>环境光传感器</td></tr><tr><th class="tdTitle" colspan="2">传输功能</th></tr><tr></tr><tr><td class="tdTitle">GPS模块（硬件）</td><td>自带谷歌地图</td></tr><tr><td class="tdTitle">Wi-Fi</td><td>支持</td></tr><tr><td class="tdTitle">蓝牙</td><td>支持</td></tr><tr><td class="tdTitle">Modem</td><td>支持</td></tr><tr><th class="tdTitle" colspan="2">个人助理</th></tr><tr></tr><tr><td class="tdTitle">Office</td><td>.jpg、.tiff、.gif (图像)；.doc 和 .docx (Microsoft Word)； .htm 和 .html (网页)；.key (Keynote)；.numbers (Numbers)；.pages (Pages)；.pdf (Preview 和 Adobe Acrobat)；.ppt 和 .pptx (Microsoft PowerPoint)；.txt (文本)；.rtf (多信息文本格式)；.vcf (联系人信息)；.xls 和 .xlsx (Microsoft Excel)</td></tr><tr><td class="tdTitle">电子邮件</td><td>支持</td></tr><tr><td class="tdTitle">计算器</td><td>支持</td></tr><tr><td class="tdTitle">闹钟</td><td>支持</td></tr><tr><td class="tdTitle">录音</td><td>支持</td></tr><tr><td class="tdTitle">通话录音</td><td>不支持</td></tr><tr><td class="tdTitle">其它</td><td>语言支持
<br>英语(美国)、英语(英国)、简体中文、繁体中文、法语、德语、意大利语、日语、韩语、西班牙语、阿拉伯语、加泰罗尼亚语、克罗地亚语、捷克语、丹麦语、荷兰语、芬兰语、希腊语、希伯来语、匈牙利语、印尼语、马来语、挪威语、波兰语、葡萄牙语、葡萄牙语(巴西)、罗马尼亚语、俄语、斯洛伐克语、瑞典语、泰语、土耳其语、乌克兰语、越南语
<br>键盘支持
<br>英语(美国)、英语(英国)、简体中文(手写、拼音、笔画)、繁体中文(手写、拼音、注音、仓颉、笔画)、法语、法语(加拿大)、法语(瑞士)、德语(德国)、德语(瑞士)、意大利语、日语(罗马字、假名)、韩语、西班牙语、阿拉伯语、保加利亚语、加泰罗尼亚语、切罗基语、克罗地亚语、捷克语、丹麦语、荷兰语、表情符号、爱沙尼亚语、芬兰语、佛兰芒语、希腊语、夏威夷语、希伯来语、印地语、匈牙利语、冰岛语、印尼语、拉脱维亚语、立陶宛语、马其顿语、马来语、挪威语、波兰语、葡萄牙语、葡萄牙语(巴西)、罗马尼亚语、俄语、塞尔维亚语(西里尔字母/拉丁字母)、斯洛伐克语、瑞典语、泰语、藏语、土耳其语、乌克兰语、越南语
<br>词典支持(支持预测文本和自动更正)
<br>英语(美国)、英语(英国)、简体中文、繁体中文、法语、法语(加拿大)、法语(瑞士)、德语、意大利语、日语(罗马字、假名)、韩语、西班牙语、阿拉伯语、加泰罗尼亚语、切罗基语、克罗地亚语、捷克语、丹麦语、荷兰语、爱沙尼亚语、芬兰语、佛兰芒语、希腊语、夏威夷语、希伯来语、印地语、匈牙利语、印尼语、拉脱维亚语、立陶宛语、马来语、挪威语、波兰语、葡萄牙语、葡萄牙语(巴西)、罗马尼亚语、俄语、斯洛伐克语、瑞典语、泰语、土耳其语、乌克兰语、越南语</td></tr><tr><th class="tdTitle" colspan="2">其他</th></tr><tr></tr><tr><td class="tdTitle">SIM卡尺寸</td><td>小卡</td></tr><tr><td class="tdTitle">电池类型</td><td>内置电池</td></tr><tr><td class="tdTitle">理论通话时间</td><td>使用 3G 网络时长达 7 小时 /使用 2G 网络时长达 14 小时</td></tr><tr><td class="tdTitle">理论待机时间</td><td>长达 300 小时</td></tr><tr><td class="tdTitle">数据线</td><td>iPhone专用</td></tr><tr><td class="tdTitle">耳机</td><td>带遥控功能和麦克风的 Apple 耳机</td></tr><tr><td class="tdTitle">机身尺寸</td><td>高度： 115.2 毫米 (4.5 英寸) 
<br>宽度： 58.6 毫米 (2.31 英寸) 
<br>厚度： 9.3 毫米 (0.37 英寸)</td></tr><tr><td class="tdTitle">机身重量</td><td>重量： 137 克 (4.8 盎司)</td></tr></tbody></table>                   
                </div>
                <div class="mc hide" data-widget="tab-content" id="product-detail-3">
                    <div class="item-detail">iPhone 4s × 1<br> 带遥控功能和麦克风的 Apple 耳机 × 1<br> Dock Connector to USB 线缆 × 1<br> USB 电源转换器 × 1<br> 包装、说明书 × 1<br> <img height="224" border="0" width="753" src="./qq_files/0ZajMuFT4JTjudCy.gif"></div>
                </div>
                <div class="mc hide" data-widget="tab-content" id="product-detail-4">
                </div>
                <div class="mc hide" data-widget="tab-content" id="product-detail-5">
                    <div class="item-detail">本产品全国联保，享受三包服务，质保期为：一年质保<br>如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！<br>售后服务电话：4006-272-273<br>品牌官方网站：<a target="_blank" href="http://www.apple.com.cn/">http://www.apple.com.cn/</a><br></div>
                </div>
                <div id="product-detail-6" data-widget="tab-content" class="mc hide"><div class="item-detail"><ul class="tab-sub"><li class="fore curr">购买需知</li></ul><ul class="tabcon-sub "><li>·<span>[购买需知]</span><a href="http://www.360buy.com/knowledge/130-833.html" target="_blank">联通购买须知</a></li></ul></div></div><!--知识库二级标签、标题-->
                <div id="promises">
					<strong>服务承诺：</strong><br>
					91商城向您保证所售商品均为正品行货，自带机打发票，与商品一起寄送。凭质保证书及91商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由91联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。91商城还为您提供具有竞争力的商品价格和<a href="http://www.360buy.com/help/kdexpress.aspx" target="_blank">运费政策</a>，请您放心购买！
					<br><br>
					注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！ 
				</div>
				<div id="state"><strong>权利声明：</strong><br>91商城上的所有商品信息、客户评价、商品咨询、网友讨论等内容，是91商城重要的经营资源，未经许可，禁止非法转载使用。</div>
			</div>
            <!--product-detail end-->
            <div id="comment" class="m m2">
                <div class="mt">
                    <h2>商品评价</h2>
                </div>
                <div class="mc">
                    <div class="iloading">正在加载中，请稍候...</div>
                </div>
            </div>
            <!--comment end-->
          

            <!--related-viewed end-->
        </div>
        <!--right end-->
        <div class="left">
            <div id="related-sorts" class="m m2" clstag="shangpin|keycount|product|sortlist">
                <div class="mt">
                    <h2>相关分类</h2>
                </div>
                <div class="mc">
                    <ul class="lh">
                    
                        <li><a title="手机" href="">手机</a></li>
                    
                        <li><a title="对讲机" href="">对讲机</a></li>
                     
                    </ul>
                </div>
            </div>
            <!--related-sorts end-->
            <div id="related-brands" class="m m2" clstag="shangpin|keycount|product|samebrand">
                <div class="mt">
                    <h2>同类其他品牌</h2>
                </div>
                <div class="mc">
                    <ul class="lh">
                     
                        <li><a title="诺基亚" href="">诺基亚</a></li>
                     
                        <li><a title="三星" href="">三星</a></li>
                     
                        <li><a title="联想" href="">联想</a></li>
                     
                        <li><a title="夏新" href="">夏新</a></li>
                     
                        <li><a title="华为" href="">华为</a></li>
                     
                        <li><a title="摩托罗拉" href="">摩托罗拉</a></li>
                     
                        <li><a title="HTC" href="">HTC</a></li>
                     
                        <li><a title="中兴" href="">中兴</a></li>
                     
                        <li><a title="创维" href="">创维</a></li>
                     
                        <li><a title="阿尔卡特" href="">阿尔卡特</a></li>
                     
                        <li><a title="苹果" href="">苹果</a></li>
                     
                        <li><a title="青橙" href="">青橙</a></li>
                     
                        <li><a title="飞利浦" href="">飞利浦</a></li>
                     
                        <li><a title="魅族" href="">魅族</a></li>
                     
                        <li><a title="金立" href="">金立</a></li>
                     
                        <li><a title="纽曼" href="">纽曼</a></li>
                     
                        <li><a title="首信" href="">首信</a></li>
                     
                        <li><a title="天语" href="">天语</a></li>
                     
                        <li><a title="中国联通" href="">中国联通</a></li>
                     
                        <li><a title="UMO/优摩" href="">UMO/优摩</a></li>
                      
                    </ul>
                </div>
            </div>
            <!--related-brands end-->
            
            <div id="view-buy" class="m m2 related-buy hide" style="display: block; ">
                <div class="mt">
                    <h2>浏览了该商品的用户最终购买了</h2>
                </div>
                <div class="mc">
                    <ul><li class="fore1" onclick="reClick(&#39;CR1&#39;,570129,&#39;570129#4299&#39;,0);"><div class="p-img">        <a target="_blank" title="苹果（APPLE）iPhone 4S 16G版 3G手机（白色）WCDMA/GSM" href="./qq_files/qq.htm"><img height="100" width="100" alt="苹果（APPLE）iPhone 4S 16G版 3G手机（白色）WCDMA/GSM" src="./qq_files/3ebc8f60-b924-4d1b-af32-b4ac2f8408cf(3).jpg"></a>    </div>    <div class="p-name">        <strong>35%会买：</strong>        <a target="_blank" title="苹果（APPLE）iPhone 4S 16G版 3G手机（白色）WCDMA/GSM" href="./qq_files/qq.htm">苹果（APPLE）iPhone 4S 16G版 3G手机（白色）WCDMA/GSM</a>    </div>    <div class="p-price">        <strong>            <img src="./qq_files/gp570129,1.png" onerror="this.src=&#39;http://misc.360buyimg.com/lib/skin/e/i/error-3.gif&#39;">        </strong>    </div></li><li class="fore2" onclick="reClick(&#39;CR1&#39;,570129,&#39;570127#4299&#39;,1);"><div class="p-img">        <a target="_blank" title="苹果（APPLE）iPhone 4S 16G版 3G手机（黑色）WCDMA/GSM" href="http://www.360buy.com/product/570127.html"><img height="100" width="100" alt="苹果（APPLE）iPhone 4S 16G版 3G手机（黑色）WCDMA/GSM" src="./qq_files/e7022b13-e237-4f5b-97a3-c846a5cde518(1).jpg"></a>    </div>    <div class="p-name">        <strong>12%会买：</strong>        <a target="_blank" title="苹果（APPLE）iPhone 4S 16G版 3G手机（黑色）WCDMA/GSM" href="http://www.360buy.com/product/570127.html">苹果（APPLE）iPhone 4S 16G版 3G手机（黑色）WCDMA/GSM</a>    </div>    <div class="p-price">        <strong>            <img src="./qq_files/gp570127,1.png" onerror="this.src=&#39;http://misc.360buyimg.com/lib/skin/e/i/error-3.gif&#39;">        </strong>    </div></li></ul><div class="extra"><a target="_blank" title="查看更多" href="http://prs.360buy.com/PersonalSimiRec.aspx?ShowType=1&wid=570129">查看更多推荐</a></div>
                </div>
            </div>
            <!--view-buy end-->
            <div id="ranklist" class="m m2" data-widget="tabs">
               
            </div>
            <!--ranklist end-->
            <div id="buy-buy" class="m m2 related-buy hide" style="display: block; ">
                <div class="mt">
                    <h2>购买了该商品的用户还购买了</h2>
                </div>
                <div class="mc">
                    <ul><li class="fore1" onclick="reClick(&#39;CR2&#39;,570129,&#39;323492#18&#39;,0);"><div class="p-img">        <a target="_blank" title="邦克仕（Benks）Magic HR高透耐刮花系列保护贴膜（苹果 Apple iPhone 4 /iPhone 4S贴膜）" href=""><img height="100" width="100" alt="" src="./qq_files/7a487512-82dd-41e6-b652-501647ede383.jpg"></a>    </div>    <div class="p-name">        <a target="_blank" title="邦克仕（Benks）Magic HR高透耐刮花系列保护贴膜（苹果 Apple iPhone 4 /iPhone 4S贴膜）" href="">邦克仕（Benks）Magic HR高透耐刮花系列保护贴膜（苹果 Apple iPhone 4 /iPhone 4S贴膜）</a>    </div>    <div class="p-price">        <strong>            <img src="./qq_files/gp323492,1.png" onerror="this.src=&#39;http://misc.360buyimg.com/lib/skin/e/i/error-3.gif&#39;">        </strong>    </div></li><li class="fore2" onclick="reClick(&#39;CR2&#39;,570129,&#39;556944#48&#39;,1);"><div class="p-img">        <a target="_blank" title="邦克仕（Benks）Apple iPhone 4/4S Magic HSR高清防指纹套装系列保护贴膜 " href=""><img height="100" width="100" alt="" src="./qq_files/6e54bd21-3186-411a-8317-11aef4fd60c5.jpg"></a>    </div>    <div class="p-name">        <a target="_blank" title="邦克仕（Benks）Apple iPhone 4/4S Magic HSR高清防指纹套装系列保护贴膜 " href="">邦克仕（Benks）Apple iPhone 4/4S Magic HSR高清防指纹套装系列保护贴膜 </a>    </div>    <div class="p-price">        <strong>            <img src="./qq_files/gp556944,1.png" onerror="this.src=&#39;http://misc.360buyimg.com/lib/skin/e/i/error-3.gif&#39;">        </strong>    </div></li><li class="fore3" onclick="reClick(&#39;CR2&#39;,570129,&#39;337842#18&#39;,2);"><div class="p-img">        <a target="_blank" title="邦克仕（Benks）Apple iPhone 4/4S Magic SR磨砂防指纹系列保护贴膜" href=""><img height="100" width="100" alt="" src="./qq_files/2af38a38-5e48-4258-b4f2-628e6f199b94.jpg"></a>    </div>    <div class="p-name">        <a target="_blank" title="邦克仕（Benks）Apple iPhone 4/4S Magic SR磨砂防指纹系列保护贴膜" href="">邦克仕（Benks）Apple iPhone 4/4S Magic SR磨砂防指纹系列保护贴膜</a>    </div>    <div class="p-price">        <strong>            <img src="./qq_files/gp337842,1.png" onerror="this.src=&#39;http://misc.360buyimg.com/lib/skin/e/i/error-3.gif&#39;">        </strong>    </div></li><li class="fore4" onclick="reClick(&#39;CR2&#39;,570129,&#39;1003056014#79&#39;,3);"><div class="p-img">        <a target="_blank" title="哈密瓜（hamimelon）HM0246 iphone4S保护套 升级版钢琴烤漆 外壳 后壳 送贴膜防尘塞 粉红色" href=""><img height="100" width="100" alt="" src="./qq_files/5e9b2d15-ae8b-4d9a-a465-569ef60a9917.jpg"></a>    </div>    <div class="p-name">        <a target="_blank" title="哈密瓜（hamimelon）HM0246 iphone4S保护套 升级版钢琴烤漆 外壳 后壳 送贴膜防尘塞 粉红色" href="">哈密瓜（hamimelon）HM0246 iphone4S保护套 升级版钢琴烤漆 外壳 后壳 送贴膜防尘塞 粉红色</a>    </div>    <div class="p-price">        <strong>            <img src="./qq_files/gp1003056014,1.png" onerror="this.src=&#39;http://misc.360buyimg.com/lib/skin/e/i/error-3.gif&#39;">        </strong>    </div></li><li class="fore5" onclick="reClick(&#39;CR2&#39;,570129,&#39;529294#49&#39;,4);"><div class="p-img">        <a target="_blank" title="罗凡尼（Luofanni）顶级AGAR保护膜套装（前后膜）磨砂系列  适用于苹果iphone4/4S" href=""><img height="100" width="100" alt="" src="./qq_files/5c976b8f-c4d3-4397-9ac6-c84fd2442cd4.jpg"></a>    </div>    <div class="p-name">        <a target="_blank" title="罗凡尼（Luofanni）顶级AGAR保护膜套装（前后膜）磨砂系列  适用于苹果iphone4/4S" href="">罗凡尼（Luofanni）顶级AGAR保护膜套装（前后膜）磨砂系列  适用于苹果iphone4/4S</a>    </div>    <div class="p-price">        <strong>            <img src="./qq_files/gp529294,1.png" onerror="this.src=&#39;http://misc.360buyimg.com/lib/skin/e/i/error-3.gif&#39;">        </strong>    </div></li><li class="fore6" onclick="reClick(&#39;CR2&#39;,570129,&#39;270768#39&#39;,5);"><div class="p-img">        <a target="_blank" title="卡登仕（CAPDASE）适用于苹果iPhone 4代Iphone 4s（IMAG）屏幕保护膜 完美系列" href=""><img height="100" width="100" alt="" src="./qq_files/9fe1dc3e-7b32-434f-ba97-6b0e9a22a927.jpg"></a>    </div>    <div class="p-name">        <a target="_blank" title="卡登仕（CAPDASE）适用于苹果iPhone 4代Iphone 4s（IMAG）屏幕保护膜 完美系列" href="">卡登仕（CAPDASE）适用于苹果iPhone 4代Iphone 4s（IMAG）屏幕保护膜 完美系列</a>    </div>    <div class="p-price">        <strong>            <img src="./qq_files/gp270768,1.png" onerror="this.src=&#39;http://misc.360buyimg.com/lib/skin/e/i/error-3.gif&#39;">        </strong>    </div></li><li class="fore7" onclick="reClick(&#39;CR2&#39;,570129,&#39;529296#39&#39;,6);"><div class="p-img">        <a target="_blank" title="罗凡尼（Luofanni）顶级AGAR保护膜套装（前后膜）透明系列  适用于苹果iphone4/4S" href=""><img height="100" width="100" alt="" src="./qq_files/194c0f37-e606-467a-b2fa-be4469722219.jpg"></a>    </div>    <div class="p-name">        <a target="_blank" title="罗凡尼（Luofanni）顶级AGAR保护膜套装（前后膜）透明系列  适用于苹果iphone4/4S" href="">罗凡尼（Luofanni）顶级AGAR保护膜套装（前后膜）透明系列  适用于苹果iphone4/4S</a>    </div>    <div class="p-price">        <strong>            <img src="./qq_files/gp529296,1.png" onerror="this.src=&#39;http://misc.360buyimg.com/lib/skin/e/i/error-3.gif&#39;">        </strong>    </div></li><li class="fore8" onclick="reClick(&#39;CR2&#39;,570129,&#39;537975#288&#39;,7);"><div class="p-img">        <a target="_blank" title="飞毛腿(SCUD)L930象牙白4300毫安移动电源适用于iPhone/iPad/PSP/MP3/MP4等所有手机及其它数码类产品" href=""><img height="100" width="100" alt="" src="./qq_files/bcce2551-ab3f-484f-ab20-dd9f11c251b6.jpg"></a>    </div>    <div class="p-name">        <a target="_blank" title="飞毛腿(SCUD)L930象牙白4300毫安移动电源适用于iPhone/iPad/PSP/MP3/MP4等所有手机及其它数码类产品" href="">飞毛腿(SCUD)L930象牙白4300毫安移动电源适用于iPhone/iPad/PSP/MP3/MP4等所有手机及其它数码类产品</a>    </div>    <div class="p-price">        <strong>            <img src="./qq_files/gp537975,1.png" onerror="this.src=&#39;http://misc.360buyimg.com/lib/skin/e/i/error-3.gif&#39;">        </strong>    </div></li><li class="fore9" onclick="reClick(&#39;CR2&#39;,570129,&#39;411304#288&#39;,8);"><div class="p-img">        <a target="_blank" title="飞毛腿(SCUD)L910象牙白4100毫安移动电源适用于iPhone/iPad/PSP/MP3/MP4等所有手机及其它数码类产品" href=""><img height="100" width="100" alt="" src="./qq_files/89c542b4-e80b-4f13-8675-a6ba38e1f38b.jpg"></a>    </div>    <div class="p-name">        <a target="_blank" title="飞毛腿(SCUD)L910象牙白4100毫安移动电源适用于iPhone/iPad/PSP/MP3/MP4等所有手机及其它数码类产品" href="">飞毛腿(SCUD)L910象牙白4100毫安移动电源适用于iPhone/iPad/PSP/MP3/MP4等所有手机及其它数码类产品</a>    </div>    <div class="p-price">        <strong>            <img src="./qq_files/gp411304,1.png" onerror="this.src=&#39;http://misc.360buyimg.com/lib/skin/e/i/error-3.gif&#39;">        </strong>    </div></li></ul>
                </div>
            </div>
            <!--buy-buy end-->
            
          
        
	<div class="w">
	<div id="service">
		<dl class="fore1">
			<dt><b></b><strong>购物指南</strong></dt>
			<dd>
				<div><a href="" target="_blank">购物流程</a></div>
				<div><a href="" target="_blank">会员介绍</a></div>		
				<div><a href="" target="_blank">团购/机票</a></div>
				<div><a href="" target="_blank">常见问题</a></div>
				<div><a href="" target="_blank">大家电</a></div>
				<div><a href="" target="_blank">联系客服</a></div>
			</dd>
		</dl>
		<dl class="fore2">		
			<dt><b></b><strong>配送方式</strong></dt>
			<dd>
				<div><a href="" target="_blank">上门自提</a></div>
				<div><a href="" target="_blank">211限时达</a></div>
				<div><a href="" target="_blank">快递运输</a></div>
				<div><a href="" target="_blank">如何送礼</a></div>		
				<div><a href="" target="_blank">海外购物</a></div>
			</dd>
		</dl>
		<dl class="fore3">
			<dt><b></b><strong>支付方式</strong></dt>
			<dd>
				<div><a href="" target="_blank">货到付款</a></div>		
				<div><a href="" target="_blank">在线支付</a></div>
				<div><a href="" target="_blank">分期付款</a></div>
				<div><a href="" target="_blank">邮局汇款</a></div>
				<div><a href="" target="_blank">公司转账</a></div>
			</dd>
		</dl>
		<dl class="fore4">		
			<dt><b></b><strong>售后服务</strong></dt>
			<dd>
				<div><a href="" target="_blank">售后服务政策</a></div>
				<div><a href="" target="_blank">售后服务流程</a></div>
				<div><a href="" target="_blank">价格保护</a></div>
				<div><a href="" target="_blank">退款说明</a></div>		
				<div><a href="" target="_blank">返修/退换货</a></div>
				<div><a href="" target="_blank">取消订单</a></div>
			</dd>
		</dl>
		<dl class="fore5">
			<dt><b></b><strong>特色服务</strong></dt>
			<dd>			
				<div><a href="" target="_blank">夺宝岛</a></div>
				<div><a href="" target="_blank">DIY装机</a></div>
				<div><a href="" target="_blank">延保服务</a></div>
				<div><a href="" target="_blank">家电下乡</a></div>
				<div><a href="" target="_blank">91礼品卡</a></div>
				<div><a href="" target="_blank">节能补贴</a></div>			
			</dd>
		</dl>
		<span class="clr"></span>
	</div>
</div><!-- service end --><div class="w">
	<div id="footer">
		<div class="links"><a href="" target="_blank">关于我们</a>|<a href="" target="_blank">联系我们</a>|<a href="" target="_blank">人才招聘</a>|<a href="" target="_blank">商家入驻</a>|<a href="" target="_blank">迷你挑</a>|<a href="" target="_blank">奢侈品网</a>|<a href="" target="_blank">广告服务</a>|<a href="" target="_blank">手机91</a>|<a href="" target="_blank">友情链接</a>|<a href="" target="_blank">销售联盟</a>|<a target="_blank" href="">91论坛</a></div>
		<div class="copyright">北京市公安局朝阳分局备案编号110105014669&nbsp;&nbsp;|&nbsp;&nbsp;京ICP证070359号&nbsp;&nbsp;|&nbsp;&nbsp;互联网药品信息服务资格证编号(京)-非经营性-2011-0034<br><a target="_blank" href="http://misc.360buyimg.com/skin/df/i/com/f_music.jpg">音像制品经营许可证苏宿批005号</a>&nbsp;&nbsp;|&nbsp;&nbsp;出版物经营许可证编号新出发(苏)批字第N-012号&nbsp;&nbsp;|&nbsp;&nbsp;互联网出版许可证编号新出网证(京)字150号<br>Copyright&#169;2004-2012&nbsp;&nbsp;360buy91商城&nbsp;版权所有</div>
		<div class="authentication"><a href="" target="_blank"><img data-lazyload="http://img10.360buyimg.com/da/20110329/108_40_zZOKnl.gif" width="108" height="40" alt="经营性网站备案中心" src="./qq_files/blank.gif" class="err-product"></a><script type="text/JavaScript">function CNNIC_change(eleId){var str= document.getElementById(eleId).href;var str1 =str.substring(0,(str.length-6));str1+=CNNIC_RndNum(6); document.getElementById(eleId).href=str1;}function CNNIC_RndNum(k){var rnd=""; for (var i=0;i < k;i++) rnd+=Math.floor(Math.random()*10); return rnd;}</script> <a href="https://ss.cnnic.cn/verifyseal.dll?sn=2008070300100000031&ct=df&pa=294005" tabindex="-1" id="urlknet" target="_blank"> <img alt="可信网站" name="CNNIC_seal" border="true" data-lazyload="http://img12.360buyimg.com/da/20110329/112_40_EAWZul.jpg" oncontextmenu="return false;" onclick="CNNIC_change(&#39;urlknet&#39;)" src="./qq_files/blank.gif" class="err-product"></a><a href="http://about.58.com/fqz/index.html" target="_blank"><img data-lazyload="http://img12.360buyimg.com/da/g5/M02/0D/17/rBEIDE_nzcIIAAAAAAB30mYXo5QAACrhACj22IAAHfq378.png" width="108" height="40" alt="朝阳网络警察" src="./qq_files/blank.gif" class="err-product"></a><a href="https://search.szfw.org/cert/l/CX20120111001803001836" target="_blank"><img data-lazyload="http://img13.360buyimg.com/da/20120221/112_40_WvArIl.png" width="112" height="40" src="./qq_files/blank.gif" class="err-product"></a></div>
	</div>
</div><!-- footer end -->

    <script type="text/javascript" src="./qq_files/jquery-1.2.6.pack.js"></script>
    <script type="text/javascript" src="./qq_files/iplocation_server.js"></script>
    <script type="text/javascript" src="./qq_files/product.js"></script>
    <script type="text/javascript" src="./qq_files/promotion.js"></script>
    <script type="">
	var keywords="One xc";
	$("#hotwords").html(hotwords);
	$("#key").val(keywords).bind("focus",function(){
		if (this.value==keywords){this.value="";this.style.color="#333"}
	}).bind("blur",function(){
		if (this.value==""){this.value=keywords;this.style.color="#999"}
	});
})();
</script>
    <script type="text/javascript" src="./qq_files/wl.js"></script>
<script type="text/javascript">
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-2176661-1']);
_gaq.push(['_setDomainName', '360buy.com']);
_gaq.push(['_addOrganic', 'soso', 'w']);
_gaq.push(['_addOrganic', 'sogou', 'query']);
_gaq.push(['_addOrganic', 'youdao', 'q']);
_gaq.push(['_addOrganic', 'baidu', 'word']);
_gaq.push(['_addOrganic', 'baidu', 'q1']);
_gaq.push(['_addOrganic', 'ucweb', 'keyword']);
_gaq.push(['_addOrganic', 'ucweb', 'word']);
_gaq.push(['_addOrganic', '114so', 'kw']);
_gaq.push(['_trackPageview']);
_gaq.push(['_trackPageLoadTime']);
(function() {
	var ga = document.createElement('script');
	ga.type = 'text/javascript';
	ga.async = true;
	ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
	var s = document.getElementsByTagName('script')[0];
	s.parentNode.insertBefore(ga, s);
})();
</script>
    <!-- Google Code for &#22270;&#20070;&#38899;&#20687;-&#35814;&#24773;&#39029; 90&#22825; Remarketing List -->
    <script type="text/javascript">
    /* <![CDATA[ */
    var google_conversion_id = 1066677870;
    var google_conversion_language = "en";
    var google_conversion_format = "3";
    var google_conversion_color = "666666";
    var google_conversion_label = "m94uCPbggwIQ7uzQ_AM";
    var google_conversion_value = 0;
    /* ]]> */
    </script>
    <script type="text/javascript" src="./qq_files/conversion.js"></script><img height="1" width="1" border="0" src="./qq_files/saved_resource">
    <noscript>
    &lt;div style="display:inline;"&gt;
    &lt;img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/1066677870/?label=m94uCPbggwIQ7uzQ_AM&amp;amp;guid=ON&amp;amp;script=0"/&gt;
    &lt;/div&gt;
    </noscript>


<div style="display:none;" class="jqPreload0">360buy<img src="./qq_files/3ebc8f60-b924-4d1b-af32-b4ac2f8408cf(4).jpg"></div></body></html>