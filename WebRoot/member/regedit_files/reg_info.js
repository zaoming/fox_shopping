var clickFlag=false;
var nowid;
var totalid;
var can1press = false;
var emailafter;
var emailbefor;
var isShow = true;
var isRed = true;
var showCodeFlag = false;
$(document).ready(function(){
	$("#email").focus(function(){$("#email").addClass("curr_ipt198");});
	$("#email").blur(function(){$("#email").removeClass("curr_ipt198");});
	$("#name").focus(function(){$("#name").addClass("curr_ipt198");});
	$("#name").blur(function(){$("#name").removeClass("curr_ipt198");});
	$("#password").focus(function(){$("#password").addClass("curr_ipt198");});
	$("#password").blur(function(){$("#password").removeClass("curr_ipt198");});
	$("#password2").focus(function(){$("#password2").addClass("curr_ipt198");});
	$("#password2").blur(function(){$("#password2").removeClass("curr_ipt198");});
	$("#validCode").focus(function(){$("#validCode").addClass("curr_ipt98");});
	$("#validCode").blur(function(){$("#validCode").removeClass("curr_ipt98");})
	jQuery("#email").focus().addClass("curr_ipt198");
	$("#validCode").val("");
	if(showCodeFlag==true){
		jQuery("#validCode_tip").hide();
		jQuery("#validCode_error").show();
		
	}
	jQuery("#email").keyup(function(event){ 
		
	     //获取当前按键的键值 
	     //jQuery的event对象上有一个which的属性可以获得键盘按键的键值 
	     var keycode = event.which;
	     //处理回车的情况 
	    if(keycode==8){
	    	isShow=true;
	    }
	 });
	jQuery("#validCode").keyup(function(event){ 
		
	     //获取当前按键的键值 
	     //jQuery的event对象上有一个which的属性可以获得键盘按键的键值 
	     var keycode = event.which;
	     //处理回车的情况 
	     if(keycode==13){ 
	    	 if(doSubmit()){
	    		jQuery("#registerform").submit();
	    	 }
	    } 
	     //处理esc的情况 
	     if(keycode == 27){ 
	       
	       
	     } 
	 });
	jQuery("#name").keypress(function(event){ 
		
	     //获取当前按键的键值 
	     //jQuery的event对象上有一个which的属性可以获得键盘按键的键值 
	     var keycode = event.which;
	     //处理回车的情况 
	    if(keycode==32){
	    	return false;
	    }
	 });
	jQuery("#email").keypress(function(event){ 
		
	     //获取当前按键的键值 
	     //jQuery的event对象上有一个which的属性可以获得键盘按键的键值 
	     var keycode = event.which;
	     //处理回车的情况 
	    if(keycode==8){
	    	isShow=true;
	    }
	 });
    $("#email").focus(function(){ // 文本框获得焦点，插入Email提示层
    	jQuery("#email").removeClass("redErorBodr");
        $("#myemail").remove();
        hideOtherTips("email");
	$(this).after("<div id='myemail'></div>");
        if($("#myemail").html()){
             $("#myemail").css("display","block");
	$(".newemail").css("width",$("#myemail").width());
		can1press = true;
        } else {
             $("#myemail").css("display","none");
		can1press = false;
        }		
    }).keyup(function(){
   	 if(clickFlag==false){
        $("#myemail").remove();
    	$(this).after("<div id='myemail'></div>");
            if($("#myemail").html()){
                 $("#myemail").css("display","block");
    	$(".newemail").css("width",$("#myemail").width());
    			can1press = true;
            } else {
                 $("#myemail").css("display","none");
                 can1press = false;
            }
     }
   	 
    	// 文本框输入文字时，显示Email提示层和常用Email
		var press = $("#email").val();
		if ((press!="" || press!=null)&&clickFlag==false&&isShow==true){
		var emailtxt = "";			
		var emailvar = new Array("@163.com","@qq.com","@126.com","@hotmail.com","@gmail.com","@sohu.com","@yahoo.cn","@139.com","@sina.com.cn","@vip.sina.com","@msn.com");
		totalid = emailvar.length;
			
			if(!(isEmail(press))){
			    for(var i=0; i<emailvar.length; i++) {
				    emailtxt = emailtxt + "<div class='newemail' style='width:170px; color:#6B6B6B; overflow:hidden;'><font >" + press + "</font>" + emailvar[i] + "</div>"
			    }
			} else {
			    emailbefor = press.split("@")[0];
			    emailafter = "@" + press.split("@")[1];
			    for(var i=0; i<emailvar.length; i++) {
			         var theemail = emailvar[i];
			         if(theemail.indexOf(emailafter) == 0)
			         {
				         emailtxt = emailtxt + "<div class='newemail' style='width:170px; color:#6B6B6B; overflow:hidden;'><font color='#D33022'>" + emailbefor + "</font>" + emailvar[i] + "</div>"
				     }
			    }
			}
			$("#myemail").html(emailtxt);
			if($("#myemail").html()){
				 $("#myemail").css("display","block");
				 $(".newemail").css("width",$("#myemail").width());
				 can1press = true;
			} else {
				 $("#myemail").css("display","none");
				 can1press = false;
			}
			beforepress = press;
		}
		if (press=="" || press==null){
		    $("#myemail").html("");		
		    
		     $("#myemail").css("display","none");    
		}				
    })
	$(document).click(function(){ // 文本框失焦时删除层
        if(can1press){
			$("#myemail").remove();
			can1press = false;		
		}
    })
    $(".newemail").live("mouseover",function(){ // 鼠标经过提示Email时，高亮该条Email
        $(".newemail").css("background","#FFFFFF");
        $(this).css("background","#E0EEE0");
        jQuery("#email").removeClass("redErorBodr");
		$(this).focus();
		nowid = $(this).index();
    }).live("click",function(){ // 鼠标点击Email时，文本框内容替换成该条Email，并删除提示层
        var newhtml = $(this).html();
        newhtml = newhtml.replace(/<.*?>/g,"");
        jQuery("#email").removeClass("redErorBodr");
        $("#email").val(newhtml); 
        $("#myemail").remove();
        jQuery("#email_error").hide();
        checkEmailOnBlur();
    })
	$(document).bind("keydown",function(e)  
	{     
		if(can1press){
			switch(e.which)     
			{            
				case 38:
				if (nowid > 0){		

					isRed = false;
					clickFlag = true;
					$(".newemail").css("background","#FFF");
					$(".newemail").eq(nowid).prev().css("background","#CACACA").focus();
					nowid = nowid-1;		
				}
				if(!nowid){

					isRed = false;
					clickFlag = true;
					nowid = 0;
					$(".newemail").css("background","#FFF");
					$(".newemail").eq(nowid).css("background","#CACACA");		
					$(".newemail").eq(nowid).focus();				
				}
				break;       
		
				case 40:
				if (nowid < totalid){	
					clickFlag = true;

					isRed = false;
					$(".newemail").css("background","#FFF");
					$(".newemail").eq(nowid).next().css("background","#CACACA").focus();
					nowid = nowid+1;			
				}
				if(!nowid){
					nowid = 0;
					clickFlag = true;

					isRed = false;
					$(".newemail").css("background","#FFF");
					$(".newemail").eq(nowid).css("background","#CACACA");		
					$(".newemail").eq(nowid).focus();				
				}
				break;  
		
				case 13:
				clickFlag = false;
				isRed = false;
				var newhtml = $(".newemail").eq(nowid).html();
				newhtml = newhtml.replace(/<.*?>/g,"");
				$("#email").val(newhtml); 
				$("#myemail").remove();
				jQuery("#email_error").hide();
				jQuery("#email").focus();
				isShow = false;
				checkEmailOnBlur();
			}
		}   
	})
}) 


	// 检查email邮箱
	function isEmail(str){
	    if(str.indexOf("@") > 0)     
	    {     
	        return true;
	    } else {
	        return false;
	    }
	}

	function doSubmit(){  
	if(doSubmitPwd()==false){
		return false;
	}
	var check_email_rs=check_email();
	if(check_email_rs==1){
		  showEmailError("Email不能为空");
		return false;
	}else if(check_email_rs==2){
		 showEmailError("");
		 $("#email_error").html("邮箱格式错误");
         return false;
	}else if(check_email_rs==3){
		showEmailError("");
	   $("#email_desc").html("邮箱长度不能超过100位");
	   return false;
	}
	else if($("#email_desc").html()=="重复的email"){
		$("#email").focus();
		return false;
	}
	
	var check_name_rs=check_Name();
	if(check_name_rs==1)
	{
		showNameError("用户名不能为空");
	   
	    return false;
	}
	else if(check_name_rs==2)
	{
		showNameError("用户名为4-20位字符");
	   
	    return false;
	}
	else if(check_name_rs==3)
	{
		showNameError("用户名为4-20位字符");
	   
	    return false;
	}
	else if(check_name_rs==4)
	{
		showNameError("用户名格式错误");
	    
	    return false;
	}
	else if($("#name_desc").text()=="用户名已被注册，请重新输入或使用该用户名登录"){
		
		return false;
	}
   
    if($("#validCode").val()==""){
    	showCodeError("验证码不能为空");
    	
    	return false;
    }else if($("#validCode").val().length != 4) {
    	showCodeError("验证码长度必须是4位");
    
    	return false;
    }else
    {
    	$("#validCode_desc").hide();
    }
    
    if($("#contract").attr("checked")==false){
    	$("#contract_desc").show();
    	
    	return false;
    }
	return true;
}  
	function doSubmitPwd(){
		var check_pwd1_rs=check_pwd1();
		if (check_pwd1_rs==1){
			showPassError("密码不能为空");
			return false;
		}
		if(check_pwd1_rs==2){
			showPassError("密码为6-20位字符");    
			return false;
        }
		if(check_pwd1_rs==3){
        	showPassError("密码为6-20位字符");
        	return false;
        }
        if(check_pwd1_rs==4){
        	showPassError("密码中不允许有空格");
        	return false;
        }
        if(check_pwd1_rs==5){
        	showPassError("密码不能全为数字");
        	return false;
        }
        if(check_pwd1_rs==6){
        	showPassError("密码不能全为字母，请包含至少1个数字或符号 ");
        	return false;
        }
        if(check_pwd1_rs==7){
        	showPassError("密码不能全为符号");
        	return false;
        }
         if(check_pwd1_rs==8){
        	showPassError("密码不能全为相同字符或数字");
        	return false;
        }
        if(check_pwd1_rs==9){
        	showPassError("密码与用户名相似，为了您的账户安全请重新输入");
        	return false;
        }
	    var check_pwd2_rs=check_pwd2();
	    if(check_pwd2_rs==1){
	     	showPass2Error("确认密码不能为空");
		  
			return false;
	    }else if(check_pwd2_rs==2){
	    	showPass2Error("两次密码输入不一致");
		
			return false;
	    }
	}