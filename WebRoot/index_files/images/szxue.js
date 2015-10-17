/**
 *@author readkid
 *@dependence jquery 1.2
 *@since 2010/1/15
 *@version 1.0
 *引入easing插件，用户体验佳
 */  
jQuery.easing['jswing'] = jQuery.easing['swing'];
jQuery.extend( jQuery.easing,
{
	def: 'easeOutQuad',
	easeOutCubic: function (x, t, b, c, d) {
		return c*((t=t/d-1)*t*t + 1) + b;
	}
});

(function() {
	$.suning || ($.suning = {});
	$.suning.productView = {};
	//继承
	$.suning.productView.extend = function (subClass, superClass) {
		var F = function() {};
		F.prototype = superClass.prototype;
		subClass.prototype = new F();
		superClass.prototype.constructor = superClass;
		subClass.prototype.constructor = subClass;
		subClass.base = superClass.prototype;
	}
})();

//tickcount
$.suning.spiketTime = function(id,startTime, endTime) {
	if (endTime <=0) 
		return;
	var base = $("#"+id).find('span');
	var s1 = base.eq(1);
	var s2 = base.eq(2);
	var s3 = base.eq(3);
	var type = 1;
	
	if (startTime < 0) {
		base.eq(0).html("距离结束时间：")
	
	} else {
			base.eq(0).html("距离开始时间：")
	}
	
	
	function formatTime(t) {
			if (t > 0) {
				var totalSecond = t / 1000;
				var minute = Math.floor(totalSecond / 60);
				var hour = Math.floor(minute / 60);
				minute = minute % 60;
				var second = Math.floor(totalSecond % 60);
				return [hour, minute, second];
				
			} else {
				return [0, 0, 0];
				
			}
	}
	
	function changeType() {
		base.eq(0).html("距离结束时间：")
	}
	
	var timerLeft = function(t, e) {
		var start = (new Date()).getTime();
		
		return {
			getLeft: function() {
				var now = (new Date()).getTime();
				var s = t - (now - start);
				if (s <=0 && type == 1) {
					changeType();
					
					this.getLeft = function() {
						var now = (new Date()).getTime();
						var s = e - (now-start);
						return s;
					}
					return this.getLeft();
				}
				return s;
			},
			render: function() {
				var arr = formatTime(this.getLeft());
				if(arr[0] > 9){
					s1.css('letter-spacing','0');
				}else{
					s1.css('letter-spacing','0');	
				}
				if(arr[1] > 9){
					s2.css('letter-spacing','0');
				}else{
					s2.css('letter-spacing','0');
				}
				if(arr[2] > 9){
					s3.css('letter-spacing','1px');
				}else{
					s3.css('letter-spacing','0');	
				}
				s1.html(arr[0]);
				s2.html(arr[1]);
				s3.html(arr[2])
			}
		}
	};
	
	var tl = timerLeft(startTime, endTime);
	tl.render();
	setInterval(function() {
		tl.render();
	},1000);
}
/* 首页左侧导航 */
function SNmenuNav(){
	$("#SNmenuNav dl").hover(function(){
		$(this).find("dt a").addClass("on");
		$(this).find("dd").show();
		$(this).find("dt b").hide();
	},function(){
		$(this).find("dt a").removeClass("on");
		$(this).find("dd").hide();
		$(this).find("dt b").show();
	})
}

/* 首页八联版 */
SNTabFlash = function(){
	var timer;
	var len = $("#SNflashBtn").find("dt").length ;
	var index = 0 ;
	$("#SNflashContent").find("ul").width( 530*len );
	
	$("#SNflash").hover(function(){
		 clearInterval(timer);
	},function(){
		 timer = setInterval(function(){
			if(index>=len-1){index=-1};						 
			index++;
			auto(index);			
		},3600);
	}).trigger("mouseleave");
	
	$("#SNflashBtn").find("dt").mouseover(function(){
		index  =  $("#SNflashBtn").find("dt").index(this);
		setTimeout(function(){
			auto(index);
		},200);				
	});
	
	function auto(index){
		$("#SNflashBtn").find("dt").removeClass("on").eq(index).addClass("on");				   
		$("#SNflashContent").find("ul").stop().animate({"left":[-530*index,'easeOutCubic']},300);	
	}	
}
/*滚动效果*/
SNgroupScroll = function(){
	var index = 0;
	var i = 0;
	var len1 = $("#SNgroupScroll li").length;
	var len2 = $("#SNSpikeMore li").length;
	$("#SNgroupScroll .iconR a").click(function(){
		$("#SNgroupScroll .iconL a").removeClass("nobg");										
		if(index>len1-2){
			return false;				
		}
		index++;	
		$("#SNgroupScroll ul").stop().animate({"left":-154*index},300,function(){
			if(index == len1-1){
				$("#SNgroupScroll .iconR a").addClass("nobg");
			}			
		});			
	});
	$("#SNgroupScroll .iconL a").click(function(){
		$("#SNgroupScroll .iconR a").removeClass("nobg");										
		if(index<=0){
			return false;
		}
		index--;	
		$("#SNgroupScroll ul").stop().animate({"left":-154*index},300,function(){
			if(index == 0){
				$("#SNgroupScroll .iconL a").addClass("nobg");
			}																   
		});		
	});
	
	$("#SNSpikeMore .iconR a").click(function(){
		$("#SNSpikeMore .iconL a").removeClass("nobg");										  
		if(i>len2-2){
			return false;
		}
		i++;	
		$("#SNSpikeMore ul").stop().animate({"left":-250*i},300,function(){
			if(i == len2-1){
				$("#SNSpikeMore .iconR a").addClass("nobg");
			}															 
		});										
	});
	$("#SNSpikeMore .iconL a").click(function(){
		$("#SNSpikeMore .iconR a").removeClass("nobg");									  
		if(i<=0){
			return false;
		}
		i--;	
		$("#SNSpikeMore ul").stop().animate({"left":-250*i},300,function(){
			if(i == 0){
				$("#SNSpikeMore .iconL a").addClass("nobg");
			}															 
		});		
	});	
}
/*充值区tab*/
SNexpress = function(){
	$("#SNexpress .tabexpress").find("dt").mouseover(function(){
		$(this).addClass("on").siblings().removeClass("on");
		var len = $("#SNexpress .tabexpress").find("dt").length ;
		index = $("#SNexpress .tabexpress").find("dt").index(this);	
		for(var i=0;i<len;i++){
			$("#SNexpress").find(".snexpressMain").eq(i).addClass("hide");
		}
		$("#SNexpress").find(".snexpressMain").eq(index).removeClass("hide");
	});
	
	$("#SNtabTravel dt").mouseover(function(){
		$(this).addClass("on").siblings().removeClass("on");
		var len = $("#SNtabTravel dt").length ;
		index = $("#SNtabTravel dt").index(this);
		for(var i=0;i<len;i++){
			$("#SNtabTravel").find("dd").eq(i).addClass("hide");
		}
		$("#SNtabTravel").find("dd").eq(index).removeClass("hide");
	})
}
/*tab切换*/
SNTabchange = function(showId,btnId){
	$("#"+btnId).find("dt").mouseover(function(){
		$(this).addClass("on").siblings().removeClass("on");									   
		index = $("#"+btnId).find("dt").index(this);
		$("#"+showId).find("ul").eq(index).removeClass("hide").siblings().addClass("hide");
	});	
	
	$("#SNlayoutGood li").mouseover(function(){
		var len = $("#SNlayoutGood li").length ;									 
		index = $("#SNlayoutGood li").index(this);	
		for(var i=0;i<len;i++){
			$("#SNlayoutGood li").eq(i).find("a").removeClass("on");
			$("#SNlayoutGood dl").eq(i).addClass("hide");
		}
		$(this).find("a").addClass("on");
		$("#SNlayoutGood dl").eq(index).removeClass("hide");
	});
}
/*热销专区*/
SNpromArea = function(){
	$("#SNbuylist").find("dt").mouseover(function(){
		$(this).addClass("on").siblings().removeClass("on");											  
		index = $("#SNbuylist").find("dt").index(this);
		$("#SNbuylist").find("ul").stop().animate({"left":-528*index},600);										  
	});
	
	$("#SNpromArea").find("dt").click(function(){
		index = $("#SNpromArea").find("dt").index(this);
		var len = $("#SNpromArea").find("dt").length;
		for(var i=0;i<len;i++){
			$("#SNpromArea").find("dt").eq(i).removeClass("on");
			$("#SNpromArea").find("dd").eq(i).addClass("hide");
			$(".snbuylinkMain").eq(i).addClass("hide");
		}
		$(this).addClass("on");
		$("#SNpromArea").find("dd").eq(index).removeClass("hide");
		$(".snbuylinkMain").eq(index).removeClass("hide");
	});
	
	$("#SNpromAreabtn01").find("span").mouseover(function(){
		$(this).addClass("on").siblings().removeClass("on");											
		index = $("#SNpromAreabtn01").find("span").index(this);	
		$("#SNpromArea01 ul").stop().animate({"left":-528*index},600);													
	});	
	
	$("#SNpromAreabtn02").find("span").mouseover(function(){
		$(this).addClass("on").siblings().removeClass("on");											
		index = $("#SNpromAreabtn02").find("span").index(this);	
		$("#SNpromArea02 ul").stop().animate({"left":-528*index},600);													
	});	
}

/*排行榜*/
SNrankingTop = function(showId,btnId){
	$("#"+btnId).find("dt").mouseover(function(){
		$(this).addClass("on").siblings().removeClass("on");									   
		index = $("#"+btnId).find("dt").index(this);									   
		$("#"+showId).find("ul").eq(index).removeClass("hide").siblings().addClass("hide");									   
	});
	
	$("#"+showId).find("li").mouseover(function(){
		$(this).addClass("on").siblings().removeClass("on");
		$(this).find(".laymax").removeClass("hide").parent().siblings().find(".laymax").addClass("hide");
		$(this).find(".laymin").addClass("hide").parent().siblings().find(".laymin").removeClass("hide");			
	});	
}
/*搜索获得焦点*/
function SearchFocus(){
	$(".seachBox input").focus(function(){
		$(".seachBox").addClass("focus")
	}).blur(function(){
		$(".seachBox").removeClass("focus")
	})
}
function onlineserver(o){
	var w=$(window).width();
	if(w>1024){
		o.show();
		$(window).scroll(function(){
			var isIE=!!window.ActiveXObject;
			var isIE6=isIE&&!window.XMLHttpRequest;
			if(isIE6){
			o.css({position:"absolute",top:$(window).scrollTop()+$(window).height()/2})
			}
		})
	}
}

$(function(){
	SNmenuNav();
	SNTabFlash();	
	SNpromArea();
	SNTabchange("SNpromAnnMain","SNpromAnn");   //促销公告
	SNexpress();
	SNgroupScroll();
	SearchFocus()
	onlineserver($("#onlinefloat"));
	SNrankingTop("SNrankTop01","SNTop01");
	SNrankingTop("SNrankTop02","SNTop02");
	SNrankingTop("SNrankTop03","SNTop03");
	SNrankingTop("SNrankTop04","SNTop04");
     function lazyload(option){var settings={defObj:null,defHeight:0};settings=$.extend(settings,option||{});var defHeight=settings.defHeight,defObj=(typeof settings.defObj=="object")?settings.defObj.find("img"):$(settings.defObj).find("img");var pageTop=function(){var d=document,y=(navigator.userAgent.toLowerCase().match(/iPad/i)=="ipad")?window.pageYOffset:Math.max(d.documentElement.scrollTop,d.body.scrollTop);return d.documentElement.clientHeight+y-settings.defHeight};var imgLoad=function(){defObj.each(function(){if($(this).offset().top<=pageTop()){var src2=$(this).attr("src2");if(src2){$(this).attr("src",src2).removeAttr("src2")}}})};$(window).bind("scroll",function(){imgLoad()})};
	lazyload({defObj:"#snfoor01"});
	lazyload({defObj:"#snfoor02"});
	lazyload({defObj:"#snfoor03"});
	lazyload({defObj:"#snfoor04"});
	lazyload({defObj:"#snfoor05"});
	lazyload({defObj:"#snfoor06"});
	lazyload({defObj:"#snfoor07"});
	lazyload({defObj:".ad80"});		     	
})