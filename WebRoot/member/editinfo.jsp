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
</div>	     <!--content start-->
<div alt="" id="container">
	<div class="breadcrumb">
		您现在的位置：<a class="aBlu" href="">91商城</a> &gt; <a class="aBlu" href="">我的91商城</a> &gt; 编辑个人资料
	</div>
<div style="display: block; float: left;" id="myYihaodianLeftMenu" class="columnleft">
		<dl>
			<dt>订单查询</dt>
			<dd>&gt;<a href="<%=path %>/orderQueryAll">">我的订单</a></dd>
			<dd>&gt;<a href="">我的收藏夹</a></dd>
			<dd>&gt;<a href="">评价商品</a></dd>
		</dl>
		<dl>
			<dt>账户信息</dt>
			<dd>&gt;<a href="<%=path %>/member/memberQueryAmount?memberID=${memberID }">账户查询</a></dd>
			<dd>&gt;<a href="">积分查询与兑换</a></dd>
		</dl>
		<dl>
			<dt>个人信息管理</dt>
			<dd class="current">&gt;<a href="<%=path %>/member/memberEditInfo?memberID=${memberID }">编辑个人资料</a></dd>
			<dd>&gt;<a href="<%=path %>/member/updatePwd.jsp">修改密码</a></dd>
			<dd>&gt;<a href="<%=path %>/member/updateToPayPwd.jsp">修改支付密码</a></dd>
			<dd>&gt;<a href="<%=path %>/memberAddrQueryAll">地址簿管理</a></dd>
		</dl>
	<img src="./editinfo_files/leftfooter.gif" />
</div>
	<div class="columnright">
    <ul class="ul_tab mb10" alt="1">
      <li class="orderTab on" id="tab1"><s></s>基本信息</li>
    </ul>

	    <form method="post" name="editinfo" id="updateBaseinfoSubmit" action="<%=path %>/member/memberInfoUpdate?memberID=${personalDataPo.memberID }">
	     <input type="hidden" name="userInfo.profileInfo.userId" value="" />
	     <input type="hidden" name="userInfo.id" value="123294318" />
	    <div class="tab_content clearfix">
	    	<ul class="info_form">
	        	<li><span class="info_tit">用户名：</span>${personalDataPo.memberName }
	            <li>
	            	<span class="info_tit">邮箱：</span>
	            	<span id="useremail" alt="310228890@qq.com">${personalDataPo.memberEmail }<a href="javascript:void(0);" id="notValid">[未验证]</a></span>
	            	&nbsp;&nbsp;<a href="http://my.yihaodian.com/member/userinfo/toChangeEmailPage.do">修改邮箱</a>&nbsp;
	            	<span class="red">完成验证获得10个积分</span>
	            </li>
	            <li><span class="info_tit">昵称：</span><input type="text" name="userInfo.userRealName" value="${personalDataPo.memberNiCheng }" class="ipt w150" /></li>
	            <li><span class="info_tit"><s>*</s>真实姓名：</span><input type="text" name="userInfo.userRealRealName" value="${personalDataPo.memberRealName }" class="ipt w150" /></li>
	            <li><span class="info_tit"><s>*</s>手机：</span><input type="text" name="userInfo.userMobile" value="${personalDataPo.memberTelePhone }" class="ipt w150" /></li>
	            <li><span class="info_tit"><s>*</s>性别：</span>
	            	<c:if test="${personalDataPo.memberSex == 0 }">
	            		<input type="radio" name="userInfo.userSex" class="ipc" id="male" value="0" checked="checked" /> <label for="male">男</label>
	            		<input type="radio" name="userInfo.userSex" class="ipc" id="female" value="1" /> <label for="female">女</label>
					</c:if>
					<c:if test="${personalDataPo.memberSex == 1 }">
	            		<input type="radio" name="userInfo.userSex" class="ipc" id="male" value="0" /> <label for="male">男</label>
	            		<input type="radio" name="userInfo.userSex" class="ipc" id="female" value="1" checked="checked" /> <label for="female">女</label>
					</c:if>
					<c:if test="${personalDataPo.memberSex == null }">
						<input type="radio" name="userInfo.userSex" class="ipc" id="male" value="0" /> <label for="male">男</label>
	            		<input type="radio" name="userInfo.userSex" class="ipc" id="female" value="1" /> <label for="female">女</label>
					</c:if>
					</li>
	            <li><span class="info_tit"><s>*</s>生日：</span>
	            	<input type="hidden" name="isBirthday" value="${personalDataPo.memberBirthday }"/>
	            	<c:if test="${personalDataPo.memberBirthday == null }">
	            	<select name="birthYear" style="width:65px" alt=""><option value="0" selected="selected">选择年</option><option value="2012">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option><option value="1979">1979</option><option value="1978">1978</option><option value="1977">1977</option><option value="1976">1976</option><option value="1975">1975</option><option value="1974">1974</option><option value="1973">1973</option><option value="1972">1972</option><option value="1971">1971</option><option value="1970">1970</option><option value="1969">1969</option><option value="1968">1968</option><option value="1967">1967</option><option value="1966">1966</option><option value="1965">1965</option><option value="1964">1964</option><option value="1963">1963</option><option value="1962">1962</option><option value="1961">1961</option><option value="1960">1960</option><option value="1959">1959</option><option value="1958">1958</option><option value="1957">1957</option><option value="1956">1956</option><option value="1955">1955</option><option value="1954">1954</option><option value="1953">1953</option><option value="1952">1952</option><option value="1951">1951</option><option value="1950">1950</option><option value="1949">1949</option><option value="1948">1948</option><option value="1947">1947</option><option value="1946">1946</option><option value="1945">1945</option><option value="1944">1944</option><option value="1943">1943</option><option value="1942">1942</option><option value="1941">1941</option><option value="1940">1940</option><option value="1939">1939</option><option value="1938">1938</option><option value="1937">1937</option><option value="1936">1936</option><option value="1935">1935</option><option value="1934">1934</option><option value="1933">1933</option></select>年
					<select name="birthMonth" style="width:65px" alt=""><option value="0" selected="selected">选择月</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option></select>月
					<select name="birthDate" style="width:65px" alt=""><option value="0" selected="selected">选择日</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select>日
					<span class="red">生日填写后不能再修改</span>
					</c:if>
					<c:if test="${personalDataPo.memberBirthday != null }">
						<span>${personalDataPo.memberBirthday }</span>
					<span class="red">生日填写后不能再修改</span>
					</c:if>
	            </li>
	            <li>
	            <span class="info_tit"><s>*</s>身份：</span>
	            <input type="hidden" name="isShenFen" value="${personalDataPo.memberShenFen }" />
	            	<c:if test="${personalDataPo.memberShenFen != null }"><label>已存在:${personalDataPo.memberShenFen }</label></c:if>
	            	  <input type="radio" class="ipc" name="userInfo.profileInfo.userDegree" value="学生" /><label for="xs1">学生</label>
	            	  <input type="radio" class="ipc" name="userInfo.profileInfo.userDegree" value="在职" /><label for="xs2">在职</label>
	            	  <input type="radio" class="ipc" name="userInfo.profileInfo.userDegree" value="自由职业" /><label for="xs3">自由职业</label>
	            	  <input type="radio" class="ipc" name="userInfo.profileInfo.userDegree" value="家庭主妇" /><label for="xs4">家庭主妇</label>
	            	  <input type="radio" class="ipc" name="userInfo.profileInfo.userDegree" value="退休" /><label for="xs5">退休</label>
	            </li>


	            <li>
	            <span class="info_tit"><s>*</s>个人收入状况：</span>
	            <input type="hidden" name="isShouRu" value="${personalDataPo.memberShouRu }" />
	            <c:if test="${personalDataPo.memberShenFen != null }"><label>已存在:${personalDataPo.memberShouRu }</label></c:if>
				<select name="userInfo.profileInfo.incomeDesc" id="income_desc">
				  <option value="0">--请选择--</option>
	           	 <option value="2000元及以下" label="2000元及以下">2000元及以下</option>
	           	 <option value="2000―5000元(包含5000元)" label="2000―5000元(包含5000元)">2000―5000元(包含5000元)</option>
	           	 <option value="5000元以上" label="5000元以上">5000元以上</option>
				</select>
	            </li>
	
	            <li>
	            
	            <span class="info_tit">&nbsp;</span><!-- 保存修改 -->
	            <a onclick="javascript:document.editinfo.submit();"><img src="./editinfo_files/baocun.png" /></a>
	            </li>
	        </ul>
	        
	        <div class="user_infor">
	        		<input type="hidden" name="userId" id="userId" value="123294318" />
            		<div class="info_level">信息完整度<span><s style="width:30%;"></s></span></div>
	        </div>
	    </div>
	    </form></div>
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
		    
		      <a href="" target="_blank"><img src="./editinfo_files/blank.gif" original="http://image.yihaodianimg.com/member/global/images/unionpay.gif" /></a>
			  <a href="" target="_blank"><img src="./editinfo_files/blank.gif" original="http://image.yihaodianimg.com/member/global/images/footer_pic_04.gif" /></a>
			  <a target="_blank" href=""><img src="./editinfo_files/blank.gif" original="http://image.yihaodianimg.com/member/global/images/footer_pic_05.gif" /></a>
		  	  <span><a href="" target="_blank"><img src="./editinfo_files/blank.gif" original="http://image.yihaodianimg.com/member/global/images/shgs.gif" /></a></span>
		   </small>
		  
		</div>
		    <!--js start-->
 <!--无页面级头部js时, 全局头部js下移-->
	      <script type="text/javascript" src="./editinfo_files/global_site_top.js" charset="utf-8"></script>
	      <script type="text/javascript" src="./editinfo_files/editInfo.js" charset="utf-8"></script>
	    <script type="text/javascript" src="./editinfo_files/global_site_bottom.js" charset="utf-8"></script>
	    <!--js end-->
<div>
<a style="color: #FFFFFF">
				39!$
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