<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="./mytrolley_files/info.do"></script>
<script type="text/javascript" async="" src="./mytrolley_files/ga.js"></script>
<script src="./mytrolley_files/info(1).do"></script>
<script src="./mytrolley_files/jquery-1.4.2.min.js"></script>

	<title>我的购物车</title>

<meta name="Keywords" content="mytrolley">
<meta name="Description" content="mytrolley">


<!--css start-->
<link href="./mytrolley_files/global_site_simple.css" rel="stylesheet" type="text/css">
<link href="./mytrolley_files/cart2.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" href="">
<link rel="stylesheet" type="text/css" href="./mytrolley_files/global_yhdLib.css">
<link type="text/css" rel="stylesheet" href="./mytrolley_files/style.css">
<!--css end-->

<!--js start-->
<script type="text/javascript">
var headerType="simple";
var favorite="1号店，只为更好的生活";
var hostUrl="";
var httpUrl="";
var no3wUrl="yihaodian.com";
//var sinaUrl="yihaodian.house.sina.com";
var simpleUrl="yihaodian";
var chineseUrl="1号店";
var imagePath="./mytrolley_files";
var currSiteId=1;
var currSiteType=1;
var multiSearch="true";
var isIndex = 0;
var currVersionNum= 374818; //
var currProvinceId=16;
var lazyLoadImageObjArry = lazyLoadImageObjArry || [];
</script>
  

	  
<script type="text/javascript" src="./mytrolley_files/global_site_top.js" charset="utf-8"></script>
<script type="text/javascript" src="./mytrolley_files/cart2.js" charset="utf-8"></script>
<script type="text/javascript" src="./mytrolley_files/global_yhdLib.js"></script>
<script type="text/javascript" src="./mytrolley_files/global_login_frame.js"></script>
<script type="text/javascript" charset="utf-8" src="chrome-extension://cpngackimfmofbokmjmljamhdncknpmg/page_context.js"></script>
<!--js end-->

</head>

	  <body screen_capture_injected="true" youdao="bind">
	    
<div class="topcolumn">
	<div class="wrapper">
		<div class="logo_s"><a href="<%=path %>/index.jsp" title="91商城">
			<img src="./mytrolley_files/91logo.png" height="59" width="120" onclick="">
		</a>
		</div>
        <div class="info">
       	   <div>
            <span id="user_name" class="orange blod"></span><a href="<%=path %>/member/memberEditInfo?memberID=${memberID }">${memberName }</a>，欢迎光临91商城！
              <span id="logout" class="color_blue none" style="display: inline; ">
              <a href="<%=path %>/member/memberLogout" onclick="">[退出]</a>
              </span>
           </div>
           <div class="mystore">
                <ul class="mystorelist">
                     <li><a class="myshoppingcart" href="#" onclick="addTrackPositionToCookie(&#39;1&#39;,&#39;shopping_4&#39;);">购物车(<span id="in_cart_num">1</span>)</a>|</li>
                     <li class="relative">
        					<a href="">我的91</a>| 
                     </li>
                     <li>
                        <a href="">帮助中心</a>
                     </li>
                     
                </ul>
                
                <div class="clear"></div>
	              <!--我的一号店展开-->
	        </div>
         <!--mystore-->
        </div>
        
        <div class="cont"></div>
  </div>

</div>
<hr color="#A71F24" size=""/>
<script type="text/javascript"> 
      writeHeaderContent();
      buildMyYihaodian();
</script> 
<div id="provinceboxDiv">
</div>
  
</div> 	     <!--content start-->
	  <!--content start-->
<script type="text/javascript" src="./mytrolley_files/bind.js"></script>
<div id="topcolumn"></div>
<div id="container">
    <ul class="step clearfix mt10">
        <li class="on"><span>STEP 1. </span>查看购物车</li>
        <li><span>STEP 2. </span>确认订单信息</li>
        <li><span>STEP 3. </span>成功提交订单</li>
        <li><span>STEP 4. </span>评论商品</li>
    </ul>


<style type="text/css">
 .ap_area {
    left: 50%;
    
    top:150px;
    margin-left: -295px;
    margin-top: 0px;
    position: absolute;
 }
 .pop_win {
	background-Color: #FFF;
 }
</style>
	
	<div id="freePromotionList" class="mt10">
		<div id="free_promotion_container">
    
</div>
	</div>
	
	<div id="cart2_content">
<style type="text/css"> 
.ap_area { left: 50%; top:150px; margin-left: -295px; margin-top: 0px; position: absolute; } 
.pop_win { background-Color: #FFF; } 
</style> 



<!---------注意事项 ---------> 
<div id="requestOldCartStatus"></div> 
<div class="top_allselect"> 
	<span class="fr">商品总价（未包含运费）： <s id="total_price_top" >${sessionScope.totle }</s>元 </span> 
    <input type="checkbox" class="ipc allselect" id="allselect_top" checked="checked" onclick="quanxuan()">
    <label for="allselect_top">全选</label> </div> 
    	<div class="gray-box pro-li"> 
        	<div class="clearfix shop_name">
            	 <h2> 
   					 <input type="checkbox" id="bag(0" class="ipc" name="bagCheckbox"> 
                     <label for="bag(0"> <s class="seller-inshop"></s>商店名 </label>
                 </h2> 
                 <div class="fr textSlider"> 
                 	<ul><li><span class="freePostRuleIco_dzd"></span>满68.0元免运费</li> </ul> 
                  </div>
           </div>
           <!--单件商品信息 -->
           
           <table width="980" cellspacing="0" cellpadding="0" border="0" class="clear list"> 
           	<tbody> 
           	<!--列头 -->
           	<tr class=""> 
            	<th width="25"></th> 
            	<th width="70"></th> 
            	<th width="310">商品名称</th> <th width="80">91商城价</th> 
                <th width="58">订 金</th> <th width="58">积 分</th>
                 <th width="80">数 量</th><th width="142">商品合计/元</th> 
                 <th width="70">操 作</th> 
            </tr> 
            
   			<%
   				int i = 0;
   			 %>
            <c:forEach items="${sessionScope.glist}" var="goods">
            <tr class="select on" > 
                <td class="first_td"> <input type="checkbox" name="cart2Checkbox" id="a<%=i %>" checked="checked" onclick="danxuan();"/> </td> 
                <td><a href="#"><img src="${goods.goodsPicture1 }" height="50" width="50" /></a></td> 
                
                <input type="hidden" name="gid" value="${goods.goodsID }"/>
                
                <td class="tl">
                <h3><a href="" onclick="" target="_blank">
 					<span class="red">[新品]</span>${goods.goodsName } ${goods.goodsIntroduce }
 				</a></h3> 
                 <p class="tips_2" style="display: none;"><strong class="orange">该商品已下架或无库存</strong></p> 
                </td>
                
                 <td> <del name="yuan">￥${goods.goodsNormalPrice }</del> <strong name="xian" class="red">￥${goods.goodsMemberPrice }</strong> </td>
                 <td> <div class="tip_box">￥${goods.goodsMemberPrice }<span>含订金的商品只能网上支付</span></div> </td> 
                 <td> -- </td> 

                 <td> 
                 <div class="tip_box">${goods.goodsCoun }</div> 
                 </td> 

                 <td> <span id="total_items_4306584_0"> <strong class="red" id="b<%=i++ %>">${goods.goodsMemberPrice*goods.goodsCoun }</strong> </span> </td> 
                 <td class="last_td"> <span> 
                 <a href="shoucang.html" class="favorites" id="favorites_4306584" onclick="">收藏</a> &nbsp; 
             	<input type="hidden" name="promoteLimit" value="0">
             	
             	 <a href="../trolleyDelete?goodsID=${goods.goodsID }&trolleyid=${sessionScope.carId }" class="deleteButton" onclick="" id="items_4306584_0_delete">删除</a>
             	 </span> </td> 
           </tr>
        </c:forEach>
        
 
        
	
        </tbody>
        </table> 
        
        <!--此单信息 -->
  <p class="subtotal"> <!--  
  	<span class="fl"> 重量总计：XXXkg &nbsp; 共节省：XXX元 &nbsp; </span> 
  	-->
    <strong class="darkgray">运费：</strong>
    <strong class="darkgray"> <span class="f16 red"> 10 </span>元 </strong> &nbsp;&nbsp; 
    <strong class="darkgray">商品金额：</strong> <strong class="red f16 yh" id="total_price_cen">&nbsp;${sessionScope.totle }</strong>&nbsp;元 
    </p></div>
    
    
 <script>var pms_cart_id='4306584,';</script> 
 <div style="height:35px;position:relative;z-index:999"> 
 	<div class="fix_btm_bar clearfix" style="position: static; ">
 		<div class="fr"> 
 			<input type="hidden" name="danhao" value="${sessionScope.carlist[trolleyID] }"/>
 			<strong> 商品总价（未包含运费）： <span class="red" id="total_price_bottom">${sessionScope.totle }</span>元 </strong>
 			<button id="nextstep" class="ctn_shopping" onclick="history.go(-1);">继续购物</button> 
 			
			<button class="ctn_shopping" onclick="payit();">确认结账</button>
 
 			<input type="hidden" id="allTrackerInfo" name="allTrackerInfo" value=""> 
 		</div> 
 		<div class="selectbox_btm">
  			<input type="checkbox" class="ipc allselect" id="allselect_bottom">
 			<label for="allselect_bottom">全选</label>
  			<a href="javascript:void(0);" onclick="ajaxBatchDelete();return false;" class="ablue" id="batchDelete">批量删除</a> 
  			<a href="../trolleyDeAll?trolleyid=${sessionScope.carId }" onclick="clearAllCart()" class="ablue" id="clearAllCart">清空购物车</a> 
 			<input type="hidden" id="showBatchConfirmFlag" value="0"> 
 		</div> 
 	</div> 
 </div>
  <div class="ap_shopping" style="display:none" id="lastChangeDiv"></div> 
  <div class="productDelConfirm" style="display:none" id="productDelConfirm"> 
 
 
<p id="tips">确定从购物车删除此商品？</p> 
<p><button class="delProductNo" onclick="deleteone()">确定</button>
<button class="delProductNo">取消</button></p> 
</div> <div id="guaranteeArea"> 
</div>	</div>

	<!-- 部分选中 -->
	       <script type="text/javascript">
      // var  text1 = document.getElementById("total_price_top").innerHTML;	
	function danxuan(){
		//alert("hah");
		var totle = 0.0;
		var all = new Array();
		
		all = document.getElementsByName("cart2Checkbox");
		var length = all.length;
		//var partid = all.concat();
		//var j = 0;
		//alert(length);
		for(var i=0;i<length;i++){
				//alert(all[i].checked);
				if(all[i].checked){
					var onepriceStr = document.getElementById("b"+i).innerHTML;
					var oneprice = Number(onepriceStr);
					//alert(oneprice);
					totle = totle + oneprice;
				}
			}

		total_price_top.innerHTML = totle;
		total_price_bottom.innerHTML = totle;
		total_price_cen.innerHTML = totle;
		///alert(totle);
	}
	</script>
     <!-- 全选 -->   
 <script type="text/javascript">
	var  text1 = document.getElementById("total_price_top").innerHTML;
	function quanxuan(){
			var ischeck = document.getElementById("allselect_top").checked;
			//alert(text1);
			//alert(ischeck);
			var checkall = new Array();
			checkall = document.getElementsByName("cart2Checkbox");
			
			var length = checkall.length;
			
			for(var i=0;i<length;i++){
				//alert(checkall[i].checked);
				checkall[i].checked = ischeck;
			}
			if(!ischeck){
				total_price_top.innerHTML = "0.0";
				total_price_bottom.innerHTML = "0.0";
				total_price_cen.innerHTML = "0.0";
			}else{
				total_price_top.innerHTML = text1;
				total_price_bottom.innerHTML = text1;
				total_price_cen.innerHTML = text1;
			}
		}
</script>

	<!-- 提交订单 -->
	<script type="text/javascript">
		function payit(){
			//alert("提交订单");
			var str = "";
			var checks = new Array();
			checks = document.getElementsByName("cart2Checkbox");
			
			var hids = new Array(); 
			hids = document.getElementsByName("gid");
			var len = hids.length;
			//alert(len);
			for(var i=0;i<len;i++){
					var ch = checks[i].checked;
					//alert(ch);
					if(ch){
						//alert(i);
						var vals = hids[i].value;
						//alert(vals);
						str = str + "a" + vals;
						//alert(str);
					}
			}
			if(str == ""){
				alert("亲，您没选中任何商品欧！");
			}else{
				window.location.href=('../payIt?trolleyID=${sessionScope.carId }&goodsID='+str);		
			}

		}

	</script>
	<div id="redemptionPromotionList" class="promotion-box">


</div>
    <div id="dailyChoiceProductList" name="dailyChoiceProductList" class="none">
</div>

</div>
<!--[if IE 6]>
<script>
/*意见反馈*/
$(function(){
	var window_h = $(window).height();
    $(".feedback_box").attr("class","feedback_box2");
    var feedback_top = window_h/2 -85;
    $(".feedback_box2").css("top",feedback_top);
    var f_top = $(".feedback_box2").offset().top;	   
    $(window).scroll(function(){
    	var scrollsTop = $(this).scrollTop();
        var feedback_top_new = f_top+scrollsTop;
        $(".feedback_box2").css("top",feedback_top_new); 
       
    });
})
</script>
<![endif]-->
<!--意见反馈-->
<div id="freePromotionPopDiv" class="tips aptab_white none" style="top: 61px"></div>
<div id="seriesProduct" style="display:none"></div>
<div id="cart2BlockUI" style="display:none"></div>
<div id="cart2ErrorUI" style="display:none"></div>
<div id="optionalDiv" class="aptitle" style="display:none;"></div>
<div id="sensitiveProdMaskDiv"></div>
<div id="bindDiv"></div>

  <!--增加track跟踪信息-->
        <script>
        	trackerContainer.addParameter(new Parameter("productId","4306584"));
        	gotracker('2',"cartView:{items:[{pId:4306584,mid:9238,num:1,price:17.8}]}",null);
        </script>
        <!-- Google Code for &#25105;&#30340;&#36141;&#29289;&#36710; Remarketing List -->
		<script type="text/javascript">
		/* <![CDATA[ */
		var google_conversion_id = 1025835260;
		var google_conversion_language = "en";
		var google_conversion_format = "3";
		var google_conversion_color = "666666";
		var google_conversion_label = "bXwvCMDD5gEQ_IGU6QM";
		var google_conversion_value = 0;
		/* ]]> */
		</script>
		<script type="text/javascript" src="./mytrolley_files/conversion.js">
		</script></div>

	  <!--content end-->
	     <!--content end-->
<div id="footer">
	<div class="bordertop_solid mt20 pb10">
	<div class="sitemap2">
  <ul>
    <li>
      <a rel="nofollow" target="_blank" href="http://www.yihaodian.com/images/xkz.gif">音像制品经营许可证00-0165</a>
    </li>
    <li class="gray ml5 mr5">
      |
    </li>
    <li>
      <a rel="nofollow" target="_blank" href="http://www.miibeian.gov.cn/">沪ICP备08008885号</a>
    </li>
    <li class="gray ml5 mr5">
			|
		</li>
		<li>
			<a target="_blank" href="http://www.yihaodian.com/images/licence.JPG">营业执照</a>
		</li>
	</ul>
</div>
<div class="copyright">
	Copyright © 1号店网上超市 2007-2012， All Rights Reserved
</div>	</div>
</div>	    <!--js start-->
	    	    <script type="text/javascript" src="./mytrolley_files/global_site_bottom.js" charset="utf-8"></script>
	    <!--js end-->
<div>
<a style="color: #FFFFFF">
				6!$
				0%&amp;
				2#@
				10!$
		,
</a> 
<a style="color: #FFFFFF">374818</a>
</div><div class="error_info_show none">
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


<div class="pop_win" id="yhd_pop_win" style="display:none;"></div></body></html>