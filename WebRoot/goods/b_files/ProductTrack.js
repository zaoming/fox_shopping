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
/* ---------- 埋点公用 end ---------- */

var ProductTrack = function( sRecent, sGuess ) {
	this.sRecent = sRecent;		// a string with css selector, like '#recent-view-track'
	this.sGuess = sGuess;
	
	this.reBuildJson = function( data, perPageNum ) {
		var totalPage = data.length/perPageNum;
		var resData = [];

		for ( var i = 0; i < totalPage; i++ ) {
			resData.push({ 'tabs': [], 'increment': null, 'count': perPageNum, skuids: []});
		}
		
		var m = 0;
		for ( var k = 0; k < data.length; k++ ) {
			if ( k%perPageNum == 0 ) { m++; }

			resData[(m-1)]['tabs'].push( data[k] );
			resData[(m-1)]['increment'] = m;
			resData[(m-1)]['skuids'].push( data[k].wid );

		}

		return resData
	};

	// set more link
	//$(this.sRecent).find('h2').after('<div class="extra" style="text-align:right;"><a target="_blank" href="#">更多</a></div>');
	
	// 埋点
	clsPVAndShowLog('', '', 3, 'p');
	clsPVAndShowLog('', '', 2, 'p');

};

ProductTrack.prototype = {
	hide: function() {
		$(this.sRecent).hide();
		$(this.sGuess).hide();
	},
	getCommentData: function( skuids ) {
		var url = 'http://club.360buy.com/clubservice.aspx?method=GetCommentsCount&referenceIds=';
		var _this = this;
		// 评论数据
		$.ajax({
			url: url + skuids,
			dataType: 'jsonp',
			success: function(data) {
				_this.setCommentData(data);
			}
		});		
	},
	setCommentData: function( data ) {

		var len = data.CommentsCount.length;

		for ( var i = 0; i < len; i++ ) {
			$('#g'+data.CommentsCount[i].SkuId).find('.star').removeClass('sa5').addClass('sa' + data.CommentsCount[i].AverageScore);
			$('#g'+data.CommentsCount[i].SkuId).find('.p-comm a').html( '(已有' + data.CommentsCount[i].CommentCount + '人评价)' );
		}
	},
	getData: function( url ) {
		var url = url || 'http://my.360buy.com/global/track.action?jsoncallback=?'
			_this = this;

		$.ajax({
			url: url,
			dataType: 'json',
			success: function(data) {
				_this.setContent(data);
			},
			error: function() {
				_this.hide();
			}
		});

			
		return this
	},
	setContent: function( data, recentTPL, guessTPL ) {
		var rTPL = '<ul>'
			+'	{for list in history}'
			+'    <li onclick="clsClickLog(\'\', \'\', \'${list.wid}\', 3, ${list_index}, \'rodGlobalHis\');">'
			+'        <div class="p-img">'
			+'            <a href="${list.productUrl}"><img src="${pageConfig.FN_GetImageDomain(list.wid)}n5/${list.imageUrl}" /></a>'
			+'        </div>'
			+'        <div class="p-name">'
			+'            <a href="${list.productUrl}">${list.wName}</a>'
			+'        </div>'
			+'        <div class="p-price">'
			+'            <img src="http://price.360buyimg.com/gp${list.wid},1.png" onerror="this.src=\'http://misc.360buyimg.com/lib/skin/e/i/error-3.gif\'" />'
			+'        </div>'
			+'    </li>'
			+'    {/for}'
			+'	  <!--<li class="all-recent" style="text-align:right;padding:5px 0;"><a href="#" target="_blank" style="color:#005ea7;">全部浏览历史 <span style="font-family:simsun;">&gt;</span></a></li>-->'
			+'</ul>';
		
		var gTPL = '{for list in tabs}'
			+'<li id="g${list.wid}" onclick="clsClickLog(\'\', \'\', \'${list.wid}\', 2, ${parseInt(increment-1)*parseInt(count)+parseInt(list_index)}, \'rodGlobalTrack\');">'
			+'	<div class="p-img">'
			+'		<a target="_blank" title="${list.wName}" href="${list.productUrl}"><img height="130" width="130" alt="${list.wName}" src="${pageConfig.FN_GetImageDomain(list.wid)}n3/${list.imageUrl}"></a>'
			+'	</div>'
			+'	<div class="p-name">'
			+'		<a target="_blank" title="${list.wName}" href="${list.productUrl}">${list.wName}</a>'
			+'	</div>'
			+'	<div class="p-comm">'
			+'		<span class="star sa5"></span><br/>'
			+'		<a target="_blank" href="http://club.360buy.com/review/${list.wid}-1-1.html">(已有0人评价)</a>'
			+'	</div>'
			+'	<div class="p-price">'
			+'		<strong>'
			+'			<img src="http://price.360buyimg.com/gp${list.wid},1.png" onerror="this.src=\'http://misc.360buyimg.com/lib/skin/e/i/error-3.gif\'" />'
			+'		</strong>'
			+'	</div>'
			+'</li>'
			+'{/for}';
		
		var sRecentTPL = recentTPL || rTPL,
			sGuessTPL = guessTPL || gTPL;
			

		// 浏览历史记录
		if ( data.history !== null && data.history.length > 0 ) {

			$(this.sRecent).find('.mc').html( sRecentTPL.process(data) );
			
			clsPVAndShowLog('', '', 3, 's');
		} else {
			$(this.sRecent).find('.mc').html( '<div class="no-track"><h4>您还未在京东留下足迹</h4><p>在您的购物旅程中，您可以随时通过这里查看您之前的浏览记录，以便快捷返回您曾经感兴趣的页面。</p></div>' );
		}
		
		// 猜你喜欢
		if ( data.guessyou !== null && data.guessyou.length > 0 ) {

			var resJSON = this.reBuildJson( data.guessyou, 5 );	//把返回数据按每个tab 5个商品重组JSON
			var resSTR = ''
			var resSkuids = [];
			
			for ( var k = 0; k < resJSON.length; k++ ) {
				var curr = k == 0 ? 'curr' : '';
				var isFirst = k == 0 ? '' : ' none';

				resSTR += ('<ul class="lh' + isFirst + '" data-widget="tab-content">' + sGuessTPL.process( resJSON[k] ) + '</ul>');
				resSkuids.push( resJSON[k].skuids.join(',') );
				
				$('#maybe-like .extra').append('<span class="' + curr + '" data-widget="tab-item">' + (k+1) + '</span>');
			}
			
			$(this.sGuess).find('.mc').attr('data-skuids', resSkuids.join(',')).html( resSTR );
			
			clsPVAndShowLog('', '', 2, 's');
			
			$('#maybe-like').Jtab({
				compatible: true
			});

			this.getCommentData( resSkuids.join(',') );
			
		} else {
			$(this.sGuess).find('.mc').html( '<div class="nothing">暂无推荐</div>' );
		}
	}
};

(function() {
	var PT = new ProductTrack( '#recent-view-track', '#maybe-like' ).getData('http://my.360buy.com/global/track.action?jsoncallback=?');
})();
