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
<script language=javascript>
	cities = new Object(); //建立省市信息的数组

	cities['北京市'] = new Array('北京市区', '北京市辖区');

	cities['上海市'] = new Array('上海市区', '上海市辖区');
	cities['山东省'] = new Array('济南市', '聊城市', '德州市', '东营市', '淄博市', '潍坊市', '烟台市',
			'威海市', '青岛市', '日照市', '临沂市', '枣庄市', '济宁市', '泰安市', '莱芜市', '滨州地区',
			'菏泽地区');
	cities['广东省'] = new Array('广州市', '清远市', '韶关市', '河源市', '梅州市', '潮州市', '汕头市',
			'揭阳市', '汕尾市', '惠州市', '东莞市', '深圳市', '珠海市', '江门市', '佛山市', '肇庆市',
			'云浮市', '阳江市', '茂名市', '湛江市');
	cities['天津市'] = new Array('天津市区', '天津市辖区');

	cities['重庆市'] = new Array('重庆市区', '重庆市辖区');

	cities['河北省'] = new Array('石家庄', '张家口市', '承德市', '秦皇岛市', '唐山市', '廊坊市',
			'保定市', '沧州市', '衡水市', '邢台市', '邯郸市');

	cities['山西省'] = new Array('太原市', '大同市', '朔州市', '阳泉市', '长治市', '晋城市', '忻州地区',
			'吕梁地区', '晋中市', '临汾地区', '运城地区');

	cities['辽宁省'] = new Array('沈阳市', '朝阳市', '阜新市', '铁岭市', '抚顺市', '本溪市', '辽阳市',
			'鞍山市', '丹东市', '大连市', '营口市', '盘锦市', '锦州市', '葫芦岛市');

	cities['吉林省'] = new Array('长春市', '白城市', '松原市', '吉林市', '四平市', '辽源市', '通化市',
			'白山市', '延边朝鲜族自治州');

	cities['黑龙江省'] = new Array('哈尔滨市', '齐齐哈尔市', '黑河市', '大庆市', '伊春市', '鹤岗市',
			'佳木斯市', '双鸭山市', '七台河市', '鸡西市', '牡丹江市', '绥化市', '大兴安');

	cities['江苏省'] = new Array('南京市', '徐州市', '连云港', '宿迁市', '淮阴市', '盐城市', '扬州市',
			'泰州市', '南通市', '镇江市', '常州市', '无锡市', '苏州市');

	cities['浙江省'] = new Array('杭州市', '湖州市', '嘉兴市', '舟山市', '宁波市', '绍兴市', '金华市',
			'台州市', '温州市', '丽水地区');

	cities['安徽省'] = new Array('合肥市', '宿州市', '淮北市', '阜阳市', '蚌埠市', '淮南市', '滁州市',
			'马鞍山市', '芜湖市', '铜陵市', '安庆市', '黄山市', '六安市', '巢湖市', '池州地区', '宣城地区');

	function set_city(province, city) {
		//改变二级级联下拉菜单的选项供选择
		var pv, cv;
		var i, ii;
		pv = province.value;
		cv = city.value;
		city.length = 1;
		if (pv == '0')
			return;
		if (typeof (cities[pv]) == 'undefined')
			return;
		for (i = 0; i < cities[pv].length; i++) {
			ii = i + 1;
			city.options[ii] = new Option();
			city.options[ii].text = cities[pv][i];
			city.options[ii].value = cities[pv][i];
		}
	}
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
		<!--content start-->
		<div id="container">
			<div class="breadcrumb">
				您现在的位置：
				<a class="aBlu" href="">91商城</a> &gt;
				<a class="aBlu" href="">我的91商城</a>
				&gt; 地址簿管理
			</div>
			<div id="myYihaodianLeftMenu" style="display: block; float: left;"
				class="columnleft">
				<p>
					<a href="#"><img src="image/11aa.png"
							width="202" height="34" /> </a>
				</p>
				<dl>
					<dd>
						<a href="<%=path %>/orderQueryAll">&gt; 我的订单</a>
					</dd>
					<dd>
						<a href="#">&gt; 我的收藏夹</a>
					</dd>
					<dd>
						<a href="#">&gt; 评价商品</a>
					</dd>
				</dl>
				<dl>
					<a href="#"><img src="image/11ac.png" /> </a>
					<dd>&gt;<a href="<%=path %>/member/memberQueryAmount?memberID=${memberID }">账户查询</a></dd>
					<dd>&gt;<a href="">积分查询与兑换</a></dd>
				</dl>
				<dl>
					<a href="#"><img src="image/11ad.png" /> </a>
					<dd>
						<a href="<%=path %>/member/memberEditInfo?memberID=${memberID }">&gt; 编辑个人资料</a>
					</dd>
					<dd>
						<a href="<%=path %>/member/updatePwd.jsp">&gt; 修改密码</a>
					</dd>
					<dd>&gt;<a href="<%=path %>/member/updateToPayPwd.jsp">修改支付密码</a></dd>
					<dd>
						<a href="<%=path %>/memberAddrQueryAll">&gt; 地址簿管理</a>
					</dd>
				</dl>
				<div id="fixedRight"></div>
			</div>
			<div class="columnright">
				<h3>
					现在的收货地址
					<span class="gray">（最多保存10个收货地址）</span>
				</h3>
				<ul class="address">
					<c:forEach items="${sessionScope.mav}" var="mav">
						<li id="address_list_li_0">
							<s></s><span class="fr"> <a
								href="<%=path%>/memberAddrQueryOne?memberAddrID=${mav.memberAddrID }"><img
										src="memberAddr_files/xiugai.png" /> </a> <a
								href="<%=path%>/memberAddrDelete?memberAddrID=${mav.memberAddrID }"><img
										src="memberAddr_files/shanchu.png" /> </a> <a href="#">设为默认</a> </span>
							${mav.memberName },${mav.memberProvince },${mav.memberCity
							},${mav.memberAddr },${mav.memberCode },${mav.memberTelephone }
						</li>
					</c:forEach>

				</ul>
				<h3>
					新增收货地址
				</h3>
				<form action="<%=path%>/memberAddrInsert" name="fm" method="post">
					<ul class="newaddress">
						<li>
							<label>
								收货人：
							</label>

							<input name="memberName" type="text" maxlength="5">
						</li>
						<li>
							<label>
								所在地址：
							</label>
							<select name="memberProvince"
								onchange="set_city(this, document.getElementById('city'));">

								<option value=全部省>
									全部省
								</option>

								<option value=北京市>
									北京市
								</option>

								<option value=上海市>
									上海市
								</option>

								<option value=天津市>
									天津市
								</option>

								<option value=重庆市>
									重庆市
								</option>
								<option value=河北省>
									河北省
								</option>

								<option value=山西省>
									山西省
								</option>

								<option value=辽宁省>
									辽宁省
								</option>

								<option value=吉林省>
									吉林省
								</option>

								<option value=黑龙江省>
									黑龙江省
								</option>

								<option value=江苏省>
									江苏省
								</option>

								<option value=浙江省>
									浙江省
								</option>

								<option value=安徽省>
									安徽省
								</option>

								<option value=福建省>
									福建省
								</option>

								<option value=江西省>
									江西省
								</option>

								<option value=山东省>
									山东省
								</option>

								<option value=河南省>
									河南省
								</option>

								<option value=湖北省>
									湖北省
								</option>

								<option value=湖南省>
									湖南省
								</option>

								<option value=广东省>
									广东省
								</option>

								<option value=海南省>
									海南省
								</option>

								<option value=四川省>
									四川省
								</option>

								<option value=贵州省>
									贵州省
								</option>

								<option value=云南省>
									云南省
								</option>

								<option value=陕西省>
									陕西省
								</option>

								<option value=甘肃省>
									甘肃省
								</option>

								<option value=青海省>
									青海省
								</option>

							</select>
							<select id=city name="memberCity">

								<option value=0>
									全部城市
								</option>

							</select>
						</li>
						<li>
							<label>
								详细地址：
							</label>
							<input name="memberAddr" type="text" size="50" maxlength="20">
						</li>
						<li>
							<label>
								邮政编码：
							</label>
							<input name="memberCode" type="text" maxlength="6">
						</li>
						<li>
							<label>
								手机：
							</label>
							<input name="memberTelephone" type="text" maxlength="11">

						</li>
						<li>
							<label>
								&nbsp;
							</label>
							<input name="goodReceiver.isDefault" type="checkbox" value="1">
							设为
							<a name="set_default" href="javascript:void(0)">默认地址<label>
									收货人：
								</label>
							</a>
						</li>
						<li>
							<label>
								&nbsp;
							</label>
							<img src="memberAddr_files/baocun.png"
								onclick="javascript: document.fm.submit();"/>
							&nbsp;
							<a href="javascript:;" onclick=memberAddrQueryAll;><img
									src="memberAddr_files/quxiao.png" /> </a>

						</li>
					</ul>
				</form>
			</div>
		</div>
		<!--content end-->
		<div id="provinceboxDiv">
			<!--切换省份展开   -->
			<div class="ap_area " id="allProvinces" style="display: none">
				<div class="a_title">
					<a href="http://my.yihaodian.com/member/address/addressBook.do###"
						onclick=
	javascript:
	;
;
;
;
;
;
;
;
closeProvinces(1);
	return
						false;;
class="fr popwinClose">关闭</a>请选择您的收货省份
				</div>

				<dl class="first">
					<dt>
						华东地区
					</dt>
					<dd>
						<a id="p_1" href="javascript:setAddressCity(1)">上海</a>
						<a id="p_5" href="javascript:setAddressCity(5)">江苏</a>
						<a id="p_6" href="javascript:setAddressCity(6)">浙江</a>
						<a id="p_13" href="javascript:setAddressCity(13)">安徽</a>
						<a id="p_16" href="javascript:setAddressCity(16)">山东</a>
					</dd>

				</dl>
				<dl>
					<dt>
						华北东北
					</dt>
					<dd>
						<a id="p_2" href="javascript:setAddressCity(2)">北京</a>
						<a id="p_3" href="javascript:setAddressCity(3)">天津</a>
						<a id="p_4" href="javascript:setAddressCity(4)">河北</a>
						<a id="p_32" href="javascript:setAddressCity(32)">山西</a>
						<a id="p_8" href="javascript:setAddressCity(8)">内蒙古</a>
						<a id="p_9" href="javascript:setAddressCity(9)">辽宁</a>
						<a id="p_10" href="javascript:setAddressCity(10)">吉林</a>
						<a id="p_11" href="javascript:setAddressCity(11)">黑龙江</a>
					</dd>

				</dl>
				<dl>
					<dt>
						华南西南
					</dt>
					<dd>
						<a id="p_20" href="javascript:setAddressCity(20)">广东</a>
						<a id="p_21" href="javascript:setAddressCity(21)">广西</a>
						<a id="p_22" href="javascript:setAddressCity(22)">海南</a>
						<a id="p_14" href="javascript:setAddressCity(14)">福建</a>
						<a id="p_12" href="javascript:setAddressCity(12)">四川</a>
						<a id="p_7" href="javascript:setAddressCity(7)">重庆</a>
						<a id="p_23" href="javascript:setAddressCity(23)">贵州</a>
						<a id="p_24" href="javascript:setAddressCity(24)">云南</a>
						<a id="p_25" href="javascript:setAddressCity(25)">西藏</a>
					</dd>

				</dl>
				<dl class="last">
					<dt>
						华中西北
					</dt>
					<dd class="nobor">
						<a id="p_18" href="javascript:setAddressCity(18)">湖北</a>
						<a id="p_19" href="javascript:setAddressCity(19)">湖南</a>
						<a id="p_17" href="javascript:setAddressCity(17)">河南</a>
						<a id="p_15" href="javascript:setAddressCity(15)">江西</a>
						<a id="p_26" href="javascript:setAddressCity(26)">陕西</a>
						<a id="p_27" href="javascript:setAddressCity(27)">甘肃</a>
						<a id="p_28" href="javascript:setAddressCity(28)">青海</a>
						<a id="p_30" href="javascript:setAddressCity(30)">宁夏</a>
						<a id="p_29" href="javascript:setAddressCity(29)">新疆</a>
					</dd>

				</dl>
				<p id="provincesPoptips" class="poptips" style="display: none">
					因各省份所售商品不同，如果您切换省份，部分商品可能会从购物车中移除
				</p>
				<p class="ip_tips">

				</p>
			</div>

		</div>
		<script type="text/javascript">
	if (lazyLoadImageObjArry) {
		lazyLoadImageObjArry.push("friendlinkLazyLoad");
		lazyLoadImageObjArry.push("footerbannerLazyLoad");
		lazyLoadImageObjArry.push("footerbanner2LazyLoad");
	}
</script>

		<div class="bottom_service_link mt clearfix clear">
		</div>



	</body>
</html>