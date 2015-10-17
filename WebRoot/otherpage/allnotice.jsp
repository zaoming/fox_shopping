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

	<title>91公告</title>

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
                     <li><a class="myshoppingcart" href="#" onclick="addTrackPositionToCookie(&#39;1&#39;,&#39;shopping_4&#39;);">购物车</a>|</li>
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

#main{

}
</style>
	
	<div id="freePromotionList" class="mt10">
		<div id="free_promotion_container">
    
</div>
	</div>
	
	<div id="cart2_content">
<style type="text/css"> 
.ap_area { left: 50%; top:150px; margin-left: 295px; margin-top: 0px; position: absolute; } 
.pop_win { background-Color: #FFF; } 
</style> 



<!---------注意事项 ---------> 

    	<div class="gray-box pro-li"> 
           <hr color="#A71F24" size=""/>

         <div id="main">
          
	<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#a8c7ce">
      <tr>
        <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">公告标题</span></div></td>
        <td width="50%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">公告内容</span></div></td>
        <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">发布时间</span></div></td>
        <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">基本操作</span></div></td>
      </tr>
      
      <c:forEach items="${sessionScope.noticelistPro }" var="nc">
      <tr>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center">${nc.placardTitle }</div></td>
        <td height="40" bgcolor="#FFFFFF" class="STYLE6"><div align="center">${nc.placardContent }</div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center">${nc.iSsueDate }</div></td>
        <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE21">
        <a href="../oneNotice?placardTitle=${nc.placardTitle }&placardContent=${nc.placardContent }&updateDate=${nc.updateDate }" >查看详情</a>
        </div></td>
        
      </tr>
      </c:forEach>
      
    </table>


        </div>

 </div>
    
    
 <script>var pms_cart_id='4306584,';</script> 
  <div class="ap_shopping" style="display:none" id="lastChangeDiv"></div> 
  <div class="productDelConfirm" style="display:none" id="productDelConfirm"> 
 
 
</div> <div id="guaranteeArea"> 
</div>	</div>

	

	
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