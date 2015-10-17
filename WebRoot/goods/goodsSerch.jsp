<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>fox商城-->${typeName2 } ${typeName3 }</title>
<script type="text/javascript" async="" src="./b_files/ga.js"></script> 
<meta name="keywords" content="电脑、办公,电脑整机,上网本,上网本报价、促销、新闻、评论、导购、图片">
<meta name="description" content="360BUY91商城是国内最专业的电脑、办公,电脑整机,上网本,上网本网上购物商城，本频道提供电脑、办公,电脑整机,上网本,上网本的最新报价、促销、评论、导购、图片等相关信息"> 
<script>var jdpts = new Object(); jdpts._st = new Date().getTime();</script>
<link rel="stylesheet" type="text/css" href="./b_files/base.css" media="all">
<link rel="stylesheet" type="text/css" href="./b_files/plist20120412.css" media="all">
<link rel="stylesheet" type="text/css" href="./b_files/pop_compare.css" media="all">

<script type="text/javascript" src="./b_files/jquery-1.2.6.pack.js"></script>
<script type="text/javascript">window.pageConfig = { compatible: true }; </script>
<body class="root61">
<script type="text/javascript" src="./b_files/base-2011.js" charset="UTF-8"></script>
<script type="text/javascript" src="<%=path %>/goods/js/jquery-1.4.2.js"></script>
<script>
	$(document).ready(function(){
	  var cuPage = $("#currentPage").val();
	  //alert(cuPage);
	  var cu = document.getElementById(cuPage);
	  cu.className="current";
	  var sort = $("#sort").val();
	  
	  
	  if(sort == undefined){
		  alert(2);
		  
		}else{
			//alert(sort);
			var sorts = sort+"s";
			var ss = document.getElementById(sorts);
			var lp = document.getElementById("lastP");
			var np = document.getElementById("nextP");
			var dora = document.getElementById("dora");
			var dorav = dora.value;
			var hr1 = "goodsSerchT?sorts="+sort+"0"+dorav+"&flag=0";
			var hr2 = "goodsSerchT?sorts="+sort+"0"+dorav+"&flag=1";
			//alert(dorav);
			if(dorav == "2"){
				dora.value = "1";
				dorav = "1";
			}else{
				dora.value="2";
				dorav = "2";
			}
			var hr = "goodsMenuSerchT?sorts="+sort+"0"+dorav+"&flag=2";
			//alert(hr);
			ss.href=hr;
			lp.href=hr1;
			np.href=hr2
			var dd = document.getElementById(sort);
			var ddd = document.getElementById("createDate");
			ddd.className="";
			dd.className="curr";
		}
	  
	  
	}); 
</script>
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
					<li class="fore1 ld" id="loginbar1" clstag="">您好，欢迎来到91商城！<span>
						<a href="<%=path %>/member/login.jsp">[登录]</a> 
						<a href="<%=path %>/member/regedit.jsp" class="link-regist">[免费注册]</a></span></li>
				</c:if>
				<c:if test="${memberName != null}">
					<li class="fore1 ld" id="loginbar1" clstag=""><a href="<%=path %>/member/memberEditInfo?memberID=${memberID }">${memberName }</a>，欢迎您！<span>
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
		<div id="logo" class="ld"><a href="<%=path %>/index.jsp"><b></b><img src="./b_files/91logo.png" width="259" height="50" alt="91商城"></a></div><!--logo end-->
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
<script type="text/javascript">
(function(){if(pageConfig.navId){var object=document.getElementById("nav-"+pageConfig.navId);if(object)object.className+=" curr";}})();
</script><!-- header end -->

	<div class="w">
	    <div class="breadcrumb">
            <strong><a href="http://www.360buy.com/computer.html">${typeName1 }</a></strong><span>&nbsp;&gt;&nbsp;<a href="">${typeName2 }</a>&nbsp;&gt;&nbsp;<a href="./b_files/b.htm">${typeName3 }</a></span>
         </div>
	</div><!--crumb end-->
	<div class="w main">
		<div class="right-extra">			
             <div class="m" id="i-right">
             <div id="hotsale" clstag="thirdtype|keycount|thirdtype|hotsaleM">
             	<div class="mt"><h2>热卖推荐</h2></div>
             	<div class="mc list-h" rfid="435">
             	<dl><dt><a target="_blank" href=""><img src="./b_files/27187960-9507-438c-a845-c59030d25dae.jpg" width="100" height="100" alt=""></a></dt>
             		<dd><div class="p-name"><a target="_blank" href="">美国优派<font color="#ff6600">直降300元！</font></a></div>
             			<div class="p-price">特价：<img src="./b_files/gp613268-1-1-1.png" data-img="3"></div>
             			<div class="btn-buy"><a target="_blank" href="">立即抢购</a></div>
             		</dd></dl>
             	<dl><dt><a target="_blank" href=""><img src="./b_files/rBEGFE-we-MIAAAAAAKx0g8Ww-sAAA7TAOdSokAArHq751.jpg" width="100" height="100" alt="宏碁AOD270（N2600 2G 250G 6芯电池"></a></dt>
             		<dd><div class="p-name"><a target="_blank" href="http://www.360buy.com/product/683121.html">宏碁AOD270<font color="#ff6600">直降500元！仅此一批！</font></a></div>
             			<div class="p-price">特价：<img src="./b_files/gp683121-1-1-1.png" data-img="3"></div>
             			<div class="btn-buy"><a target="_blank" href="">立即抢购</a></div>
             		</dd></dl>
             	<dl><dt><a target="_blank" href=""><img src="./b_files/022e07f4-9f33-4edd-99d7-963f75e40656.jpg" width="100" height="100" alt="联想精工小本，大智慧！"></a></dt>
             		<dd><div class="p-name"><a target="_blank" href="">联想精工小本，大智慧！<font color="#ff6600">金秋好礼必备，联想精工便携本！</font></a></div>
             		<div class="p-price">特价：<img src="./b_files/gp627009-1-1-1.png" data-img="3"></div>
             		<div class="btn-buy"><a target="_blank" href="">立即抢购</a></div>
             		</dd></dl>
             	</div>
             </div>
             <div id="market" clstag="thirdtype|keycount|thirdtype|market">
             	<div class="mt"><h2>促销活动</h2></div>
             	<div class="mc">
             	<ul>
             		<li>·<a target="_blank" href="">清华同方特价迎开学！</a></li>
             		<li>·<a target="_blank" href="">爱普生L211墨仓一体机91首发!</a></li>
             		<li>·<a target="_blank" href="">开学攒机，百万让利！</a></li>
             		<li>·<a target="_blank" href="">新学期富士通电脑促销！ </a></li>
             		<li>·<a target="_blank" href="">同方本青春范儿特价促！</a></li>
             	</ul>
             </div>
           </div>
          </div>
			<!--i-right end-->			
			<div id="select" class="m" clstag="thirdtype|keycount|thirdtype|select">
                <div class="mt"><h1>${typeName3 }</h1><strong>&nbsp;-&nbsp;商品筛选</strong>
                <div class="extra"><a href="./b_files/b.htm">重置筛选条件</a></div></div>
                <dl class="fore" id="select-brand">
                	<dt>品牌：</dt><dd>
                	<div class="content">
                		<div rel="0"><a id="0" href="" class="curr">不限</a></div>
                		<div rel="4"><a id="10349" href="">联想（Lenovo）</a></div>
                		<div rel="3"><a id="10350" href="">惠普（HP）</a></div>
                		<div rel="3"><a id="10351" href="">华硕（ASUS）</a></div>
                		<div rel="6"><a id="10358" href="">三星（Samsung）</a></div>
                		<div rel="6"><a id="10352" href="">索尼（SONY）</a></div>
                		<div rel="3"><a id="10353" href="">宏碁（acer）</a></div>
                		<div rel="2"><a id="10355" href="">Gateway</a></div>
                		<div rel="1"><a id="10357" href="">东芝（TOSHIBA）</a></div>
                		<div rel="6"><a id="14841" href="">神舟（HASEE）</a></div>
                		<div rel="3"><a id="10359" href="">海尔（Haier）</a></div>
                		<div rel="2"><a id="11112" href="">富士通（FUJITSU）</a></div>
                		<div rel="8"><a id="10360" href="">优派（ViewSonic）</a></div>
                		<div rel="0"><a id="80496" href="">万利达（Malata）</a></div>
                		<div rel="7"><a id="10354" href="">微星（msi）</a></div>
                		<div rel="5"><a id="92574" href="">七喜（HEDY）</a></div>
                	</div></dd></dl>
                <dl><dt>价格：</dt><dd>
                	<div rel="0"><a id="0" href="" class="curr">不限</a></div>
                	<div rel="0"><a id="10362" href="">1-1999</a></div>
                	<div rel="0"><a id="10363" href="">2000-2599</a></div>
                	<div rel="0"><a id="10364" href="">2600-2999</a></div>
                	<div rel="0"><a id="10365" href="">3000以上</a></div>
                	<div rel="0"><a id="105391" href="">尾货清仓</a></div>
                </dd></dl>
                <dl><dt>尺寸：</dt><dd>
                	<div rel="0"><a id="0" href="" class="curr">不限</a></div>
                	<div rel="0"><a id="10369" href="">10英寸以下</a></div>
                	<div rel="0"><a id="10370" href="">10英寸</a></div>
                	<div rel="0"><a id="10371" href="h">11英寸</a></div>
                	<div rel="0"><a id="10372" href="">12英寸</a></div>
                </dd></dl>
                <dl><dt>平台：</dt><dd>
                	<div rel="0"><a id="0" href="" class="curr">不限</a></div>
                	<div rel="0"><a id="60126" href="">Intel Sandy Bridge平台</a></div>
                	<div rel="0"><a id="60127" href="">AMD Brazos APU平台</a></div>
                	<div rel="0"><a id="10373" href="">Intel平台</a></div>
                	<div rel="0"><a id="10374" href="">AMD平台</a></div>
                	<div rel="0"><a id="10375" href="">VIA平台</a></div>
                </dd></dl>
                <dl><dt>硬盘：</dt><dd>
                	<div rel="0"><a id="0" href="" class="curr">不限</a></div>
                	<div rel="0"><a id="111056" href="">固态硬盘</a></div>
                	<div rel="0"><a id="111057" href="">160G</a></div>
                	<div rel="0"><a id="111058" href="">250G</a></div>
                	<div rel="0"><a id="111059" href="">320G</a></div>
                	<div rel="0"><a id="111060" href="">500G</a></div>
                </dd></dl>
                <dl><dt>内存：</dt><dd>
                	<div rel="0"><a id="0" href="" class="curr">不限</a></div>
                	<div rel="0"><a id="111064" href="">512M</a></div>
                	<div rel="0"><a id="111061" href="">1G</a></div>
                	<div rel="0"><a id="111062" href="">2G</a></div>
                	<div rel="0"><a id="111063" href="">4G</a></div>
                </dd></dl>
			</div><!--select end -->
			<script type="text/javascript">(function() { var b = $("#select-brand .tab"), f = $("#select-brand .content"), h = $("#select-hold"), c = b.find(".curr").attr("rel"),g = (screen.width >= 1200) ? "225px" : "275px",a; var d = 0, i = 0, e = (screen.width >= 1200) ? 6 : 5; i = Math.ceil(f.children().size() / e); d = (f.children().outerHeight()) * i; if (d > parseInt(g)) { f.css("height", g); h.html("<b></b>展开").attr("class", "close") } else { h.html("<b></b>收起").attr("class", "open") } h.bind("click", function() { if ($(this).attr("class") != "open") { f.css("height", "auto"); h.html("<b></b>收起").attr("class", "open") } else { f.css("height", g); h.html("<b></b>展开").attr("class", "close") } }); b.find("li").bind("mouseover", function() { var j = $(this); a = setTimeout(function() { if (j.attr("rel") == c) { return } b.find("li").eq(c).removeClass("curr"); j.addClass("curr"); c = j.attr("rel"); f.css("height", "auto"); h.hide(); f.find("div").each(function() { if (c == 0) { $(this).show() } else { $(this).hide(); if ($(this).attr("rel") == c) { $(this).show() } } }) }, 500) }).bind("mouseout", function() { clearTimeout(a) }) })();</script>
              
			<div id="filter" clstag="thirdtype|keycount|thirdtype|filter">
				<input type="hidden" value="${sort }" id="sort"/>
				<input type="hidden" value="${dora }" id="dora" />
                <div class="fore1"><dl class="order">
                <dt>排序：</dt>
                <dd class="" id="amount"><a href="">销量</a><b></b></dd>
                <dd id="goodsMemberPrice"><b></b><a id="goodsMemberPrices" href="goodsMenuSerchT?sorts=goodsMemberPrice02&flag=2" rel="nofollow">价格</a><b></b></dd>
                <dd id=""><a href="" rel="nofollow">评论数</a><b></b></dd>
                <dd id="createDate" class="curr"><b></b><a id="createDates" href="goodsMenuSerchT?sorts=createDate01&flag=2" rel="nofollow">上架时间</a><b></b></dd>
                </dl>
                <div class="pagin pagin-m"><span class="text">${menuSerchCurrentPage }/${menuSerchEndPage }</span><span class="prev-disabled">上一页<b></b></span><a href="goodsMenuSerchT?flag=1" class="next">下一页<b></b></a></div><div class="total"><span>共<strong>${menuSerchCount }</strong>个商品</span></div><span class="clr"></span></div>
			</div><!--filter end-->	


			<div class="m " id="plist" clstag="thirdtype|keycount|thirdtype|plist">
				<ul class="list-h">
                    <!-- <cc>89</cc> -->
                    <c:if test="${goodsList1 == null}"><li>暂无商品!</li></c:if>
                    <c:forEach items="${goodsList1 }" var="li1">
					<li>
						<div class="p-img"><a target="_blank" href="goodsDetail?goodsID=${li1.goodsID }">
						<img onerror="this.src=&#39;" src="${li1.goodsPicture1 }" width="160" height="160" alt="${li1.goodsIntroduce }"></a>
						</div>
						<div class="p-name"><a target="_blank" href="goodsDetail?goodsID=${li1.goodsID }" title="${li1.goodsIntroduce }">${li1.goodsName }
						 <font style="color:#ff0000" class="adwords" name="700283">${li1.goodsIntroduce }</font></a></div>
						 <div class="p-price">
							<strong>￥${li1.goodsMemberPrice }</strong>
						</div>
						<div class="btns"><a onclick="log(1,7,700283)" href="" target="_blank" class="btn-buy">购买</a>
						</div></li>
					</c:forEach>

<script type="text/javascript">var jdwsment = {"skuids" : "700283,627009,700278,575094,575093,588739,592889,683121,616527,548732,576810,581999,548733,576811,655282,588738,620442,588743,588744,588745,671749,620445,613268,698091,703287,655278,588740,588747,642503,642499,698090,673056,683590,655281,640000,655276","key":"C99DBB08D06A656383B29D280B7314DC847540E7"};</script>
<!-- <cache>hits</cache> -->
				</ul>
			</div><!--plist end-->			
			<div reco_id="2" class="shop-choice hide" id="shop-choice"></div>			
			<div class="m clearfix">
				<div class="pagin fr">
					<input type="hidden" id="currentPage" value="${menuSerchCurrentPage }"/>
                   <a href="goodsMenuSerchT?flag=0" class="next" id="lastP">上一页<b></b></a><a href="goodsMenuSerchT?flag=0" id="1" >1</a><a href="" id="2" class="">2</a><a href="" id="3"  class="">3</a><a href="goodsMenuSerchT?flag=1" class="next" id="nextP">下一页<b></b></a>
				</div><!--pagin end-->
			</div>
			
		</div><!--right-extra end-->
	    <script type="text/javascript"> function lazyload(option) { var settings = { defObj: null, defHeight: 0 }; settings = $.extend(settings, option || {}); var defHeight = settings.defHeight, defObj = (typeof settings.defObj == "object") ? settings.defObj.find("img") : $(settings.defObj).find("img"); var pageTop = function() { var d = document, y = (navigator.userAgent.toLowerCase().match(/iPad/i) == "ipad") ? window.pageYOffset : Math.max(d.documentElement.scrollTop, d.body.scrollTop); return d.documentElement.clientHeight + y - settings.defHeight }; var imgLoad = function() { defObj.each(function() { if ($(this).offset().top <= pageTop()) { var src2 = $(this).attr("src2"); if (src2) { $(this).attr("src", src2).removeAttr("src2") } } }) }; imgLoad(); $(window).bind("scroll", function() { imgLoad() }) } lazyload({ defObj: "#plist" })</script>
		<div class="left">
			
			</div><!--sortlist end-->
			<script type="text/javascript">
            $("#sortlist h3").bind("click",function(){
	            var element=$(this).parent();
	            if (element.hasClass("current")){
		            element.removeClass("current");
	            }else{
		            element.addClass("current");
	            }
            })
            </script>

			<div class="m limitbuy hide" id="limitbuy535" clstag="thirdtype|keycount|thirdtype|limitbuy536">
				<div class="mt">
					<h2>IT数码限时抢购</h2>
				</div>
					<div class="mc">
						<div class="clock" id="clock535">正在加载…</div>
						<div id="limit535"></div>
					</div>
			</div><!--limitbuy end -->			
			<div id="ad_left" reco_id="6" class="m m0 hide"></div><!--搜索广告推荐-->
			<div class="m rank" clstag="thirdtype|keycount|thirdtype|mrank">
				<div class="mt">
					<h2>一周销量排行榜</h2>
				</div>
				<div class="mc">
					<ul class="tabcon">
                        <c:forEach items="${goodsTop }" var="li7"><li class="fore"><span>${li7.rownum }</span>
						<div class="p-img">
	
						<a href="goodsDetail?goodsID=${li7.goodsID }">
						<img src="${li7.goodsPicture1 }" alt="${li7.goodsIntroduce }qqq" width="50" height="50"></img></a></div>
						<div class="p-name"><a href="goodsDetail?goodsID=${li7.goodsID }">${li7.goodsName }  ${li7.goodsIntroduce }<font color="#ff6600"></font></a></div>
						<div class="p-price"><strong>￥${li7.goodsMemberPrice }</strong></div></li>
						</c:forEach>

					</ul>
				</div>
			</div><!--rank end-->
			
			
			
			<div class="m" clstag="thirdtype|keycount|thirdtype|m" id="da211x261-1"></div>
            
		</div><!--left end-->
		<span class="clr"></span>
		<div id="Collect_Tip" class="Tip360 w260"></div>
	</div>
    <div class="w">
    <div id="product-track">
	    
	    <span class="clr"></span>		
    </div>
</div>
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
		<div class="authentication"><a href="" target="_blank"><img data-lazyload="http://img10.360buyimg.com/da/20110329/108_40_zZOKnl.gif" width="108" height="40" alt="经营性网站备案中心" src="./b_files/blank.gif" class="err-product"></a><script type="text/JavaScript">function CNNIC_change(eleId){var str= document.getElementById(eleId).href;var str1 =str.substring(0,(str.length-6));str1+=CNNIC_RndNum(6); document.getElementById(eleId).href=str1;}function CNNIC_RndNum(k){var rnd=""; for (var i=0;i < k;i++) rnd+=Math.floor(Math.random()*10); return rnd;}</script> <a href="https://ss.cnnic.cn/verifyseal.dll?sn=2008070300100000031&ct=df&pa=294005" tabindex="-1" id="urlknet" target="_blank"> <img alt="可信网站" name="CNNIC_seal" border="true" data-lazyload="http://img12.360buyimg.com/da/20110329/112_40_EAWZul.jpg" oncontextmenu="return false;" onclick="CNNIC_change(&#39;urlknet&#39;)" src="./b_files/blank.gif" class="err-product"></a><a href="http://about.58.com/fqz/index.html" target="_blank"><img data-lazyload="http://img12.360buyimg.com/da/g5/M02/0D/17/rBEIDE_nzcIIAAAAAAB30mYXo5QAACrhACj22IAAHfq378.png" width="108" height="40" alt="朝阳网络警察" src="./b_files/blank.gif" class="err-product"></a><a href="https://search.szfw.org/cert/l/CX20120111001803001836" target="_blank"><img data-lazyload="http://img13.360buyimg.com/da/20120221/112_40_WvArIl.png" width="112" height="40" src="./b_files/blank.gif" class="err-product"></a></div>
	</div>
</div><!-- footer end -->

	<script type="text/javascript">(function(){
	var hotwords="<strong>热门搜索：</strong><a href='' target='_blank' style='color: #CC0000'>北京青年</a><a href='' target='_blank'>熊猫人之谜</a><a href='' target='_blank'>ThinkPad X1 Carbon</a><a href='' target='_blank'>明基投影机</a><a href='' target='_blank'>富士通LH532</a><a href='' target='_blank'>酷冷散热</a><a href='' target='_blank'>佳能打印机</a><a href='' target='_blank'>联想Y460</a><a href='' target='_blank'>AMD CPU</a><a href='' target='_blank'>朗科</a><a href=''target='_blank'>D-Link路由</a><a href='' target='_blank'>HP原装墨盒</a><a href='' target='_blank'>九州风神散热器</a><a href='' target='_blank'>联强硬盘</a>";
	var keywords="罗技G400";
	$("#hotwords").html(hotwords);
	$("#key").val(keywords).bind("focus",function(){
		if (this.value==keywords){this.value="";this.style.color="#333"}
	}).bind("blur",function(){
		if (this.value==""){this.value=keywords;this.style.color="#999"}
	});
})();
</script>
	<script type="text/javascript">$("#store-selector").Jdropdown();</script>
    <script type="text/javascript">$.jdCalcul([535]);</script>
    <script type="text/javascript">pageConfig.FN_InitContrast();</script>	
	<script type="text/javascript" src="./b_files/p.plist20110721.js"></script>
    <script type="text/javascript" src="./b_files/BiForWeb.js"></script>
    <script type="text/javascript" src="./b_files/ProductTrack.js"></script>   
    <script type="text/javascript">
    //if(document.referrer && document.referrer.indexOf(".360buy.com")<0) { ListRecP(1105); }
	//function feed_publish_collect(type,wid){jQuery.getJSON("http://i.360buy.com/feed/send.action?type="+type+"&commodityId="+wid+"&jsoncallback=?",function(json){})}
	//if($("#hotsale").length>0){log('thirdtype', 'showhotsale_M');}
	</script>
    <script type="text/javascript">
    var sidePanle=new pageConfig.FN_InitSidebar();
    //sidePanle.addItem("<a class='research' target='_blank' href='http://club.360buy.com/jdvote/vote2.aspx?voteId=123&ruleId=1105'><b></b>调查问卷</a>")
    sidePanle.setTop();
    sidePanle.scroll();
    </script>
	<script type="text/javascript" src="./b_files/ThridRec.js"></script>
    <script type="text/javascript" src="./b_files/loadFa.js"></script><script type="text/javascript" src="./b_files/wl.js"></script>




</body></html>