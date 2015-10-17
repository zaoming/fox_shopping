<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0081)http://cart.360buy.com/cart/addToCart.html?rcd=1&pid=1007516968&rid=1350304251756 -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0"> 
<meta name="format-detection" content="telephone=no"> 

<link rel="stylesheet" type="text/css" href="./addGouSucc_files/base.css">
<link rel="stylesheet" type="text/css" href="./addGouSucc_files/initcart20120221.css">
<title>商品已成功加入购物车</title>
 <script type="text/javascript" src="./addGouSucc_files/jquery-1.2.6.pack.js"></script>
<script type="text/javascript" src="./addGouSucc_files/config.js"></script>
<script type="text/javascript">
window.pageConfig={
	compatible:true
};
</script>
<script type="text/javascript" charset="gb2312" src="./addGouSucc_files/GetInterimUtfPageNewJsonData.aspx"></script><script src="./addGouSucc_files/log.ashx"></script><script src="./addGouSucc_files/log(1).ashx"></script><script src="./addGouSucc_files/log(2).ashx"></script><script src="./addGouSucc_files/log(3).ashx"></script></head>
<body class="root61">
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
					<div><a href="" target="_blank">91社区</a></div></dd>
				</dl>
			</li>
			<li class="fore4"><a href="http://app.360buy.com/" target="_blank">手机91</a></li>
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
</div><!--shortcut end-->

<div id="o-header">
	<div class="w" id="header">
		<div id="logo" class="ld"><a href=""><b></b><img src="./b_files/91logo.png" width="259" height="50" alt="91商城"></a></div><!--logo end-->
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
				<div id="_JD_ALLSORT" class="mc">        <div class="item fore1">            <span clstag="homepage|keycount|home2012|0602a"><h3><a href="http://book.360buy.com/">图书</a>、<a href="http://e.360buy.com/">电子书刊</a>、<a href="http://mvd.360buy.com/">音像</a>            </h3><s></s></span>        </div>        <div class="item fore2">            <span clstag="homepage|keycount|home2012|0603a"><h3><a href="http://www.360buy.com/electronic.html">家用电器</a>            </h3><s></s></span>        </div>        <div class="item fore3">            <span clstag="homepage|keycount|home2012|0604a"><h3><a href="http://www.360buy.com/digital.html">手机数码</a>            </h3><s></s></span>        </div>        <div class="item fore4">            <span clstag="homepage|keycount|home2012|0605a"><h3><a href="http://www.360buy.com/computer.html">电脑、办公</a>            </h3><s></s></span>        </div>        <div class="item fore5">            <span clstag="homepage|keycount|home2012|0606a"><h3><a href="http://www.360buy.com/home.html">家居家装</a>、<a href="http://www.360buy.com/kitchenware.html">厨具</a>            </h3><s></s></span>        </div>        <div class="item fore6">            <span clstag="homepage|keycount|home2012|0607a"><h3><a href="http://www.360buy.com/clothing.html">服饰鞋帽</a>            </h3><s></s></span>        </div>        <div class="item fore7">            <span clstag="homepage|keycount|home2012|0608a"><h3><a href="http://www.360buy.com/beauty.html">个护化妆</a>            </h3><s></s></span>        </div>        <div class="item fore8">            <span clstag="homepage|keycount|home2012|0609a"><h3><a href="http://www.360buy.com/bag.html">礼品箱包</a>、<a href="http://www.360buy.com/watch.html">钟表</a>、<a href="http://www.360buy.com/jewellery.html">珠宝</a>            </h3><s></s></span>        </div>        <div class="item fore9">            <span clstag="homepage|keycount|home2012|0610a"><h3><a href="http://www.360buy.com/sports.html">运动健康</a>            </h3><s></s></span>        </div>        <div class="item fore10">            <span clstag="homepage|keycount|home2012|0611a"><h3><a href="http://www.360buy.com/auto.html">汽车用品</a>            </h3><s></s></span>        </div>        <div class="item fore11">            <span clstag="homepage|keycount|home2012|0612a"><h3><a href="http://www.360buy.com/baby.html">母婴</a>、<a href="http://www.360buy.com/toys.html">玩具乐器</a>            </h3><s></s></span>        </div>        <div class="item fore12">            <span clstag="homepage|keycount|home2012|0613a"><h3><a href="http://www.360buy.com/food.html">食品饮料、保健食品</a>            </h3><s></s></span>        </div>        <div class="item fore13">            <span clstag="homepage|keycount|home2012|0614a"><h3><a href="http://caipiao.360buy.com/">彩票</a>、<a href="http://trip.360buy.com/">旅行</a>、<a href="http://chongzhi.360buy.com/">充值</a>、<a href="http://game.360buy.com/">游戏</a>            </h3><s></s></span>        </div><div class="extra"><a clstag="homepage|keycount|home2012|0614a" href="http://www.360buy.com/allSort.aspx">全部商品分类</a></div></div>
			</div>
			<div id="treasure"></div>
			<ul id="navitems">
				<li class="fore1" id="nav-home"><a href="">首页</a></li>
				<li class="fore2" id="nav-mall"><a href="">服装城</a></li>
				<li class="fore3" id="nav-minitiao"><a target="_blank" href="">迷你挑</a></li>
				<li class="fore4" id="nav-tuan"><a href="">团购</a></li>
				<li class="fore5" id="nav-auction"><a href="">夺宝岛</a></li>
				<li class="fore6" id="nav-wan"><a href="">在线游戏</a></li>
			</ul>
		</div>
	</div>
</div>
<script type="text/javascript">
(function(){if(pageConfig.navId){var object=document.getElementById("nav-"+pageConfig.navId);if(object)object.className+=" curr";}})();
</script><!-- header end -->

<!--main start-->
<div class="w main">
	<div class="left">
		<div class="m" id="succeed">

			<div class="corner tl"></div>
			<div class="corner tr"></div>
			<div class="corner bl"></div>
			<div class="corner br"></div>
			<div class="success"><img src="./addGouSucc_files/succ.png" alt="" /><b>商品已成功加入购物车！</b>
			<span id="initCart_next_go"><a id="GotoShoppingCart" href="<%=path %>/trolleyDetail" class="btn-pay"><img src="./addGouSucc_files/jiesuan.png"></img>去结算</a>
			<a href="<%=path %>/index.jsp" class="btn-continue"><img src="./addGouSucc_files/jixugouwu.png"></img>继续购物</a></span></div>
			<div id="cart_yb"><ul class="extend">
</ul></div>
			
		</div><!--succeed end-->

		

		<!--promotion end-->
	</div><!--left end-->
	
	<div class="right-extra">

		<div class="m" id="mycart-detail">
			<div class="corner tl"></div>
			<div class="corner tr"></div>
			<div class="corner bl"></div>
			<div class="corner br"></div>
			<div class="mt">
				<h2><s></s>我的购物车</h2>
			</div>

			<div class="mc" id="cart_content"><!-- 宏定义开始 -->
<!-- 宏定义结束 -->

<!--刚加入的商品 start-->
<h3>刚加入购物车的商品</h3>
    <dl class="new">
        <dt class="p-img"><a href="<%=path %>/goods/goodsDetail?goodsID=${trolleyDetailVoLast.goodsID }" target"_blank"=""><img src="${trolleyDetailVoLast.goodsPicture1 } " height="60" width="60" alt="" /></a></dt>
        <dd class="p-info">
            <div class="p-name"><a href="" target"_blank"=""><span style="color:red"></span>${trolleyDetailVoLast.goodsName }</a></div>
            <div class="p-price"><span style="font-weight:bold;color:red">${trolleyDetailVoLast.goodsMemberPrice }</span><em>×${trolleyDetailVoLast.goodsCoun }</em></div>
        </dd>
    </dl>

<!--刚加入的商品 end-->

<!--其它商品 start-->
<h3>您购物车中的其它商品</h3>
<!--其它商品 end-->
<div class="total">
共<strong id="skuCount">${trolleyDetailVoLast.goodsCoun }</strong>件商品<br>
金额总计：<strong>￥<span id="zMoney"><script>
										var zMoney = document.getElementById("zMoney");
										zMoney.innerText=parseFloat(${trolleyDetailVoLast.goodsMemberPrice })*parseFloat(${trolleyDetailVoLast.goodsCoun });
									</script></span></strong>
</div>
<div class="btns"><a href="<%=path %>/trolleyDetail" class="btn-pay"><img src="./addGouSucc_files/jiesuan.png" alt="" />去结算</a></div></div>
		</div><!--my-cart end-->

	</div><!--right-extra end-->
	<span class="clr"></span>
</div><!--main end-->




<!--  service home  start -->
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
</div><!-- service end -->

<div class="w">
	<div id="footer">
		<div class="links"><a href="" target="_blank">关于我们</a>|<a href="" target="_blank">联系我们</a>|<a href="" target="_blank">人才招聘</a>|<a href="http://www.360buy.com/contact/joinin.aspx" target="_blank">商家入驻</a>|<a href="" target="_blank">迷你挑</a>|<a href="" target="_blank">奢侈品网</a>|<a href="" target="_blank">广告服务</a>|<a href="" target="_blank">手机91</a>|<a href="" target="_blank">友情链接</a>|<a href="" target="_blank">销售联盟</a>|<a target="_blank" href="">91社区</a></div>
		<div class="copyright">北京市公安局朝阳分局备案编号110105014669&nbsp;&nbsp;|&nbsp;&nbsp;京ICP证070359号&nbsp;&nbsp;|&nbsp;&nbsp;互联网药品信息服务资格证编号(京)-非经营性-2011-0034<br><a target="_blank" href="http://misc.360buyimg.com/skin/df/i/com/f_music.jpg">音像制品经营许可证苏宿批005号</a>&nbsp;&nbsp;|&nbsp;&nbsp;出版物经营许可证编号新出发(苏)批字第N-012号&nbsp;&nbsp;|&nbsp;&nbsp;互联网出版许可证编号新出网证(京)字150号<br>Copyright©2004-2012&nbsp;&nbsp;360buy91商城&nbsp;版权所有</div>
		<div class="authentication"><a href="http://www.hd315.gov.cn/beian/view.asp?bianhao=010202007080200026" target="_blank"><img width="108" height="40" alt="经营性网站备案中心" src="./addGouSucc_files/108_40_zZOKnl.gif" class="err-product"></a><script type="text/JavaScript">function CNNIC_change(eleId){var str= document.getElementById(eleId).href;var str1 =str.substring(0,(str.length-6));str1+=CNNIC_RndNum(6); document.getElementById(eleId).href=str1;}function CNNIC_RndNum(k){var rnd=""; for (var i=0;i < k;i++) rnd+=Math.floor(Math.random()*10); return rnd;}</script> <a href="https://ss.cnnic.cn/verifyseal.dll?sn=2008070300100000031&ct=df&pa=294005" tabindex="-1" id="urlknet" target="_blank"> <img alt="可信网站" name="CNNIC_seal" border="true" oncontextmenu="return false;" onclick="CNNIC_change(&#39;urlknet&#39;)" src="./addGouSucc_files/112_40_EAWZul.jpg" class="err-product"></a><a href="http://about.58.com/fqz/index.html" target="_blank"><img width="108" height="40" alt="朝阳网络警察" src="./addGouSucc_files/rBEIDE_nzcIIAAAAAAB30mYXo5QAACrhACj22IAAHfq378.png" class="err-product"></a><a href="https://search.szfw.org/cert/l/CX20120111001803001836" target="_blank"><img width="112" height="40" src="./addGouSucc_files/112_40_WvArIl.png" class="err-product"></a></div>
	</div>
</div><!-- footer end -->

<script type="text/javascript" src="./addGouSucc_files/base-2011.js" charset="gb2312"></script>
<script type="text/javascript" src="./addGouSucc_files/initCartNew.js"></script>
<script type="text/javascript" src="./addGouSucc_files/NewBiForWeb.js"></script>



<script type="text/javascript">
GetWares(getParam("pid"));
</script>
<script type="text/javascript" src="./addGouSucc_files/wl.js" charset="gb2312"></script>
<script type="text/javascript">
//try{
var mvHost=(("https:" == document.location.protocol) ? "https://secure." : "http://track.");
document.write(unescape("%3Cscript src='" + mvHost + "mediav.com/mv.js' type='text/javascript'%3E%3C/script%3E"));
//}catch(e){}
</script><script src="./addGouSucc_files/mv.js" type="text/javascript"></script></body></html>