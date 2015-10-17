/**
 * 登录相关的cookie数组
 */
var loginCookieArr = ["ut","uname","yihaodian_uid","ac","ucocode","msessionid"];

/**
 * 带有timeout设置的ajax jsonp请求
 */
function jsonpAjaxWithTimeout(requestUrl,callbackFunction){
	//设置cookie
	jQuery.ajax({
		url:requestUrl, 
		dataType:"jsonp",
		timeout:3000,
		success:function(data, textStatus){
			callbackFunction(data);
		},
		error:function(XMLHttpRequest, textStatus, errorThrown){
			callbackFunction();
		}
	});
}

/**
 * 获取指定名称的cookie的值
 */
function getCookie(objName) {
	var arrStr = document.cookie.split(";");
	for ( var i = 0; i < arrStr.length; i++) {
		var temp = arrStr[i].split("=");
		if (temp[0].replace(/(^\s*)|(\s*$)/g, "") == objName) {
			return temp[1];
		}
	}
	return "";
};


/**
 * 登陆相关cookie同步
 * type=1,当前站点必须为1mall,则从商城同步到1haodian
 * type=2,当前站点必须为yihaodian,则从1haodian同步到商城
 */
function loginCookieSyncSend(type,callbackFun){
	//获取本地域中cookie
	var cookieStr = "";
	var arrStr = document.cookie.split(";");
	for ( var i = 0; i < arrStr.length; i++) {
		var temp = arrStr[i].split("=");
		for(var k=0;k<loginCookieArr.length;k++){
			var cookieName = jsTrim(temp[0]);
			var cookieValue = jsTrim(temp[1]);
			if(cookieName == loginCookieArr[k]){
				cookieStr += "&cookieDatas="+encodeURIComponent(cookieName+",,"+cookieValue+",,"+"0");
				continue;
			}
		}
	}
	
	var passportUrl = "";
	if(type == siteType){
		passportUrl = URLPrefix.passport;
	}else{
		passportUrl = URLPrefix.passportother;
	}
	var requestUrl = passportUrl+"/yhd-common/cookie-set-api.do?timestamp="+new Date()+ cookieStr+"&callback=?";
	jsonpAjaxWithTimeout(requestUrl,callbackFun);
}

/**
 * 去掉空格
 * @param str
 * @returns
 */
function jsTrim(str) {
	return str.replace(/\ /g,"");
} 

/**
 * 清除登录cookie\
 * type = 1:退出1号店
 * type = 2:退出1mall
 */
function logoutJsonp(type,callbackFun){
	var passportUrl = "";
	if(type == siteType){
		passportUrl = URLPrefix.passport;
	}else{
		passportUrl = URLPrefix.passportother;
	}
	var requestUrl = passportUrl+"/passport/logoutJsonp.do?timestamp="+new Date()+"&callback=?";
	jsonpAjaxWithTimeout(requestUrl,callbackFun);
}

/**
 * 登录同步cookie
 * @param isAgreeAuth
 * @param redirectURL
 */
function loginSyncCookie(isAgreeAuth,redirectURL){
	if(isAgreeAuth == 1){//已授权
		var syncType = (siteType && siteType == 1) ? 2 : 1 ;
		loginCookieSyncSend(syncType,function (){
			window.location = redirectURL;
		});							
	}else{//未授权则将另一个网站退出登录
		var logoutType = (siteType && siteType == 1) ? 2 : 1 ;
		logoutJsonp(logoutType,function(){
			window.location = redirectURL;
		});		
	}
}

/**
 * 判断是否已授权
 * @param callbackF
 */
function isAgreeAuth(callbackF){
	var ut = getCookie("ut");
	if(!ut){
		return;
	}
	var requestUrl = URLPrefix.passport+"/legal/isAgreeAuth.do?timestamp="+new Date()+ "&ut="+ut+"&callback=?";
	jsonpAjaxWithTimeout(requestUrl,callbackF);
}

/**
 * 从一号店同步cookie到1号商城
 */
//
//function loginCookieSyncGet(callbackFun){
//	var requestUrl = URLPrefix.passportother+"/yhd-common/login-api.do?callback=?";
//	jsonpAjaxWithTimeout(requestUrl,function(data){
//			if(data && !data.ERROR){
//				var flag = false;
//				jQuery(data.info).each(function(){
//					for(var k=0;k<loginCookieArr.length;k++){
//						if(this.name == loginCookieArr[k]){
//							jQuery.cookie(this.name,decodeURIComponent(this.value),{domain:no3wUrl,path:"/"});
//						}
//						if(this.name == 'msessionid'){
//							flag = true;
//						}
//					}
//				});		
//				//如果同步中没有msessionid，则再同步一次
//				if(!flag){
//					jsonpAjaxWithTimeout(requestUrl,function(data){
//						if(data && !data.ERROR){
//							jQuery(data.info).each(function(){
//								if(this.name == 'msessionid'){
//									jQuery.cookie(this.name,decodeURIComponent(this.value),{domain:no3wUrl,path:"/"});
//								}
//							});		
//							callbackFun();
//						}else{
//							callbackFun();
//						}
//					});
//				}else{
//					callbackFun();
//				}
//			}else{
//				callbackFun();
//			}
//	});
//}

/**
 * 显示同意授权协议框
 * @param userSiteType
 * @param random
 * @param returnUrl
 * @param resetIframeUrl
 */
function showAgreeNewContract(userSiteType,random,returnUrl,resetIframeUrl){
	var passportUrl = "";
	//用户站点类型与登陆站点不一致则需要授权
	if(userSiteType && userSiteType == siteType){
		passportUrl = URLPrefix.passport;
		
		var encodeUrl = encodeURIComponent(returnUrl);
		
		var url =  passportUrl+"/legal/showNewContract.do?random="+random+"&returnUrl="+encodeUrl;
		if(resetIframeUrl){
			url = resetIframeUrl+"?result="+LOGIN_RESULT.FAIL+"&exceptionUrl="+encodeURIComponent(url);
		}
		window.location = url;
	}else{
		passportUrl = URLPrefix.passportother;
		
		//只有1号商城中登陆1号店，才有协议更新
		var showContract = 0;
		if(siteType == 2){
			showContract = 1;
		}
		
		var encodeUrl = encodeURIComponent(returnUrl);
		var url =  passportUrl+"/legal/showAuth.do?random="+random+"&returnUrl="+encodeUrl+"&showContract="+showContract;
		if(resetIframeUrl){
			url = resetIframeUrl+"?result="+LOGIN_RESULT.SUCCESS+"&exceptionUrl="+encodeURIComponent(url);
		}
		window.location = url;
	}
}

/**
 * 显示授权框
 * @param userSiteType
 * @param random
 * @param returnUrl
 * @param resetIframeUrl
 */
function showAuth(userSiteType,random,returnUrl,resetIframeUrl){
	var passportUrl = "";
	if(userSiteType && userSiteType == siteType){
		passportUrl = URLPrefix.passport;
	}else{
		passportUrl = URLPrefix.passportother;
	}
	var encodeUrl = encodeURIComponent(returnUrl);
	var url  = passportUrl+"/legal/showAuth.do?random="+random+"&returnUrl="+encodeUrl;
	if(resetIframeUrl){
		url = resetIframeUrl+"?result="+LOGIN_RESULT.SUCCESS+"&exceptionUrl="+encodeURIComponent(url);
	}
	window.location = url;
	
}
