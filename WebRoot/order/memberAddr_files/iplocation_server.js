/*##20120831##*/

/* ͼƬ���� */
(function(a){a.fn.imgScroll=function(b){return this.each(function(){var s=a.extend({evtType:"click",visible:1,showControl:true,showNavItem:false,navItemEvtType:"click",navItemCurrent:"current",showStatus:false,direction:"x",next:".next",prev:".prev",disableClass:"disabled",speed:300,loop:false,step:1},b);var i=a(this),k=i.find("ul"),o=k.find("li"),j=o.length,e=s.visible,d=s.step,g=parseInt((j-e)/d),r=0,m=i.css("position")=="absolute"?"absolute":"relative",p=o.css("float")!=="none",h=a('<div class="scroll-nav-wrap"></div>'),c=s.direction=="x"?"left":"top",n=s.direction=="x"?"width":"height";function q(){if(!p){o.css("float","left")}k.css({position:"absolute",left:0,top:0});i.css({position:m,width:s.direction=="x"?e*o.width():o.width(),height:s.direction=="x"?o.height():e*o.height(),overflow:"hidden"});a(s.prev).addClass(s.disableClass);if(s.loop){}else{if((j-e)%d!==0&&j>e){var v=d-(j-e)%d;k.append(o.slice(0,v).clone());j=k.find("li").length;g=parseInt((j-e)/d)}}k.css(n,j*o.width());if(!s.showControl&&j<=e){a(s.next+","+s.prev).hide()}if(j<=e){a(s.next+","+s.next).addClass(s.disableClass)}else{a(s.prev).addClass(s.disableClass);a(s.next).removeClass(s.disableClass)}if(s.showNavItem){for(var t=0;t<=g;t++){var u=t==0?s.navItemCurrent:"";h.append('<em class="'+u+'">'+(t+1)+"</em>")}i.after(h);h.find("em").bind(s.navItemEvtType,function(){var w=parseInt(this.innerHTML);l((w-1)*d)})}if(s.showStatus){i.after('<span class="scroll-status">'+1+"/"+(g+1)+"</span>")}}function l(t){if(k.is(":animated")){return false}if(t<0){a(s.prev).addClass(s.disableClass);return false}if(t+e>j){a(s.next).addClass(s.disableClass);return false}r=t;k.animate(s.direction=="x"?{left:-((t)*o.width())}:{top:-((r)*o.height())},s.speed,function(){if(t>0){a(s.prev).removeClass(s.disableClass)}else{a(s.prev).addClass(s.disableClass)}if(t+e<j){a(s.next).removeClass(s.disableClass)}else{a(s.next).addClass(s.disableClass)}f(t)})}function f(t){h.find("em").removeClass(s.navItemCurrent).eq(t/d).addClass(s.navItemCurrent);if(s.showStatus){a(".scroll-status").html(((t/d)+1)+"/"+(g+1))}}q();if(j>e){a(s.next).click(function(){l(r+d)});a(s.prev).click(function(){l(r-d)})}})}}(jQuery));

/* ---------- ��㹫�� ---------- */
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
 * �°�-�����ͳ��-ҳ��pv����ʾ����
 * wpid ����Ʒ�������࣬û��Ϊ�մ�''
 * psku ����Ʒsku��û��Ϊ�մ�''�����������жϴ���ƷΪpop���Ƿ�pop
 * markId �Ƽ�λ��ǣ����ű�Ҫ
 * op s:��ʾ��p:pv
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
	//��ȡcookies����
	var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
	if (arr != null) return arr[2];
	return '';
}

/**
 * �����ͳ�ƣ��������磺clsLog("3425&special","","174620#988",4,"reWidsBookSpecial")
 * @param type2 ��������
 * @param pwid  ��ǰ��Ʒwid��û��Ϊ�մ�''
 * @param sku   �Ƽ���Ʒwid
 * @param num   λ�ã���0��ʼ
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

/* ---------- ��㹫�� end ---------- */

var noItemOver = {
	// �޻����¹�ҳ���Ƽ��б�
	init: function( type ) {

		this.type = type || 1;	//3cΪ1���հ�Ϊ2


		this.outOfStockTPL = '<div class="w"><div id="out-of-stock" class="m m2">'
		+'	<div class="mt">'
		+'		<h2>����������Ʒ</h2>'
		+'	</div>'
		+'	<div class="mc">'
		+'		<div id="noitem-related-list"><div class="noitem-related-list"><div class="iloading">���ڼ����У����Ժ�...</div></div>'
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
		// �޻��Ƽ��б�[�Ϸ���]
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

		//�޻�ҳ���Ƽ��б�
		//http://d.360buy.com/nostockrecomm/get?productId=104410&callback=jsonp
		// �Ϸ���var url = 'http://pbss.360buy.com/recomm/getRecommProduct.action?'+ pageConfig.product.skuid,
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
							$('#choose').after('<div id="noitem-related-list"><p>����������Ʒ</p><div class="noitem-related-list"><div class="iloading">���ڼ����У����Ժ�...</div></div>');
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


					//ͼƬ�������޻�ҳ�桿 
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
		// ����� - �����3c
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



		//�¹�ҳ���˻�����
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

				//ͼƬ�������޻�ҳ�桿
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
		// �޻��Ƽ��б�[�·���]
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

		// û���Ƽ�����ʱ���������ݽӿ�
		var url = 'http://simigoods.360buy.com/SoldOutRecJsonData.aspx?ip='+ getCookie("ipLocation") +'&wids='+ pageConfig.product.skuid,
			_this = this;

		$.ajax({
			url: url,
			dataType: 'jsonp',
			success: function(data) {

				if ( data.MySoldOut !== null && data !== null ) {				

					if ( isItemOver ) {
						if ( $('#noitem-related-list').length < 1 ) {
							$('#choose').after('<div id="noitem-related-list"><p>����������Ʒ</p><div class="noitem-related-list"><div class="iloading">���ڼ����У����Ժ�...</div></div>');
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
						
						//ͼƬ�������޻�ҳ�桿
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
						
						//ͼƬ�������޻�ҳ�桿
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
var iplocation = {"����": { id: "1", root: 0, djd: 1,c:72 },"�Ϻ�": { id: "2", root: 1, djd: 1,c:78 },"���": { id: "3", root: 0, djd: 1,c:83 },"����": { id: "4", root: 3, djd: 1,c:87 },"�ӱ�": { id: "5", root: 0, djd: 1,c:142 },"ɽ��": { id: "6", root: 0, djd: 1,c:303 },"����": { id: "7", root: 0, djd: 1,c:412 },"����": { id: "8", root: 0, djd: 1,c:560 },"����": { id: "9", root: 0, djd: 1,c:639 },"������": { id: "10", root: 0, djd: 1,c:698 },"���ɹ�": { id: "11", root: 0, djd: 0,c:799 },"����": { id: "12", root: 1, djd: 1,c:904 },"ɽ��": { id: "13", root: 0, djd: 1,c:1000 },"����": { id: "14", root: 1, djd: 1,c:1116 },"�㽭": { id: "15", root: 1, djd: 1,c:1158 },"����": { id: "16", root: 2, djd: 1,c:1303 },"����": { id: "17", root: 0, djd: 1,c:1381 },"����": { id: "18", root: 2, djd: 1,c:1482 },"�㶫": { id: "19", root: 2, djd: 1,c:1601 },"����": { id: "20", root: 2, djd: 1,c:1715 },"����": { id: "21", root: 2, djd: 1,c:1827 },"�Ĵ�": { id: "22", root: 3, djd: 1,c:1930 },"����": { id: "23", root: 2, djd: 1,c:2121 },"����": { id: "24", root: 3, djd: 1,c:2144 },"����": { id: "25", root: 3, djd: 1,c:2235 },"����": { id: "26", root: 3, djd: 0,c:2951 },"����": { id: "27", root: 3, djd: 1,c:2376 },"����": { id: "28", root: 3, djd: 1,c:2487 },"�ຣ": { id: "29", root: 3, djd: 0,c:2580 },"����": { id: "30", root: 3, djd: 1,c:2628 },"�½�": { id: "31", root: 3, djd: 0,c:2652 },"̨��": { id: "32", root: 2, djd: 0,c:2768 },"���": { id: "42", root: 2, djd: 0,c:2754 },"����": { id: "43", root: 2, djd: 0,c:2770 },"���㵺": { id: "84", root: 2, djd: 0,c:84 }};
$("<dl><dt>��ѡ��ʡ��</dt><dd><a href='#none' p='1'>����</a>��<a href='#none' p='3'>���</a>��<a href='#none' p='5'>�ӱ�</a>��<a href='#none' p='13'>ɽ��</a>��<a href='#none' p='6'>ɽ��</a>��<a href='#none' p='8'>����</a>��<a href='#none' p='9'>����</a>��<a href='#none' p='10'>������</a>��<a href='#none' p='11'>���ɹ�</a>��<a href='#none' p='27'>����</a>��<br><a href='#none' p='28'>����</a>��<a href='#none' p='29'>�ຣ</a>��<a href='#none' p='30'>����</a>��<a href='#none' p='31'>�½�</a></dd><dt>��ѡ��ʡ��</dt><dd><a href='#none' p='2'>�Ϻ�</a>��<a href='#none' p='12'>����</a>��<a href='#none' p='15'>�㽭</a>��<a href='#none' p='14'>����</a></dd><dt>��ѡ��ʡ��</dt><dd><a href='#none' p='19'>�㶫</a>��<a href='#none' p='20'>����</a>��<a href='#none' p='16'>����</a>��<a href='#none' p='23'>����</a>��<a href='#none' p='32'>̨��</a>��<a href='#none' p='42'>���</a>��<a href='#none' p='43'>����</a>��<a href='#none' p='84'>���㵺</a></dd><dt>��ѡ��ʡ��</dt><dd><a href='#none' p='22'>�Ĵ�</a>��<a href='#none' p='4'>����</a>��<a href='#none' p='24'>����</a>��<a href='#none' p='25'>����</a>��<a href='#none' p='26'>����</a></dd><dt>��ѡ��ʡ��</dt><dd><a href='#none' p='17'>����</a>��<a href='#none' p='7'>����</a>��<a href='#none' p='18'>����</a>��<a href='#none' p='21'>����</a></dd></dl>").insertBefore("#store-selector .clr");
//var POPSOPLBP={"10399_0":5,"13726_0":5,"10539_0":5,"12556_0":6,"10918_0":5,"10754_0":6,"10595_0":5,"12278_0":4,"11517_0":5,"12116_0":5,"10551_2":5,"11241_2":4,"10215_2":5,"11001_2":5,"11256_2":5,"10403_2":5,"11559_2":6,"10206_2":5,"10308_2":6};
var stockstatus = { 33: "�ֻ�", 34: "�޻�", 36: "Ԥ��", 39: "��;", 0: "ͳ����" };
var orgname = { 6: "������", 3: "�Ϻ���", 10: "���ݲ�", 4: "�ɶ���", 5: "�人��", 7: "�Ͼ���", 8: "���ϲ�", 9: "������" };
var shopurls={10831:"http://ochirly.360buy.com"};
var cName = "ipLocation";
var currentLocation = "����";
//cookie operate
function getCookie(name) {var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));if (arr != null) return unescape(arr[2]);return null;}
function setCookie(name,value,expires,path,domain,secure){if(!path){path="/"}if(!domain){domain="360buy.com"}if(!secure){secure=false}var today=new Date();today.setTime(today.getTime());if(expires){expires=expires*1000*60*60*24}var expires_date=new Date(today.getTime()+(expires));document.cookie=name+'='+escape(value)+((expires)?';expires='+expires_date.toGMTString():'')+((path)?';path='+path:'')+((domain)?';domain='+domain:'')+((secure)?';secure':'')};function deleteCookie(name,path,domain){if(getCookie(name))document.cookie=name+'='+((path)?';path='+path:'')+((domain)?';domain='+domain:'')+';expires=Thu, 01-Jan-1970 00:00:01 GMT'};
if(warestatus!=1){
	$("#product-intro").attr("class","product-intro-itemover");
	$('#noitem-related-list').remove();
	//$('.itemover-title').after('<div id="itemover-related-list"><p>����������Ʒ</p><div class="itemover-related-list"><div class="iloading">���ڼ����У����Ժ�...</div></div></div><div id="itemover1-related-list"><p>��������Ʒ���˻����ˣ�</p><div class="itemover1-related-list"><div class="iloading">���ڼ����У����Ժ�...</div></div>')
}
$.pbuyurl="";
$.haveShow=0;$.POPDAYS="";$.ipschange=true;$._ptload=false;$._ptloadcon="";$.easybuy_button=$("#choose-btn-easybuy");$.divide_button=$("#choose-btn-divide");$.notice_button=$("#choose-btn-notice");$.append_button=$("#choose-btn-append .btn-append");
$.getShopUrl=function(r){if(r.url)return r.url;var id=r.id;if(shopurls[id])return shopurls[id];return "http://mall.360buy.com/index-"+id+".html";};
$.getDeliver = function(p){
	r=p.D;
	if(pageConfig.product.skuid<1000000000){
		$("#brand-bar .seller-link").html("<em class='dt'>��\u3000\u3000�ң�</em><a href='#none'>�����̳�</a>");$("#brand-bar .seller").show();
		$("#summary-service").html("").show();
		if (p.PopType==999){
			$("<div class='dt'>��\u3000\u3000��</div><div class='dd'>����Ʒ�ɳ����ṩ�����ͣ��ɾ����̳ǿ��߷�Ʊ</div>").appendTo("#summary-service");
		}else if(p.PopType==99){
			$("<div class='dt'>��\u3000\u3000��</div><div class='dd'>����Ʒ��<a href='#'>�����̳�</a>�ṩ�����ͣ���Ӫ�̿��߷�Ʊ</div>").appendTo("#summary-service");
		}else{
			$("<div class='dt'>��\u3000\u3000��</div><div class='dd'>����Ʒ��<a href='#'>�����̳�</a>�ṩ�����������ͼ����߷�Ʊ</div>").appendTo("#summary-service");
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
						if(r.type==0) {$.POPDAYS="��<b>ƽ��</b>�ʹ�ʱ�䣺"+POPSOPLBP[key]+"��";}
						else if(r.type==2) {$.POPDAYS="<div class='dt'>&nbsp;</div><div class='dd'>����������<a href='"+$.getShopUrl(r)+"' target='_blank'>"+r.vender+"</a><b>ƽ��</b>�ʹ�ʱ�䣺"+POPSOPLBP[key]+"��</div>";}
					}*/
					if(r.type==0){
						$("<div class='dt'>��\u3000\u3000��</div><div class='dd'>����Ʒ"+(pageConfig.product.yfinfo&&pageConfig.product.yfinfo.nofree?"�˷�":"")+"��<a href='"
						+$.getShopUrl(r)+"' target='_blank' clstag='shangpin|keycount|product|bbtn'>"+r.vender+"</a>"+(pageConfig.product.yfinfo&&pageConfig.product.yfinfo.nofree?"��ȡ":"�ṩ")+"�����������ͼ����߷�Ʊ</div>").appendTo("#summary-service");
						if (r.linkphone){$("#sellerphone").remove();$("#evaluate").after("<p id='sellerphone' style=' clear: both;overflow: hidden;padding: 10px 0 0 10px;'><em class='dt'>����绰��</em><em>"+r.linkphone+"</em></p>");}
					}
					else if(r.type==1){
						$("<div class='dt'>��\u3000\u3000��</div><div class='dd'>����Ʒ��<a href='"+$.getShopUrl(r)+"' target='_blank' clstag='shangpin|keycount|product|bbtn'>"+r.vender+"</a>�ṩ���ɾ����̳Ǹ������ͼ����߷�Ʊ</div>").appendTo("#summary-service");
					}
					else if(r.type==2){
						$("<div class='dt'>��\u3000\u3000��</div><div class='dd'>����Ʒ��<a href='"+$.getShopUrl(r)+"' target='_blank' clstag='shangpin|keycount|product|bbtn'>"+r.vender+"</a>�ṩ���ɾ����̳Ǹ������ͼ����߷�Ʊ</div>").appendTo("#summary-service");
					}
					else if(r.type==5){
						$("<div class='dt'>��\u3000\u3000��</div><div class='dd'>����Ʒ��Ʊ��<a href='"+$.getShopUrl(r)+"' target='_blank' clstag='shangpin|keycount|product|bbtn'>"+r.vender+"</a>�ṩ���ɾ����̳Ǹ�������</div>").appendTo("#summary-service");
					}
					if(r.type!=4){
						$("#summary-service").show();
						$("#brand-bar .seller-link").html("<em class='dt'>��&nbsp;&nbsp;&nbsp;&nbsp;�ң�</em><a href='"+$.getShopUrl(r)+"' target='_blank' clstag='shangpin|keycount|product|bbtn'>"+r.vender+"</a>");
						if($("#brand-bar .seller-btn").length==0)$("<div class='seller-btn clearfix'></div>").appendTo("#brand-bar .seller");
						$("<a id='seller-enter' href='"+$.getShopUrl(r)+"' target='_blank' clstag='shangpin|keycount|product|bbtn'>�������ҵ���</a>").appendTo("#brand-bar .seller-btn");
						if($("#product-intro .itemover-title button").length==0&&$("#product-intro .itemover-title h3").length>0)$("<button type='button' clstag='shangpin|keycount|product|bbtn'>�������ҵ���</button>").appendTo("#product-intro .itemover-title h3");
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
	var txt1="<b></b><span>����</span><span>����</span>",txt3="<b></b><span>��39</span><span>���˷�</span>",txt5="<b></b><span>�ۺ�</span><span>����</span>";
	var url1="http://help.360buy.com/help/question-67.html",url3="http://help.360buy.com/help/question-65.html",url5="http://help.360buy.com/help/question-97.html",urlp3="_blank",urlp5="_blank";
	if(type==1){//self
	}else if(type==2){//sop
		 txt1="<b></b><span>����</span><span>֧��</span>";txt3="<b></b><span>����</span><span>ֱ��</span>";txt5="<b></b><span>7��</span><span>�˻�</span>";
		 url1="http://help.360buy.com/help/question-68.html";url3="#none";url5="#none";urlp3="_self";urlp5="_self";
	}else if(type==3){//other
		 txt1="<b></b><span>����</span><span>����</span>";txt3="<b></b><span>��39</span><span>���˷�</span>";txt5="<b></b><span>7��</span><span>�˻�</span>";
		url1="http://help.360buy.com/help/question-67.html";url3="http://help.360buy.com/help/question-65.html";url5="#none";urlp5="_self";
	}
	$("#brand-bar .fore1 a").html(txt1).attr("href",url1);
	$("#brand-bar .fore3 a").html(txt3).attr("href",url3).attr("target",urlp3);
	$("#brand-bar .fore5 a").html(txt5).attr("href",url5).attr("target",urlp5);
}
$.getStockDesc = function(s){
	if (s==33||s==5)
		return "�µ�����������";
	if (s==0||s==34||s==18)
		return "����Ʒ��ʱ������"+(pageConfig.product.skuid>1000000000?"":"��<a href='http://notify.home.360buy.com/email.action?type=2&id=" + pageConfig.product.skuid + "&key=" + pageConfig.product.skuidkey + "' target='_blank'>����֪ͨ</a>");
	if (s == 39)
		return "�����ڲ������Ԥ�ƻ���2~6�쵽�ﱾ�ֿ�";
	if (s == 36)
		return "��Ҫ�򹩻��̲ɹ���������ܷ���";
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
				$.append_button.attr("onclick","").unbind("click").click(function() {  mark(pageConfig.product.skuid, 2) }); //���ﳵ	
			}
			else{*/
				$.append_button.attr("href",getBuyUrl(pageConfig.product.skuid)).attr("onclick","").unbind("click").click(function() { /*BuyUrl(pageConfig.product.skuid);*/ mark(pageConfig.product.skuid, 2) }); //���ﳵ
			//}
		}
		if($(".nav-minicart-btn").length>0)$(".nav-minicart-btn").show(); //mini���ﳵ
		$("#choose-btn-subsidy").show();
		if(window.noItemOver)noItemOver.init();
		return;
	}
	if(pageConfig&&pageConfig.product)pageConfig.product.isStock=false;
	$("#choose-btn-append").addClass("disabled").removeClass('choose-btn-append-lite');
	if(warestatus==1){
		$("#product-intro").attr("class","product-intro-noitem");
	}
	if($("#choose-noresult").length==0)$("<li id='choose-noresult'><div class='dd'><strong>��ѡ��������Ʒ��ʱ�޻����ǳ���Ǹ��</strong></div></li>").insertAfter("#choose-result");
	$.easybuy_button.hide();
	$.divide_button.hide();
	if(pageConfig.product.skuid<1000000000){$.notice_button.show()}else{$.notice_button.hide()}
	if($.append_button.length>0){if($.append_button.attr("href")!="#none"){$.pbuyurl=$.append_button.attr("href")}$.append_button.attr("href","#none").attr("onclick","").unbind("click"); }//���ﳵ
	if($(".nav-minicart-btn").length>0)$(".nav-minicart-btn").hide(); //mini���ﳵ
	$("#choose-btn-subsidy").hide();
	if($.notice_button.length==0&&pageConfig.product.skuid<1000000000){
		$("<div id='choose-btn-notice' class='btn'><a  class='btn-notice' href='http://notify.home.360buy.com/email.action?type=2&id=" + pageConfig.product.skuid + "&key=" + pageConfig.product.skuidkey + "' target='_blank'>����֪ͨ<b></b></a></div>").insertAfter("#choose-btn-append");
		$.notice_button=$("#choose-btn-notice");
	}
	//if (pageConfig.product.skuid > 1000000) return;
	if(window.noItemOver)noItemOver.init(pageConfig.product.type);
	//log(1,6,pageConfig.product.skuid);
};
//stock callback
function getProvinceStockCallback(result) {
	var stockdesc="<strong>�ֻ�</strong>";
	if (result.stock) {
		stockdesc = (result.stock.StockStateName=="ͳ����"|| result.stock.StockStateName=="�޻�")?"<strong class='store-over'>�޻�</strong>":("<strong>"+result.stock.StockStateName+"</strong>");
		$("#store-selector .text div").html(currentLocation);
		pageConfig.product.yfinfo={};
		if(result.stock.D&&result.stock.D.prompt&&(new Number(result.stock.D.prompt))>0)pageConfig.product.yfinfo={nofree:true,cash:result.stock.D.prompt};
		$("#store-prompt").html(stockdesc+"��"+$.getStockDesc(result.stock.StockState)
			+(pageConfig.product.yfinfo.nofree?"��<span style='cursor:pointer' title='һ�����̹�������Ʒ��ֻ��ȡһ���˷�'>�˷ѣ�<span style='color:#f00;'>��"+pageConfig.product.yfinfo.cash+"</span><span>":""));
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
							$("#store-prompt").html(stockdesc+"��"+"����ƷΪԤ����Ʒ���µ�����"+$._ptloadcon);
						}
					}
					if(r&&r.wareTemplateContent)$("<div>"+r.wareTemplateContent+"</div>").insertBefore("#product-detail-1 .detail-content:first");
					if(r&&r.wareTemplateBottomContent)$("<div>"+r.wareTemplateBottomContent+"</div>").insertAfter("#product-detail-1 .detail-content:last");
				};
				$.getJSONP("http://mall.360buy.com/json/wareTemplate/queryWareTemplateContent.action?skuId="+pageConfig.product.skuid+"&jsoncallback=_showPopTemplete",_showPopTemplete);
			}else{
				if($._ptloadcon)$("#store-prompt").html(stockdesc+"��"+"����ƷΪԤ����Ʒ���µ�����"+$._ptloadcon);
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
		if (pid) {currentLocation = ck;GetRealStock(pid.id);}else{currentLocation = "����";GetRealStock(1);}
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
// �������
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
									alert("��ʱ�޷��ύ,�����Ժ�����!");
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
						$.easybuy_button.html("<a class='btn-easybuy' href='#'>���ɹ�<b></b></a>");
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
//��ɫ����
var choose_color=$("#choose-color a");var choose_colori=$("#choose-color .item");
var choose_version=$("#choose-version .item");
var alert_choose_version=$("#choose-version .dt").html();alert_choose_version=alert_choose_version?alert_choose_version.replace("��",""):"";
var alert_choose_color=$("#choose-color .dt").html();alert_choose_color=alert_choose_color?alert_choose_color.replace("��",""):"";
var alert_choose="��ѡ"+alert_choose_color.replace("ѡ��","")+"��"+alert_choose_version.replace("ѡ��","")+"��Ʒ�޻�";
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
			$("#choose-result .dd").html("<em>��ѡ��</em>"+(cur_color?"<strong>��"+cur_color+"��</strong>":"")+(cur_color&&cur_version?"��":"")+(cur_version?"<strong>��"+cur_version+"��</strong>":"")
				+(cur_color?"":"<span class='item-warnning'><s></s>��"+alert_choose_color+"</span>")+(cur_version?"":"<span class='item-warnning'><s></s>��"+alert_choose_version+"</span>"));
			$("#choose-color").attr("class",cur_color?"":"item-hl-bg");
			$("#choose-version").attr("class",cur_version?"":"item-hl-bg");
			if($("#choose-noresult").length>0){$("#choose-noresult").remove();}
			$.easybuy_button.hide();
			$.divide_button.hide();
			$.notice_button.hide();
			if($.append_button.length>0)$.append_button.attr("href","#none").attr("onclick","").unbind("click"); //���ﳵ
			if($(".nav-minicart-btn").length>0)$(".nav-minicart-btn").hide(); //mini���ﳵ
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

