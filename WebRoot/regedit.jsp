<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0057)https://passport.yihaodian.com/passport/register_input.do -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><script src="./regedit_files/info.do"></script>

<title>注册1号店</title>
<link rel="shortcut icon" href="https://passport.yihaodian.com/images/favicon.ico">
<link href="./regedit_files/passport.css" rel="stylesheet" type="text/css">
<script type="text/javascript" async="" src="./regedit_files/ga.js"></script><script type="text/javascript" src="./regedit_files/jquery-1.4.2.min.js"></script>
 <script type="text/javascript" src="./regedit_files/check_all.js"></script> 
<script type="text/javascript" src="./regedit_files/reg_info.js"></script>
</head>
<body>
  <div id="simple_header">
      <div class="simplelogo">
      	<a href="http://www.yihaodian.com/" target="_blank">
	      			<img src="./regedit_files/loginlogo.jpg" height="55">
      	</a>
      </div>
      <div class="simplenav"> 
           		<p id="unloginP" class=""><strong>您好</strong>，欢迎光临1号店！<a href="https://passport.yihaodian.com/passport/login_input.do?errorTimes=">[请登录]</a>，新用户？<a href="./regedit_files/regedit.htm">[免费注册]</a></p>
          
          <div class="tr"><a href="http://www.yihaodian.com/cms/view.do?topicId=18942" target="_blank">帮助中心</a></div>
      </div>
      <div class="clear"></div>
  </div>
<script type="text/javascript">
var no3wUrl="yihaodian.com";
var siteType = 1;
var currSiteId = 1;
var URLPrefix = {"yaowang":"http://www.111.com.cn","passportother":"https://passport.1mall.com","central":"http://www.yihaodian.com","mymall":"http://my.1mall.com","mall":"http://www.1mall.com","yiwangauth":"http://mall.yiwang.cn","my":"http://my.yihaodian.com","tracker":"tracker.yihaodian.com","passport":"https://passport.yihaodian.com"};
</script>
<script type="text/javascript" src="./regedit_files/jquery.cookie.js"></script>
<script type="text/javascript" src="./regedit_files/login_cookie_sync.js"></script>
<script type="text/javascript" src="./regedit_files/check_all.js"></script>
<script type="text/javascript" src="./regedit_files/tracker_top.js"></script>
<script type="text/javascript" src="./regedit_files/tracker.js"></script>

        <link rel="shortcut icon" href="https://passport.yihaodian.com/images/yhd_favicon.gif">
  
<div id="container">
	<form action="https://passport.yihaodian.com/passport/register.do" method="post" name="registerform" id="registerform"> 
	<input type="hidden" name="outSiteType" value="1">
	<input type="hidden" name="user.referer" value="">
	<input type="hidden" name="activities" value="0">
	<input type="hidden" name="returnUrl" value="">
	<input type="hidden" id="url" value="https://passport.yihaodian.com/passport/register.do">
	<div id="main">
			<h1>注册新用户</h1>
			<div id="content">
				<div class="regBox" id="innerContent">
					<div class="tBox">
						<p class="regTitle"><strong>填写账户信息，以下信息均为必填：</strong></p>
						<p>
							<label>邮箱：</label>
							<input id="email" name="user.email" autocomplete="off" type="text" value="" class="fl redErorBodr" maxlength="100" 6="" onkeyup="showoff(&#39;email_desc&#39;);" onblur="checkEmailOnBlur();" onfocus="checkEmailOnBlur();hideOtherTips(&#39;email&#39;);">
							<span id="email_desc" class="fl" style="display: none; "></span>							
						</p>
						<p class="extra regRemind"><span id="email_tip" style="display: none; ">邮箱可作为登录账号，并用于找回密码，接收订单通知等</span><span id="email_error" class="errorinfo" style="display: inline-block; ">Email不能为空</span></p>
						
						<p>
							<label>用户名：</label>
							<input id="name" name="user.name" type="text" value="" onfocus="hideOtherTips(&#39;name&#39;)" onblur="checkNameOnBlur();" class="fl" onkeyup="showoff(&#39;name_desc&#39;);">
							<span id="name_desc" class="fl"></span>
						</p>
						<p class="extra regRemind"><span id="name_tip" style="display: none; ">4－20位字符，可由中文，字母，数字及特殊字符组成</span><span id="name_error"></span></p>
						
						<p>
							<label>密码：</label>
							<input id="password" name="user.password" type="password" onblur="checkPasswordOnBlur();" oncopy="return false;" oncut="return false;" onpaste="return false;" onfocus="checkPassWordContent();" onkeyup="changePassStrong();showoff(&#39;password_desc&#39;);" class="fl">
							
							<span id="passwordDesc"></span> 
							<span id="password_desc" class="fl"></span>
						</p>
						<p class="extra regRemind pswdLevel"><span id="password_tip" style="display: none; ">6－20位字符，可由大小写英文、数字或符号组成</span><span id="password_error"></span><span class="pswdLevelA" id="pswdLevel" style="display: none; "></span></p>
						<p>
							<label>确认密码：</label>
							<input id="password2" name="password2" type="password" onblur="checkPassword2OnBlur();" oncopy="return false;" oncut="return false;" onpaste="return false;" onfocus="hideOtherTips(&#39;password2&#39;)" class="fl" onkeyup="showoff(&#39;password2_desc&#39;);" disabled="">
							<span id="password2_desc" class="fl"></span>
						</p>
						<p class="extra regRemind"><span id="password2_tip" style="display: none; ">请再次输入登录密码</span><span id="password2_error"></span></p>
						<p class="verCode">
							<label>验证码：</label>
							<input name="validCode" id="validCode" type="text" class="w50 fl" onfocus="hideOtherTips(&#39;validCode&#39;)" onkeyup="showoff(&#39;validCode_desc&#39;);">
							<img id="valid_code_pic" alt="" src="./regedit_files/valid_code.do" class="yanzheng" style="border:0px;"><span class="vlidCdSpan">看不清，<a href="javascript:refresh_valid_code();">换一张</a></span>
							<span id="validCode_desc" style="display:none"></span>
						</p>
						<p class="extra regRemind"><span id="validCode_tip" style="display:none">请输入图片中的字符，不区分大小写</span><span id="validCode_error"></span></p>			
					</div>
					<div class="warn agreeBox">
					<span id="contract_desc" style="display:none" class="errorinfo">请选择"1号店"服务协议方可注册</span>
					<p class="yhdSerLink">
									<a ;="" onclick="window.open(&#39;http://www.yihaodian.com/cms/view.do?topicId=22209&#39;,&#39;&#39;, &#39;width=600,height=600,scrollbars=1&#39;)" href="https://passport.yihaodian.com/passport/register_input.do#">《1号店服务协议》</a>
						</p>
						<div class="btnBox">
						   <a href=""><img src="./regedit_files/agree.png"></img></a>
					    </div>
					</div>
				</div>
			</div>
		</div>
		</form>
</div>

	<div id="simplefooter"><a rel="nofollow" target="_blank" href="http://www.miibeian.gov.cn/">沪ICP备10215750号</a>|<a target="_blank" href="http://image.yihaodianimg.com/images/licence.JPG">营业执照</a><p>Copyright © 1号店网上超市 2007-2012， All Rights Reserved</p></div><script type="text/javascript">
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

<div>
<a style="color: #FFFFFF">
				107!$
				0%&amp;
				3#@
				10!$
		,
</a> 
<a style="color: #FFFFFF">400850</a>
</div>    <script type="text/javascript" src="./regedit_files/tracker_hijack.js"></script>


<!-- Google Code for &#27880;&#20876;&#39029;&#38754; Remarketing List -->
<script type="text/javascript">
/* <![CDATA[ */
var google_conversion_id = 1025835260;
var google_conversion_language = "en";
var google_conversion_format = "3";
var google_conversion_color = "666666";
var google_conversion_label = "xMNsCLDF5gEQ_IGU6QM";
var google_conversion_value = 0;
/* ]]> */
</script>
<script type="text/javascript" src="./regedit_files/conversion.js">
</script><img height="1" width="1" border="0" src="./regedit_files/saved_resource">
<noscript>
&lt;div style="display:inline;"&gt;
&lt;img height="1" width="1" style="border-style:none;" alt="" src="https://www.googleadservices.com/pagead/conversion/1025835260/?label=xMNsCLDF5gEQ_IGU6QM&amp;amp;guid=ON&amp;amp;script=0"/&gt;
&lt;/div&gt;
</noscript>
</body></html>