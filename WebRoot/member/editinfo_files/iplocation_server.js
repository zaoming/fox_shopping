/*##20120831##*/

/* 图片滚动 */
(function(a){a.fn.imgScroll=function(b){return this.each(function(){var s=a.extend({evtType:"click",visible:1,showControl:true,showNavItem:false,navItemEvtType:"click",navItemCurrent:"current",showStatus:false,direction:"x",next:".next",prev:".prev",disableClass:"disabled",speed:300,loop:false,step:1},b);var i=a(this),k=i.find("ul"),o=k.find("li"),j=o.length,e=s.visible,d=s.step,g=parseInt((j-e)/d),r=0,m=i.css("position")=="absolute"?"absolute":"relative",p=o.css("float")!=="none",h=a('<div class="scroll-nav-wrap"></div>'),c=s.direction=="x"?"left":"top",n=s.direction=="x"?"width":"height";function q(){if(!p){o.css("float","left")}k.css({position:"absolute",left:0,top:0});i.css({position:m,width:s.direction=="x"?e*o.width():o.width(),height:s.direction=="x"?o.height():e*o.height(),overflow:"hidden"});a(s.prev).addClass(s.disableClass);if(s.loop){}else{if((j-e)%d!==0&&j>e){var v=d-(j-e)%d;k.append(o.slice(0,v).clone());j=k.find("li").length;g=parseInt((j-e)/d)}}k.css(n,j*o.width());if(!s.showControl&&j<=e){a(s.next+","+s.prev).hide()}if(j<=e){a(s.next+","+s.next).addClass(s.disableClass)}else{a(s.prev).addClass(s.disableClass);a(s.next).removeClass(s.disableClass)}if(s.showNavItem){for(var t=0;t<=g;t++){var u=t==0?s.navItemCurrent:"";h.append('<em class="'+u+'">'+(t+1)+"</em>")}i.after(h);h.find("em").bind(s.navItemEvtType,function(){var w=parseInt(this.innerHTML);l((w-1)*d)})}if(s.showStatus){i.after('<span class="scroll-status">'+1+"/"+(g+1)+"</span>")}}function l(t){if(k.is(":animated")){return false}if(t<0){a(s.prev).addClass(s.disableClass);return false}if(t+e>j){a(s.next).addClass(s.disableClass);return false}r=t;k.animate(s.direction=="x"?{left:-((t)*o.width())}:{top:-((r)*o.height())},s.speed,function(){if(t>0){a(s.prev).removeClass(s.disableClass)}else{a(s.prev).addClass(s.disableClass)}if(t+e<j){a(s.next).removeClass(s.disableClass)}else{a(s.next).addClass(s.disableClass)}f(t)})}function f(t){h.find("em").removeClass(s.navItemCurrent).eq(t/d).addClass(s.navItemCurrent);if(s.showStatus){a(".scroll-status").html(((t/d)+1)+"/"+(g+1))}}q();if(j>e){a(s.next).click(function(){l(r+d)});a(s.prev).click(function(){l(r-d)})}})}}(jQuery));

/* ---------- 埋点公用 ---------- */
function log (type1, type2, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) {
    var data = '';
    for (i = 2; i < arguments.length; i++) {
        data = data + arguments[i] + '|||';
    }
    var pin = decodeURIComponent(escape(getCookie("pin")));
    var loguri = "http://csc.360buy.com/log.ashx?type1=$type1$&type2=$type2$&data=$data$&pin=$pin$&referrer=$referrer$&jinfo=$jinfo$&callback=?";
    var url = loguri.replace(/\$type1\$/, escape(type1));
    url = url.replace(/\$type2\$/, escape(type2));
    url = url.replace(/\$data\$/, escape(data));
    url = url.replace(/\$pin\$/, escape(pin));
    url = url.replace(/\$referrer\$/, escape(document.referrer));
    url = url.replace(/\$jinfo\$/, escape(''));
    $.getJSON(url, function() {});
}
/**
 * 新版-点击流统计-页面pv和显示次数
 * wpid 主商品三级分类，没有为空串''
 * psku 主商品sku，没有为空串''，根据它来判断此商品为pop还是非pop
 * markId 推荐位标记，找张斌要
 * op s:显示、p:pv
 */
function clsPVAndShowLog(wpid, psku, markId, op) {
    var key = wpid + "." + markId + "." + skutype(psku) + "." + op;
    log('d', 'o', key);
}
function clsClickLog(wpid, psku, rsku, markId, num, reCookieName) {
    var key = wpid + "." + markId + "." + skutype(psku);
    appendCookie(reCookieName, rsku, key);
    log('d', 'o', key + ".c");
}
function appendCookie(reCookieName, sku, key) {
    var reWidsCookies = eval('(' + getCookie(reCookieName) + ')');
    if (reWidsCookies == null || reWidsCookies == '') {
        reWidsCookies = new Object();
    }
    if (reWidsCookies[key] == null) {
        reWidsCookies[key] = '';
    }
    var pos = reWidsCookies[key].indexOf(sku);
    if (pos < 0) {
        reWidsCookies[key] = reWidsCookies[key] + "," + sku;
    }
    setCookie(reCookieName, $.toJSON(reWidsCookies), 15);
}
function skutype(sku) {
    if (sku) {
        var len = sku.toString().length;
        return len==10 ? 1 : 0;
    }
    return 0;
}
function setCookie(name, value, date) {
	var Days = date;
	var exp = new Date();
	exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
	document.cookie = name + "=" + escape(value) + ";expires=" + exp.toGMTString() + ";path=/;domain=.360buy.com";
}
function getCookie(name) {
    var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
    if (arr != null) return unescape(arr[2]);
    return null;
}
function reClick(type2, pwid, sku, num) {
	name = "reWids" + type2;
	reWids = getCookie(name);
	if (reWids != null) {
		reWids = reWids.toString();
		var pos = reWids.indexOf(sku);
		if (pos < 0) {
			reWids = reWids + "," + sku;
		}
	}
	else {
		reWids = sku;
	}
	setCookie(name, reWids, 15);

	sku = sku.split("#");
	log(3, type2, sku[0]);
	//log('RC', 'CK', type2, pwid, sku[0], num);
}

function readPinCookie(name) {
	//读取cookies函数
	var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
	if (arr != null) return arr[2];
	return '';
}

/**
 * 点击流统计，调用例如：clsLog("3425&special","","174620#988",4,"reWidsBookSpecial")
 * @param type2 三级分类
 * @param pwid  当前商品wid，没有为空串''
 * @param sku   推荐商品wid
 * @param num   位置，从0开始
 * @param reCookieName   cookieName
 */
function clsLog(type2, pwid, sku, num, reCookieName) {
    //console.info(type2+"_"+pwid+"_"+sku+"_"+num + "_" + reCookieName);
    var reWidsClubCookies = eval('(' + getCookie(reCookieName) + ')');
    if (reWidsClubCookies == null || reWidsClubCookies == '') {
        reWidsClubCookies = new Object();
    }
    if (reWidsClubCookies[type2] == null) {
        reWidsClubCookies[type2] = '';
    }
    var pos = reWidsClubCookies[type2].indexOf(sku);
    if (pos < 0) {
        reWidsClubCookies[type2] = reWidsClubCookies[type2] + "," + sku;
    }
    setCookie(reCookieName, $.toJSON(reWidsClubCookies), 15);
    sku = sku.split("#");
    log(3, type2, sku[0]);
    //log('RC', 'CK', type2, pwid, sku[0], num);
}
function mark(b,a){ log(1,a,b);}

/* ---------- 埋点公用 end ---------- */

var noItemOver = {
	// 无货、下柜页面推荐列表
	init: function( type ) {

		this.type = type || 1;	//3c为1、日百为2


		this.outOfStockTPL = '<div class="w"><div id="out-of-stock" class="m m2">'
		+'	<div class="mt">'
		+'		<h2>其它类似商品</h2>'
		+'	</div>'
		+'	<div class="mc">'
		+'		<div id="noitem-related-list"><div class="noitem-related-list"><div class="iloading">正在加载中，请稍候...</div></div>'
		+'	</div>'
		+'</div></div>';

		var isNoItem = $('#product-intro').hasClass('product-intro-noitem'),
			isOver = $('#product-intro').hasClass('product-intro-itemover');

		if ( !isNoItem && !isOver ) {

			$('#noitem-related-list,#itemover-related-list,#itemover1-related-list').remove();
			return false;
		}

		if ( isNoItem ) {
			this.noItem();
		}
		if ( isOver ) {
			this.itemOver();
		}

	},
	noItem: function( isItemOver ) {
		var imgStr = isItemOver ? '<img height="100" width="100" src="${pageConfig.FN_GetImageDomain(list.skuId)}n4/${list.imgUrl}">' : '<img height="130" width="130" src="${pageConfig.FN_GetImageDomain(list.skuId)}n3/${list.imgUrl}">';
		// 无货推荐列表[老服务]
		var noItem_TPL_OLD = '{for list in html}'
			+'<li class="fore fore${list_index}">'
			+'	<div class="p-img">'
			+'		<a target="_blank" href="http://www.360buy.com/product/${list.skuId}.html">'+imgStr+'</a>'
			+'	</div>'
			+'	<div class="p-name">'
			+'		<a target="_blank" title="${list.name}" href="http://www.360buy.com/product/${list.skuId}.html">${list.Name}</a>'
			+'	</div>'
			+'	<div class="p-price">'
			+'		<strong><img src="http://price.360buyimg.com/gp${list.skuId},1.png" onerror="this.src=\'http://misc.360buyimg.com/lib/skin/e/i/error-3.gif\'" /></strong>'
			+'	</div>'
			+'</li>'
			+'{/for}';

		//无货页面推荐列表
		//http://d.360buy.com/nostockrecomm/get?productId=104410&callback=jsonp
		// 老服务var url = 'http://pbss.360buy.com/recomm/getRecommProduct.action?'+ pageConfig.product.skuid,
		// http://d.360buy.com/nostockrecomm/get?productId=104410

		var url = 'http://d.360buy.com/nostockrecomm/get?productId=' + pageConfig.product.skuid,
			_this = this,
			isItemOver = isItemOver || false;

		// if ( isItemOver ) {
		// 	log( pageConfig.product.cat[2] + '&RemovedArk', 'Show' );
		// } else {
		// 	log( pageConfig.product.cat[0] + "&SORecPage", 'Show');

		// }
		log( pageConfig.product.cat[0] + "&SORecPage", 'Show');

	
		$.ajax({
			url: url,
			dataType: 'jsonp',
			data: {
				productId: pageConfig.product.skuid
			},
			success: function( data ) {

				if ( data && (typeof data.html !== 'undefined') && data.html !== null && data.html.length > 0 ) {
					
					if ( isItemOver ) {
						if ( $('#noitem-related-list').length < 1 ) {
							$('#choose').after('<div id="noitem-related-list"><p>其它类似商品</p><div class="noitem-related-list"><div class="iloading">正在加载中，请稍候...</div></div>');
						} else {
							$('#itemover-related-list').show();
						}						
					} else {
						if ( $('#out-of-stock').length < 1 ) {
							$('#product-intro').parent().after(_this.outOfStockTPL);
						} else {
							$('#out-of-stock').show();
						}						
					}


					$('#noitem-related-list .noitem-related-list').html( '<a href="javascript:;" class="spec-control disabled" id="noitem-forward"></a><a href="javascript:;" class="spec-control" id="noitem-backward"></a><div id="noitem-list"><ul>' + noItem_TPL_OLD.process( data ) + '</ul></div>' );
					$('#noitem-related-list').attr('loaded', 'true');


					//图片滚动【无货页面】 
					$('#noitem-list').imgScroll({
						visible: scrollVisible_itemover,
						showControl: true,
						speed: 200,
						step: scrollVisible_itemover,
						loop: false,
						prev: '#noitem-forward',
						next: '#noitem-backward',
						disableClass: 'disabled'
					});

				} else if ( !data || data.html == null || data.html.length < 1 ) {
					_this.noItemNoData(isItemOver);
				}
			}
		});
	},
	itemOver: function() {
		// 浏览了 - 还浏览3c
		var listBrosweBroswe_TPL = '<li onclick="reClick(1, '+pageConfig.product.skuid+',\'${wid}#${wmeprice}\', [#]);">'
			+'	<div class="p-img">'
			+'		<a target="_blank" title="${name}" href="http://www.360buy.com/product/${wid}.html"><img height="100" width="100" alt="${name}" src="${pageConfig.FN_GetImageDomain(wid)}n4/${imgurl}"></a>'
			+'	</div>'
			+'	<div class="p-name">'
			+'		<a target="_blank" title="${name}" href="http://www.360buy.com/product/${wid}.html">${name}</a>'
			+'	</div>'
			+'	<div class="p-price">'
			+'		<strong>'
			+'			<img src="http://price.360buyimg.com/gp${wid},1.png" onerror="this.src=\'http://misc.360buyimg.com/lib/skin/e/i/error-3.gif\'" />'
			+'		</strong>'
			+'	</div>'
			+'</li>';

		var urlRelated = 'http://simigoods.360buy.com/SoldOutRecJsonData.aspx?ip='+ getCookie("ipLocation") +'&wids='+ pageConfig.product.skuid;
		var urlBroswerBuy = 'http://simigoods.360buy.com/ThreeCCombineBuying/ThreeCBroswerBroswerJsonData.aspx?ip=' + getCookie('ipLocation') + '&wids=' + pageConfig.product.skuid;
		var _this = this;

		_this.noItem( true );



		//下柜页看了还买了
		$.ajax({
			url: urlBroswerBuy,
			dataType: 'jsonp',
			success: function(data) {
				var resHTML = [];
				
				//log('RemovedArk', 'Show');
				log('R1','Show');
				
				if ( data == null ) {
					return false;
				}
				for ( var i = 0; i < data.length; i++ ) {
					resHTML.push( listBrosweBroswe_TPL.process(data[i]).replace('[#]', i) );
				}
				$('#itemover1-related-list').show();
				$('#itemover1-related-list .itemover1-related-list').html( '<a href="javascript:;" class="spec-control disabled" id="itemover1-forward"></a><a href="javascript:;" class="spec-control disabled" id="itemover1-backward"></a><div id="itemover1-list"><ul>' + resHTML.join('') + '</ul></div>' );

				//图片滚动【无货页面】
				$('#itemover1-list').imgScroll({
					visible: scrollVisible_itemover,
					showControl: false,
					speed: 200,
					step: scrollVisible_itemover,
					loop: false,
					prev: '#itemover1-forward',
					next: '#itemover1-backward',
					disableClass: 'disabled'
				});
			}
		});	
	},
	noItemNoData: function( isItemOver ) {
		var imgStr = isItemOver ? '<img height="100" width="100" src="${pageConfig.FN_GetImageDomain(list.wid)}n4/${list.imgurl}">' : '<img height="130" width="130" src="${pageConfig.FN_GetImageDomain(list.wid)}n3/${list.imgurl}">';
		// 无货推荐列表[新服务]
		var noItem_TPL = '{for list in MySoldOut}'
			+'<li class="fore fore${list_index}" onclick="reClick2(\''+pageConfig.product.cat[0]+'&SORec\','+pageConfig.product.skuid+', \'${list.wid}#${list.wmeprice}\', ${list_index})">'
			+'	<div class="p-img">'
			+'		<a target="_blank" href="http://www.360buy.com/product/${list.wid}.html">'+imgStr+'</a>'
			+'	</div>'
			+'	<div class="p-name">'
			+'		<a target="_blank" title="${list.name}" href="http://www.360buy.com/product/${list.wid}.html">${list.name}</a>'
			+'	</div>'
			+'	<div class="p-price">'
			+'		<strong><img src="http://price.360buyimg.com/gp${list.wid},1.png" onerror="this.src=\'http://misc.360buyimg.com/lib/skin/e/i/error-3.gif\'" /></strong>'
			+'	</div>'
			+'</li>'
			+'{/for}';

		// 没有推荐数据时调用新数据接口
		var url = 'http://simigoods.360buy.com/SoldOutRecJsonData.aspx?ip='+ getCookie("ipLocation") +'&wids='+ pageConfig.product.skuid,
			_this = this;

		$.ajax({
			url: url,
			dataType: 'jsonp',
			success: function(data) {

				if ( data.MySoldOut !== null && data !== null ) {				

					if ( isItemOver ) {
						if ( $('#noitem-related-list').length < 1 ) {
							$('#choose').after('<div id="noitem-related-list"><p>其它类似商品</p><div class="noitem-related-list"><div class="iloading">正在加载中，请稍候...</div></div>');
						}
					} else {
						if ( $('#out-of-stock').length < 1 ) {
							$('#product-intro').parent().after(_this.outOfStockTPL);
						} else {
							$('#out-of-stock').show();
						}						
					}

					log(pageConfig.product.cat[0] + "&SORec", 'Show');


					$('#noitem-related-list').attr('iplocation', getCookie("ipLocation"));

					if ( isItemOver ) {
						$('#itemover-related-list').show().find('.itemover-related-list').html('<a href="javascript:;" class="spec-control disabled" id="itemover-forward"></a><a href="javascript:;" class="spec-control disabled" id="itemover-backward"></a><div id="itemover-list"><ul>' + noItem_TPL.process(data) + '</ul></div>');
						
						//图片滚动【无货页面】
						$('#itemover-list').imgScroll({
							visible: scrollVisible_itemover,
							showControl: true,
							speed: 200,
							step: scrollVisible_itemover,
							loop: false,
							prev: '#itemover-forward',
							next: '#itemover-backward',
							disableClass: 'disabled'
						});


					} else {
						$('#noitem-related-list .noitem-related-list').html( '<a href="javascript:;" class="spec-control disabled" id="noitem-forward"></a><a href="javascript:;" class="spec-control" id="noitem-backward"></a><div id="noitem-list"><ul>' + noItem_TPL.process(data) + '</ul></div>' );	
						
						//图片滚动【无货页面】
						$('#noitem-list').imgScroll({
							visible: scrollVisible_noitem,
							showControl: true,
							speed: 200,
							step: scrollVisible_noitem,
							loop: false,
							prev: '#noitem-forward',
							next: '#noitem-backward',
							disableClass: 'disabled'
						});
					}
				}		

			}
		});
	}

};
if(pageConfig.product.cat&&pageConfig.product.cat[1]&&pageConfig.product.cat[1]==6559){
	var __special_type=true;document.write("<script type='text/javascript' src='http://misc.360buyimg.com/product/js/2012/p.pshow.djd-new.js'></script>");
}
else{
var GeoIpService = "http://price.360buy.com/ows/GetIPLocation.aspx";
var StockSoaService = "http://price.360buy.com/stocksoa/StockHandler.ashx";
var iplocation = {"北京": { id: "1", root: 0, djd: 1,c:72 },"上海": { id: "2", root: 1, djd: 1,c:78 },"天津": { id: "3", root: 0, djd: 1,c:83 },"重庆": { id: "4", root: 3, djd: 1,c:87 },"河北": { id: "5", root: 0, djd: 1,c:142 },"山西": { id: "6", root: 0, djd: 1,c:303 },"河南": { id: "7", root: 0, djd: 1,c:412 },"辽宁": { id: "8", root: 0, djd: 1,c:560 },"吉林": { id: "9", root: 0, djd: 1,c:639 },"黑龙江": { id: "10", root: 0, djd: 1,c:698 },"内蒙古": { id: "11", root: 0, djd: 0,c:799 },"江苏": { id: "12", root: 1, djd: 1,c:904 },"山东": { id: "13", root: 0, djd: 1,c:1000 },"安徽": { id: "14", root: 1, djd: 1,c:1116 },"浙江": { id: "15", root: 1, djd: 1,c:1158 },"福建": { id: "16", root: 2, djd: 1,c:1303 },"湖北": { id: "17", root: 0, djd: 1,c:1381 },"湖南": { id: "18", root: 2, djd: 1,c:1482 },"广东": { id: "19", root: 2, djd: 1,c:1601 },"广西": { id: "20", root: 2, djd: 1,c:1715 },"江西": { id: "21", root: 2, djd: 1,c:1827 },"四川": { id: "22", root: 3, djd: 1,c:1930 },"海南": { id: "23", root: 2, djd: 1,c:2121 },"贵州": { id: "24", root: 3, djd: 1,c:2144 },"云南": { id: "25", root: 3, djd: 1,c:2235 },"西藏": { id: "26", root: 3, djd: 0,c:2951 },"陕西": { id: "27", root: 3, djd: 1,c:2376 },"甘肃": { id: "28", root: 3, djd: 1,c:2487 },"青海": { id: "29", root: 3, djd: 0,c:2580 },"宁夏": { id: "30", root: 3, djd: 1,c:2628 },"新疆": { id: "31", root: 3, djd: 0,c:2652 },"台湾": { id: "32", root: 2, djd: 0,c:2768 },"香港": { id: "42", root: 2, djd: 0,c:2754 },"澳门": { id: "43", root: 2, djd: 0,c:2770 },"钓鱼岛": { id: "84", root: 2, djd: 0,c:84 }};
$("<dl><dt>请选择省份</dt><dd><a href='#none' p='1'>北京</a>、<a href='#none' p='3'>天津</a>、<a href='#none' p='5'>河北</a>、<a href='#none' p='13'>山东</a>、<a href='#none' p='6'>山西</a>、<a href='#none' p='8'>辽宁</a>、<a href='#none' p='9'>吉林</a>、<a href='#none' p='10'>黑龙江</a>、<a href='#none' p='11'>内蒙古</a>、<a href='#none' p='27'>陕西</a>、<br><a href='#none' p='28'>甘肃</a>、<a href='#none' p='29'>青海</a>、<a href='#none' p='30'>宁夏</a>、<a href='#none' p='31'>新疆</a></dd><dt>请选择省份</dt><dd><a href='#none' p='2'>上海</a>、<a href='#none' p='12'>江苏</a>、<a href='#none' p='15'>浙江</a>、<a href='#none' p='14'>安徽</a></dd><dt>请选择省份</dt><dd><a href='#none' p='19'>广东</a>、<a href='#none' p='20'>广西</a>、<a href='#none' p='16'>福建</a>、<a href='#none' p='23'>海南</a>、<a href='#none' p='32'>台湾</a>、<a href='#none' p='42'>香港</a>、<a href='#none' p='43'>澳门</a>、<a href='#none' p='84'>钓鱼岛</a></dd><dt>请选择省份</dt><dd><a href='#none' p='22'>四川</a>、<a href='#none' p='4'>重庆</a>、<a href='#none' p='24'>贵州</a>、<a href='#none' p='25'>云南</a>、<a href='#none' p='26'>西藏</a></dd><dt>请选择省份</dt><dd><a href='#none' p='17'>湖北</a>、<a href='#none' p='7'>河南</a>、<a href='#none' p='18'>湖南</a>、<a href='#none' p='21'>江西</a></dd></dl>").insertBefore("#store-selector .clr");
//var POPSOPLBP={"10399_0":5,"13726_0":5,"10539_0":5,"12556_0":6,"10918_0":5,"10754_0":6,"10595_0":5,"12278_0":4,"11517_0":5,"12116_0":5,"10551_2":5,"11241_2":4,"10215_2":5,"11001_2":5,"11256_2":5,"10403_2":5,"11559_2":6,"10206_2":5,"10308_2":6};
var stockstatus = { 33: "现货", 34: "无货", 36: "预订", 39: "在途", 0: "统计中" };
var orgname = { 6: "北京仓", 3: "上海仓", 10: "广州仓", 4: "成都仓", 5: "武汉仓", 7: "南京仓", 8: "济南仓", 9: "沈阳仓" };
var shopurls={10831:"http://ochirly.360buy.com"};
var cName = "ipLocation";
var currentLocation = "北京";
//cookie operate
function getCookie(name) {var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));if (arr != null) return unescape(arr[2]);return null;}
function setCookie(name,value,expires,path,domain,secure){if(!path){path="/"}if(!domain){domain="360buy.com"}if(!secure){secure=false}var today=new Date();today.setTime(today.getTime());if(expires){expires=expires*1000*60*60*24}var expires_date=new Date(today.getTime()+(expires));document.cookie=name+'='+escape(value)+((expires)?';expires='+expires_date.toGMTString():'')+((path)?';path='+path:'')+((domain)?';domain='+domain:'')+((secure)?';secure':'')};function deleteCookie(name,path,domain){if(getCookie(name))document.cookie=name+'='+((path)?';path='+path:'')+((domain)?';domain='+domain:'')+';expires=Thu, 01-Jan-1970 00:00:01 GMT'};
if(warestatus!=1){
	$("#product-intro").attr("class","product-intro-itemover");
	$('#noitem-related-list').remove();
	//$('.itemover-title').after('<div id="itemover-related-list"><p>其它类似商品</p><div class="itemover-related-list"><div class="iloading">正在加载中，请稍候...</div></div></div><div id="itemover1-related-list"><p>看过本商品的人还买了：</p><div class="itemover1-related-list"><div class="iloading">正在加载中，请稍候...</div></div>')
}
$.pbuyurl="";
$.haveShow=0;$.POPDAYS="";$.ipschange=true;$._ptload=false;$._ptloadcon="";$.easybuy_button=$("#choose-btn-easybuy");$.divide_button=$("#choose-btn-divide");$.notice_button=$("#choose-btn-notice");$.append_button=$("#choose-btn-append .btn-append");
$.getShopUrl=function(r){if(r.url)return r.url;var id=r.id;if(shopurls[id])return shopurls[id];return "http://mall.360buy.com/index-"+id+".html";};
$.getDeliver = function(p){
	r=p.D;
	if(pageConfig.product.skuid<1000000000){
		$("#brand-bar .seller-link").html("<em class='dt'>卖\u3000\u3000家：</em><a href='#none'>京东商城</a>");$("#brand-bar .seller").show();
		$("#summary-service").html("").show();
		if (p.PopType==999){
			$("<div class='dt'>服\u3000\u3000务：</div><div class='dd'>本商品由厂家提供和配送，由京东商城开具发票</div>").appendTo("#summary-service");
		}else if(p.PopType==99){
			$("<div class='dt'>服\u3000\u3000务：</div><div class='dd'>本商品由<a href='#'>京东商城</a>提供并配送，运营商开具发票</div>").appendTo("#summary-service");
		}else{
			$("<div class='dt'>服\u3000\u3000务：</div><div class='dd'>本商品由<a href='#'>京东商城</a>提供，并负责配送及开具发票</div>").appendTo("#summary-service");
		}
	}
	if (pageConfig.product.skuid>1000000000){
		
		if (r&&r.deliver){
			var unshowtypes = "0,1,2,4,5";
			if (unshowtypes.indexOf(r.type) != -1){
				if(!$.haveShow) {
					if($("#summary-service").length==0){$("<li id='summary-service'></li>").insertAfter("#summary-stock");}
					$("#summary-service").html("");
					var key=r.id+"_"+r.type;
					/*if(POPSOPLBP[key]){
						if(r.type==0) {$.POPDAYS="，<b>平均</b>送达时间："+POPSOPLBP[key]+"天";}
						else if(r.type==2) {$.POPDAYS="<div class='dt'>&nbsp;</div><div class='dd'>第三方卖家<a href='"+$.getShopUrl(r)+"' target='_blank'>"+r.vender+"</a><b>平均</b>送达时间："+POPSOPLBP[key]+"天</div>";}
					}*/
					if(r.type==0){
						$("<div class='dt'>服\u3000\u3000务：</div><div class='dd'>此商品"+(pageConfig.product.yfinfo&&pageConfig.product.yfinfo.nofree?"运费":"")+"由<a href='"
						+$.getShopUrl(r)+"' target='_blank' clstag='shangpin|keycount|product|bbtn'>"+r.vender+"</a>"+(pageConfig.product.yfinfo&&pageConfig.product.yfinfo.nofree?"收取":"提供")+"，并负责配送及开具发票</div>").appendTo("#summary-service");
						if (r.linkphone){$("#sellerphone").remove();$("#evaluate").after("<p id='sellerphone' style=' clear: both;overflow: hidden;padding: 10px 0 0 10px;'><em class='dt'>服务电话：</em><em>"+r.linkphone+"</em></p>");}
					}
					else if(r.type==1){
						$("<div class='dt'>服\u3000\u3000务：</div><div class='dd'>本商品由<a href='"+$.getShopUrl(r)+"' target='_blank' clstag='shangpin|keycount|product|bbtn'>"+r.vender+"</a>提供，由京东商城负责配送及开具发票</div>").appendTo("#summary-service");
					}
					else if(r.type==2){
						$("<div class='dt'>服\u3000\u3000务：</div><div class='dd'>本商品由<a href='"+$.getShopUrl(r)+"' target='_blank' clstag='shangpin|keycount|product|bbtn'>"+r.vender+"</a>提供，由京东商城负责配送及开具发票</div>").appendTo("#summary-service");
					}
					else if(r.type==5){
						$("<div class='dt'>服\u3000\u3000务：</div><div class='dd'>本商品发票由<a href='"+$.getShopUrl(r)+"' target='_blank' clstag='shangpin|keycount|product|bbtn'>"+r.vender+"</a>提供，由京东商城负责配送</div>").appendTo("#summary-service");
					}
					if(r.type!=4){
						$("#summary-service").show();
						$("#brand-bar .seller-link").html("<em class='dt'>卖&nbsp;&nbsp;&nbsp;&nbsp;家：</em><a href='"+$.getShopUrl(r)+"' target='_blank' clstag='shangpin|keycount|product|bbtn'>"+r.vender+"</a>");
						if($("#brand-bar .seller-btn").length==0)$("<div class='seller-btn clearfix'></div>").appendTo("#brand-bar .seller");
						$("<a id='seller-enter' href='"+$.getShopUrl(r)+"' target='_blank' clstag='shangpin|keycount|product|bbtn'>进入卖家店铺</a>").appendTo("#brand-bar .seller-btn");
						if($("#product-intro .itemover-title button").length==0&&$("#product-intro .itemover-title h3").length>0)$("<button type='button' clstag='shangpin|keycount|product|bbtn'>进入卖家店铺</button>").appendTo("#product-intro .itemover-title h3");
						$("#product-intro .itemover-title button").unbind("click").click(function(){window.location=$.getShopUrl(r);});
						$("#brand-bar .seller").show();
					}
					$.changeServiceInfo(r.type==0?2:3);
					//if(r.type==2&&$.POPDAYS){$($.POPDAYS).appendTo("#summary-service");}
				}
				$.haveShow=1;
			}
		}
	}
};
$.changeServiceInfo=function(type){
	var txt1="<b></b><span>货到</span><span>付款</span>",txt3="<b></b><span>满39</span><span>免运费</span>",txt5="<b></b><span>售后</span><span>上门</span>";
	var url1="http://help.360buy.com/help/question-67.html",url3="http://help.360buy.com/help/question-65.html",url5="http://help.360buy.com/help/question-97.html",urlp3="_blank",urlp5="_blank";
	if(type==1){//self
	}else if(type==2){//sop
		 txt1="<b></b><span>在线</span><span>支付</span>";txt3="<b></b><span>厂家</span><span>直送</span>";txt5="<b></b><span>7天</span><span>退换</span>";
		 url1="http://help.360buy.com/help/question-68.html";url3="#none";url5="#none";urlp3="_self";urlp5="_self";
	}else if(type==3){//other
		 txt1="<b></b><span>货到</span><span>付款</span>";txt3="<b></b><span>满39</span><span>免运费</span>";txt5="<b></b><span>7天</span><span>退换</span>";
		url1="http://help.360buy.com/help/question-67.html";url3="http://help.360buy.com/help/question-65.html";url5="#none";urlp5="_self";
	}
	$("#brand-bar .fore1 a").html(txt1).attr("href",url1);
	$("#brand-bar .fore3 a").html(txt3).attr("href",url3).attr("target",urlp3);
	$("#brand-bar .fore5 a").html(txt5).attr("href",url5).attr("target",urlp5);
}
$.getStockDesc = function(s){
	if (s==33||s==5)
		return "下单后立即发货";
	if (s==0||s==34||s==18)
		return "该商品暂时已售完"+(pageConfig.product.skuid>1000000000?"":"，<a href='http://notify.home.360buy.com/email.action?type=2&id=" + pageConfig.product.skuid + "&key=" + pageConfig.product.skuidkey + "' target='_blank'>到货通知</a>");
	if (s == 39)
		return "正在内部配货，预计还有2~6天到达本仓库";
	if (s == 36)
		return "需要向供货商采购，入库后才能发货";
	return "";
};
//NO Stock
var reCookieName = "reWidsSORec";
function reClick2(type2, pwid, sku, num) {
    var reWidsClubCookies = eval('(' + getCookie(reCookieName) + ')');
    if (reWidsClubCookies == null || reWidsClubCookies == '') reWidsClubCookies = new Object();
    if (reWidsClubCookies[type2] == null) reWidsClubCookies[type2] = '';
    var pos = reWidsClubCookies[type2].indexOf(sku);
    if (pos < 0) reWidsClubCookies[type2] = reWidsClubCookies[type2] + "," + sku;
	if(JSON&&JSON.stringify)setCookie(reCookieName, JSON.stringify(reWidsClubCookies), 2, "/", "360buy.com", false);
    sku = sku.split("#");
    if (window.log){log(3, type2, sku[0]);log('RC', 'CK', type2, pwid, sku[0], num);}
}
//Notify
function getBuyUrl(skuId){
	if($.pbuyurl)return $.pbuyurl;
	if($.append_button.attr("href")!="#none")return $.append_button.attr("href");
	if (pageConfig.product.cat[2] == 4833) return "http://chongzhi.360buy.com/order/order_place.action?skuId=" + skuId + "";
	if (pageConfig.product.cat[2] == 4835 || pageConfig.product.cat[2] == 4836) return "http://card.360buy.com/order/order_place.action?skuId=" + skuId + "";
	return "http://gate.360buy.com/InitCart.aspx?pid="+skuId+"&pcount=1&ptype=1";
}
function SetNotifyByNoneStock(stockstatus) {
	if (stockstatus!=34&&stockstatus!=0&&warestatus==1){
		if(pageConfig&&pageConfig.product)pageConfig.product.isStock=true;
		$("#choose-btn-append").removeClass("disabled");
		if($("#choose-btn-subsidy .btn-subsidies").length>0)$("#choose-btn-append").addClass("choose-btn-append-lite");
		$("#product-intro").attr("class","");
		$('#noitem-related-list').remove();
		if($("#choose-noresult").length>0){$("#choose-noresult").remove();}
		$.easybuy_button.show();
		$.divide_button.show();
		if(pageConfig.product.skuid<1000000000){$.notice_button.hide()}
		if($.append_button.length>0){
			/*if( $('#choose-type .item').length>0){
				$('#choose-type .selected').eq(0).trigger('click');
				$.append_button.attr("onclick","").unbind("click").click(function() {  mark(pageConfig.product.skuid, 2) }); //购物车	
			}
			else{*/
				$.append_button.attr("href",getBuyUrl(pageConfig.product.skuid)).attr("onclick","").unbind("click").click(function() { /*BuyUrl(pageConfig.product.skuid);*/ mark(pageConfig.product.skuid, 2) }); //购物车
			//}
		}
		if($(".nav-minicart-btn").length>0)$(".nav-minicart-btn").show(); //mini购物车
		$("#choose-btn-subsidy").show();
		if(window.noItemOver)noItemOver.init();
		return;
	}
	if(pageConfig&&pageConfig.product)pageConfig.product.isStock=false;
	$("#choose-btn-append").addClass("disabled").removeClass('choose-btn-append-lite');
	if(warestatus==1){
		$("#product-intro").attr("class","product-intro-noitem");
	}
	if($("#choose-noresult").length==0)$("<li id='choose-noresult'><div class='dd'><strong>所选地区该商品暂时无货，非常抱歉！</strong></div></li>").insertAfter("#choose-result");
	$.easybuy_button.hide();
	$.divide_button.hide();
	if(pageConfig.product.skuid<1000000000){$.notice_button.show()}else{$.notice_button.hide()}
	if($.append_button.length>0){if($.append_button.attr("href")!="#none"){$.pbuyurl=$.append_button.attr("href")}$.append_button.attr("href","#none").attr("onclick","").unbind("click"); }//购物车
	if($(".nav-minicart-btn").length>0)$(".nav-minicart-btn").hide(); //mini购物车
	$("#choose-btn-subsidy").hide();
	if($.notice_button.length==0&&pageConfig.product.skuid<1000000000){
		$("<div id='choose-btn-notice' class='btn'><a  class='btn-notice' href='http://notify.home.360buy.com/email.action?type=2&id=" + pageConfig.product.skuid + "&key=" + pageConfig.product.skuidkey + "' target='_blank'>到货通知<b></b></a></div>").insertAfter("#choose-btn-append");
		$.notice_button=$("#choose-btn-notice");
	}
	//if (pageConfig.product.skuid > 1000000) return;
	if(window.noItemOver)noItemOver.init(pageConfig.product.type);
	//log(1,6,pageConfig.product.skuid);
};
//stock callback
function getProvinceStockCallback(result) {
	var stockdesc="<strong>现货</strong>";
	if (result.stock) {
		stockdesc = (result.stock.StockStateName=="统计中"|| result.stock.StockStateName=="无货")?"<strong class='store-over'>无货</strong>":("<strong>"+result.stock.StockStateName+"</strong>");
		$("#store-selector .text div").html(currentLocation);
		pageConfig.product.yfinfo={};
		if(result.stock.D&&result.stock.D.prompt&&(new Number(result.stock.D.prompt))>0)pageConfig.product.yfinfo={nofree:true,cash:result.stock.D.prompt};
		$("#store-prompt").html(stockdesc+"，"+$.getStockDesc(result.stock.StockState)
			+(pageConfig.product.yfinfo.nofree?"，<span style='cursor:pointer' title='一个店铺购买多件商品，只收取一次运费'>运费：<span style='color:#f00;'>￥"+pageConfig.product.yfinfo.cash+"</span><span>":""));
		$.getDeliver(result.stock);
		SetNotifyByNoneStock(result.stock.StockState);
	}
	if (pageConfig.product.skuid>1000000000){
			if(!$._ptload){
				$._ptload=true;
				window._showPopTemplete=function(r){
					if(result.stock.StockState==36){
						if(r&&r.reserveDeliveryDay){
							$._ptloadcon=r.reserveDeliveryDay;
							$("#store-prompt").html(stockdesc+"，"+"此商品为预订商品，下单后在"+$._ptloadcon);
						}
					}
					if(r&&r.wareTemplateContent)$("<div>"+r.wareTemplateContent+"</div>").insertBefore("#product-detail-1 .detail-content:first");
					if(r&&r.wareTemplateBottomContent)$("<div>"+r.wareTemplateBottomContent+"</div>").insertAfter("#product-detail-1 .detail-content:last");
				};
				$.getJSONP("http://mall.360buy.com/json/wareTemplate/queryWareTemplateContent.action?skuId="+pageConfig.product.skuid+"&jsoncallback=_showPopTemplete",_showPopTemplete);
			}else{
				if($._ptloadcon)$("#store-prompt").html(stockdesc+"，"+"此商品为预订商品，下单后在"+$._ptloadcon);
			}
	}
}
//stock
function GetRealStock(provinceid) {
		if(provinceid=="84"){getProvinceStockCallback({"stock":{"StockState":0,"StockStateName":"\u65E0\u8D27","PopType":0,"IsPurchase":false,"D":null}});return;}
		$.getJSONP(StockSoaService + "?callback=getProvinceStockCallback&type=provincestock&skuid="+pageConfig.product.skuidkey+"&provinceid="+provinceid,getProvinceStockCallback);
}
//Main Logic
function setDjdCookie(p,c){
	var a = getCookie("ipLoc-djd");
	if (!a||a.split("-")[0]!=p)setCookie("ipLoc-djd", p+(c?("-"+c):""), 30, "/", "360buy.com", false);
}
function ShowStockForAll() {
	var ck = getCookie(cName);
	if (ck) {
		var pid = iplocation[ck];
		if (pid) {currentLocation = ck;GetRealStock(pid.id);}else{currentLocation = "北京";GetRealStock(1);}
	}else {
		$.ajax({
			type: "GET",
			url: GeoIpService,
			dataType: "jsonp",
			success: function(result) {
				if (result.ip) {
					for (var key in iplocation) {
						if (iplocation.hasOwnProperty(key)) {
							if (result.ip.indexOf(key) > -1) {
								currentLocation = key;
								break;
							}
						}
					}
				}
				GetRealStock(iplocation[currentLocation].id);
				setCookie(cName, currentLocation, 30, "/", "360buy.com", false);
				setDjdCookie(iplocation[currentLocation].id,iplocation[currentLocation].c);
			}
		});
	}
	$("#store-selector").find("a").unbind("click").click(function() {
		var t = $(this).attr("p");
		$("#store-selector").removeClass("hover");
		currentLocation = $(this).html();
		GetRealStock(t);
		setCookie(cName, currentLocation, 30, "/", "360buy.com", false);
		setDjdCookie(t,iplocation[currentLocation].c);
	}).end();
}
ShowStockForAll();
// 标题广告词
function setAdvertisement(skuidkey) {
	$.ajax({
		url: 'http://www.360buy.com/ajaxService.aspx?stype=single&skuid=' + skuidkey,
		dataType: 'jsonp',
		success: function(data) {
			if (data && data.html) {
				$("#name strong").html(data.html);
			}
		}
	})
}

function setCXAdvertisement(skuid, skuidkey) {
	$("#name strong").html("");
	$.ajax({
		url: "http://price.360buy.com/AdWordHandler.ashx?callback=?&skuid=" + skuid,
		dataType: "jsonp",
		error: function () {
			setAdvertisement(skuidkey);
		},
		success: function (r) {
			if (r && r.result) {
				$("#name strong").html(r.result);
			}
			else {
				setAdvertisement(skuidkey);
			}
		}
	});
}
setCXAdvertisement(pageConfig.product.skuid, pageConfig.product.skuidkey);
var DoOrder = function (pid) {

		$.login({
			modal: true,
			complete: function (result) {
				if (result != null && result.IsAuthenticated != null && result.IsAuthenticated) {
					var num = $.trim($("#buy-num").val());
					$.ajax({
						url: "http://buy.360buy.com/purchase/flows/easybuy/FlowService.ashx",
						type: "get",
						data: {
							action: "SubmitOrderByDefaultTemplate",
							skuId: pid || pageConfig.product.skuid,
							num: $("#buy-num").val()
						},
						dataType: "jsonp",
						success: function (r) {
							if (r.Flag) {
								window.location = r.Obj;
							}
							else {
								$.easybuy_button.show();
								if (r.Message != null) {
									alert(r.Message);
								}
								else {
									alert("暂时无法提交,请您稍后重试!");
								}
							}
						}
					})
				}
				else {
					$.easybuy_button.show();
				}
			}
		})
	};
function initEasyBuy() {
	var productId = null;
	if ($.append_button.css("display") != "none") {
		productId = parseInt( pageConfig.product.skuid );
		var eb = readCookie("eb");
		if (eb == 1 || eb == null || eb == undefined) {
			$.ajax({
				url: "http://buy.360buy.com/purchase/flows/easybuy/FlowService.ashx",
				type: "get",
				data: {
					action: "CanBuy",
					skuId: productId
				},
				dataType: "jsonp",
				success: function (r) {
					$.easybuy_button.html("");
					if (r.Flag) {
						$.easybuy_button.html("<a class='btn-easybuy' href='#'>轻松购<b></b></a>");
						$("#choose-btn-easybuy .btn-easybuy").click(function () {
							$.easybuy_button.hide();
							$.extend(jdModelCallCenter.settings, {
								clstag1: 0,
								clstag2: 0,
								id: productId,
								fn: function () {
									DoOrder(this.id);
								}
							});
							jdModelCallCenter.settings.fn()
						})
					}
				}
			})
		}
	}
};	
initEasyBuy();
//颜色尺码
var choose_color=$("#choose-color a");var choose_colori=$("#choose-color .item");
var choose_version=$("#choose-version .item");
var alert_choose_version=$("#choose-version .dt").html();alert_choose_version=alert_choose_version?alert_choose_version.replace("：",""):"";
var alert_choose_color=$("#choose-color .dt").html();alert_choose_color=alert_choose_color?alert_choose_color.replace("：",""):"";
var alert_choose="所选"+alert_choose_color.replace("选择","")+"该"+alert_choose_version.replace("选择","")+"商品无货";
var csobj={};var scobj={};
if(choose_color.length>0&&choose_version.length>0){
	if(ColorSize&&ColorSize .length>0){
		var cs=null;
		for (var i=0,j=ColorSize.length;i<j;i++){
			cs=ColorSize[i];
			if(!csobj[cs.Color])csobj[cs.Color]={};
			csobj[cs.Color][cs.Size]=cs.SkuId;
			if(!scobj[cs.Size])scobj[cs.Size]={};
			scobj[cs.Size][cs.Color]=cs.SkuId;
		}
	}
	function checkColorSize(c,s){
		if(csobj[c]&&csobj[c][s])
			return csobj[c][s];
		return 0;
	}
	function changeColorSize(flag){
		var cur_color=$("#choose-color .selected a").attr("title");
		if(cur_color&&csobj[cur_color]){
			var version=null;
			var choose_version_obj=null;
			for(var i=0,j=choose_version.length;i<j;i++){
				choose_version_obj=$($(choose_version[i]).find("a")[0]);
				version=choose_version_obj.html();
				if(!(version&&csobj[cur_color][version])){
					$(choose_version[i]).attr("class","item disabled");
					$(choose_version[i]).find("b").hide();
					choose_version_obj.css("cursor","not-allowed").attr("title",alert_choose);
				}
				else{
					if($(choose_version[i]).attr("class")=="item disabled")$(choose_version[i]).attr("class","item");
					$(choose_version[i]).find("b").show();
					choose_version_obj.css("cursor","pointer").attr("title",choose_version_obj.html());
				}
				$(choose_version[i]).find("i").remove();
			}
		}
		var cur_version = $("#choose-version .selected a").html();
		if(cur_version&&scobj[cur_version]){
			var color=null;
			for(var i=0,j=choose_colori.length;i<j;i++){
				color=$($(choose_colori[i]).find("a")[0]).attr("title");
				if(!(color&&scobj[cur_version][color])){
					$(choose_colori[i]).attr("class","item disabled");
					$(choose_colori[i]).find("b").hide();
				}
				else{
					if($(choose_colori[i]).attr("class")=="item disabled")$(choose_colori[i]).attr("class","item");
					$(choose_colori[i]).find("b").show();
				}
			}
		}
		else{
			$("#choose-color .disabled").attr("class","item");
		}
		$("<i></i>").insertBefore("#choose-version .disabled a");
		if(!flag){
			$("#choose-result .dd").html("<em>已选择</em>"+(cur_color?"<strong>“"+cur_color+"”</strong>":"")+(cur_color&&cur_version?"，":"")+(cur_version?"<strong>“"+cur_version+"”</strong>":"")
				+(cur_color?"":"<span class='item-warnning'><s></s>请"+alert_choose_color+"</span>")+(cur_version?"":"<span class='item-warnning'><s></s>请"+alert_choose_version+"</span>"));
			$("#choose-color").attr("class",cur_color?"":"item-hl-bg");
			$("#choose-version").attr("class",cur_version?"":"item-hl-bg");
			if($("#choose-noresult").length>0){$("#choose-noresult").remove();}
			$.easybuy_button.hide();
			$.divide_button.hide();
			$.notice_button.hide();
			if($.append_button.length>0)$.append_button.attr("href","#none").attr("onclick","").unbind("click"); //购物车
			if($(".nav-minicart-btn").length>0)$(".nav-minicart-btn").hide(); //mini购物车
			$("#choose-btn-subsidy").hide();
		}
	}
	changeColorSize(true);
	$("#choose-color a").attr("href","#none").unbind("click").click(function(){
		$("#choose-color .selected").attr("class","item");
		$($(this).parent()).attr("class","item selected");
		var c=$(this).attr("title");
		var s=$("#choose-version .selected a");
		if(s.length>0){s=s.html()}else{s=null}
		var sid=0;
		sid=checkColorSize(c,s);
		if(sid>0){window.location="http://www.360buy.com/product/"+sid+".html";}else{
			changeColorSize();
		}
	});
	$("#choose-version a").attr("href","#none").unbind("click").click(function(){
		if($($(this).parent()).attr("class")=="item disabled")return;
		var s=$(this).html();
		var c=$("#choose-color .selected a");
		if(c.length>0){c=c.attr("title")}else{c=null}
		var sid=0;
		sid=checkColorSize(c,s);
		if(sid>0){window.location="http://www.360buy.com/product/"+sid+".html";}else{
			changeColorSize();
		}
	});
}
}
/******************/

