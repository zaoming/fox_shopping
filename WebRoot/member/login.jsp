<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0066)https://passport.yihaodian.com/passport/login_input.do?errorTimes= -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	 
	<title>登录91商城</title>
	<meta name="generator" content="editplus">
	<meta name="author" content="">
	<meta name="keywords" content="">
	<meta name="description" content="">
	<link href="./login_files/passport.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" async="" src="./login_files/ga.js"></script><script type="text/javascript" src="./login_files/jquery-1.8.1.min.js"></script>

	<script>
		var returnUrl = "";
		var ipTimes = 10;
		var ipWhiteFlag = 0;
		var currSiteId = 1;
		var siteType = 1;
		var loginSiteType = 1;//登录站点
		
		$(document).ready(function (){
		var account_value="<%=request.getParameter("email") %>";
		//alert(account_value);
		if(account_value !="" && account_value.length>=1 && account_value != "null"){
    		$("#un").val(account_value);
	    }else{
        	$("#un").val("E-mail/手机号码/用户名");
        }
	         
		$("#un").focus(function(){$("#un").addClass("curr_ipt198");if($("#un").val()=="E-mail/手机号码/用户名"){$("#un").val("");}});
		$("#un").blur(function(){
			$("#un").removeClass("curr_ipt198");
			var param="credentials.username="+ jQuery("input[name='credentials.username']").val();	
			var url="https://passport.yihaodian.com/publicPassport/showValidate.do?"+param+"&callback=?";
		});
		$("#un").keydown(function(){$("#accountDesc").hide();});
		$("#pwd").focus(function(){$("#pwd").addClass("curr_ipt198");});
		$("#pwd").blur(function(){$("#pwd").removeClass("curr_ipt198");});
		$("#pwd").keydown(function(){$("pwd_desc").hide();});
		$("#vcd").focus(function(){$("#vcd").addClass("ipt w98 curr_ipt98");});
		$("#vcd").blur(function(){$("#vcd").removeClass("curr_ipt198");});
	});
	
	function register(){
		var exce_email= /^[a-zA-Z0-9][.\w]+@[a-zA-Z0-9]+(\.[a-zA-Z0-9]+)+$/;
		var exce_name= /^[a-zA-Z]\w{3,15}$/;
		if(exce_name.test($("#un").val())){$("#r_name").val($("#un").val());}
		else if(exce_email.test($("#un").val())){$("#r_email").val($("#un").val());}
		$('#registerform').submit();
	}
	
		function doEnter(event){
			var keyCode=event.keyCode;
			if(keyCode=="13"){
				double_submit();
			}else{
				$("#pwd_desc").hide();
			}
		}
			
		function double_submit(){
			//将上次的错误提示清空
			$("#accountDesc").hide();
			$("#accountDescAlipay").hide();
			$("#vcd_desc").hide();
			$("#pwd_desc").hide();
			
			var account_value=$("#un").val();
			if(account_value=="" || account_value=="E-mail/手机号码/用户名"){
				$("#accountDesc").text("登录账号不能为空");
				$("#accountDesc").show();
				$("#un").focus();
				return false;
			}else if(account_value.length>100){
				$("#accountDesc").text("账号长度不能超过100位");
				$("#accountDesc").show();
				$("#un").focus();
				return false;
			}else if(account_value.toLowerCase().indexOf("<script")>-1 ||account_value.toLowerCase().indexOf("</script")>-1){
				$("#accountDesc").html("账号中包含非法字符");
				$("#accountDesc").show();
				$("#un").focus();
				return false;
			}
			var pattern = /\s+/;
			var pwd_value=$("#pwd").val();
			if($("#pwd").val()==""){
				 $("#pwd_desc").text("登录密码不能为空");
	    		 $("#pwd_desc").show();
	    		 $("#pwd").focus();
	    		 return false;
			}else if(pattern.test(pwd_value)){
				 $("#pwd_desc").text("登录密码不能有空格");
	    		 $("#pwd_desc").show();
	    		 $("#pwd").focus();
	    		 return false;
			}

			var vcd_value=$("#vcd").val();
			if($("#vcd").val()==""){
				$("#vcd_desc").text("验证码不能为空");
				$("#vcd_desc").show();
				$("#vcd").focus();
				return false;
			}else if(vcd_value.length>4 || vcd_value.length<4){
				$("#vcd_desc").text("验证码只能为4位");
				$("#vcd_desc").show();
				$("#vcd").focus();
				return false;
			}
			return true;
		    
		}
		
		function refresh_valid_code(){
			var dt = new Date(); 
			var validObj = $("#valid_code_pic");
			if(validObj){
				validObj.attr("src","/passport/valid_code.do?t=" + dt); 
			}
	    }

	    function mysubmit(){
			//alert(double_submit());
			if(double_submit()){
				$("#loginform").submit();
			}
		}
	</script>
</head>

<body>
	<!--simple_header-->
  <div id="simple_header">
      <div class="simplelogo">
      	<a href="<%=path %>/index.jsp" target="_blank">
	      			<img src="./login_files/91logo.png" height="55" />
      	</a>
      </div>
      <div class="simplenav"> 
           		<p id="unloginP" class=""><strong>您好</strong>，欢迎光临91商城！<a href="">[请登录]</a>，新用户？<a href="<%=path %>/member/regedit.jsp">[免费注册]</a></p>
          
          <div class="tr"><a href="<%=path %>/index.jsp" target="_blank">帮助中心</a></div>
      </div>
      <div class="clear"></div>
  </div>
<script type="text/javascript" src="./login_files/jquery.cookie.js"></script>
<script type="text/javascript" src="./login_files/login_cookie_sync.js"></script>
<script type="text/javascript" src="./login_files/check_all.js"></script>
<script type="text/javascript" src="./login_files/tracker_top.js"></script>
<script type="text/javascript" src="./login_files/tracker.js"></script>

        <link rel="shortcut icon" href="https://passport.yihaodian.com/images/yhd_favicon.gif">
  
	<div id="container">
		<div id="main">
			<h1>用户登录</h1>
			<div class="login_box">
				<form action="<%=path %>/member/memberLogin" method="post" id="loginform" name="loginform">
					<input type="text" id="returnUrl" name="from" value="<%=request.getParameter("from") %>" />
					<input type="hidden" id="passportURL" value="" />
	            	<div class="login_left">
	                	<div class="login_form2 errofinfoRight">
	                    	<p>
	                    		<span class="errorinfo" id="accountDescAlipay" style="display:none;"></span>
		                    	<label>登录账号：</label>
		                    	<input id="un" type="text" spellcheck="false" name="credentials.username" class="ipt w200 grey9" value="" />
		                    	<span id="accountDesc" class="errorinfo" style="display:none"></span>
	                    	</p>
	                        <p>
	                        	<label>密码：</label>
	                        	<input id="pwd" type="password" name="credentials.password" class="ipt w200" onkeydown="doEnter(event);" />
	                        	<span class="errorinfo " id="pwd_desc" style="display:none"></span>
	                        	<a href="" class="ml10">忘记密码？</a>
                        	</p>
                        	<p>
                        		<span id="vcd_div" style="">
									<label>验证码：</label>
		                         	<input id="vcd" type="text" class="ipt w98" name="validCode" /> 
		                         	<img id="valid_code_pic" class="code" src="./image.jsp" alt=""></img>
		                         	<a href="javascript:refresh_valid_code();">看不清，换一张</a>
		                         	<span id="vcd_desc" style="display:none" class="errorinfo fl">验证码不正确！</span> 
	                        	</span> 
	                        	<script>
	                        			jQuery("#vcd_div").show();
                        		</script>
	                        </p>
	                        		<p class="yhdMallLog">
		                        		<span class="heguiBtn short loginRed"><a onclick="mysubmit()"><img src="./login_files/login.png"></img></a></span>
		                        		<span class="heguiBtn loginGrey">
		                        		</span>
	                        		</p>
	                        
	                    </div>
	                </div>
                </form>
	              
				<form action="" method="post" id="registerform">
	                <div class="regist_right">
	                	<p><strong>您还不是91商城会员吗？</strong></p>
	                    <p>现在免费注册成为91商城用户，不出家门就能享受更多的优惠哦！</p>
	                    <p class="tc"><a href="regedit.jsp" class="btn_grey2"><img src="./login_files/regedit.png"></img></a></p>
	                    <input type="hidden" name="user.name" id="r_name" />
	                    <input type="hidden" name="user.email" id="r_email" />
	                    <input type="hidden" name="returnUrl" value="" />
	                </div>
                </form>
                <div class="clear"></div>
            </div>
		</div>

	</div>

	<div id="simplefooter"><a rel="nofollow" target="_blank" href="">沪ICP备10215750号</a>|<a target="_blank" href="http://image.yihaodianimg.com/images/licence.JPG">营业执照</a><p>Copyright © 91商城网上超市 2007-2012， All Rights Reserved</p></div><script type="text/javascript">
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

<div>
<a style="color: #FFFFFF">
				89!$
				1%&amp;
				2#@
				10!$
		,
</a> 
<a style="color: #FFFFFF">400850</a>
</div>    <script type="text/javascript" src="./login_files/tracker_hijack.js"></script>

    

	<!-- Google Code for &#30331;&#24405;&#39029;&#38754; Remarketing List -->
	<script type="text/javascript">
	/* <![CDATA[ */
	var google_conversion_id = 1025835260;
	var google_conversion_language = "en";
	var google_conversion_format = "3";
	var google_conversion_color = "666666";
	var google_conversion_label = "CbF9CKjG5gEQ_IGU6QM";
	var google_conversion_value = 0;
	/* ]]> */
	</script>
	<script type="text/javascript" src="./login_files/conversion.js">
	</script><img height="1" width="1" border="0" src="./login_files/saved_resource">
	
</body></html>