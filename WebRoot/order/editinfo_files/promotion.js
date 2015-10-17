function getPageAdwordService(result) {
	var promotionsDiv = $('#summary-promotion .dd'),
		promotionsExtraDiv = $('#summary-promotion-extra .dd'),
		giftsDiv = $('#summary-gifts .dd'),
		tips = $('#summary-tips .dd');

	var promotionsItems = [],
		promotionsItemsExtra = [],
		giftsItems = [],
		tipsItems = [];

	var infoList = result.promotionInfoList;
	var skuId = result.skuId;

	var str_len = (pageConfig.wideVersion && pageConfig.compatible) ? 35 : 25;

	var gift_TPL =  '{for item in adwordGiftSkuList}{if item.giftType==2}'
					+'<div class="li-img">'
					+   '<a target="_blank" href="http://www.360buy.com/product/${item.skuId}.html">{if item.imagePath !== ""}<img src="${pageConfig.FN_GetImageDomain(item.skuId)}n5/${item.imagePath}" width="25" height="25" />{else}<img src="http://misc.360buyimg.com/product/skin/2012/i/gift.png" width="25" height="25" />{/if}'
					+   '{if item.name.length > '+str_len+'}${item.name.substring(0,'+(str_len-1)+')+"..."}{else}${item.name}{/if}</a>'
					+   '<em class="hl_red"> × ${item.number}</em>'
					+'</div>'
					+'{/if}{/for}';

	//是否有附加信息 
	if (result.skuExtInfo !== '' && result.skuExtInfo != null) {
		tipsItems.push('<span class="hl_red">本商品' + result.skuExtInfo + '</span>');
	}

	if (infoList !== null && infoList.length > 0) {

		for (var i = 0; i < infoList.length; i++) {

			var levelText = getCustomerLevel(infoList[i].userLevel);
			var coupon = infoList[i].adwordCouponList;
			

			//单品促销
			if (infoList[i].promoType == 1) {
				if (infoList[i].minNum > 1) {

					promotionsItems.push( '<em class="hl_red_bg">多买优惠</em>' + '<em class="hl_red">购买' + infoList[i].minNum + '件及以上：￥' + infoList[i].price + '</em>');
				} else {

					if (infoList[i].userLevel <= 50 && infoList[i].discount > 0 && skuId.length != 10) {
						var limitText = ( infoList[i].limitUserType == 4 || infoList[i].maxNum >= 1 ) ? ('，购买超过' + infoList[i].maxNum + '件时不享受该优惠') : '';
						var limitHTML = ( infoList[i].limitUserType == 4 || infoList[i].maxNum >= 1 ) ? '限购' : '直降';
						promotionsItems.push('<em class="hl_red_bg">'+limitHTML+'</em><em class="hl_red">已优惠￥' + infoList[i].discount + ' ' + limitText + '</em>');
					} else if (infoList[i].userLevel > 50 && infoList[i].price > 0) {
						promotionsItems.push( '<em class="hl_red_bg">会员特享</em><em class="hl_red">' + levelText + '及以上会员价：￥' + infoList[i].price + '</em>');
					}
				}

				var couponList = infoList[i].adwordCouponList;
				var score = infoList[i].score;
				var jq = 0;

				if (score > 0) {
					promotionsItems.push('<em class="hl_red_bg">赠积分</em><em class="hl_red">赠' + score + '积分</em>');
				}
				if (coupon != null && coupon.length > 0) {
					$.each(coupon, function(name, value) {
						if (value.type == 1) {
							if (value.key != null && value.key != "") {
								if (value.adWord == null) {
									value.adWord = "";
								}
								if (value.adWord != null && value.adWord.length > 0) {
									promotionsItems.push('<em class="hl_red_bg">赠券</em><em class="hl_red">赠' + value.couponQouta + '元限品类京券（' + value.adWord + ')</em>');
								} else {
									promotionsItems.push('<em class="hl_red_bg">赠券</em><em class="hl_red">赠' + value.couponQouta + '元限品类京券</em>');
								}

							} else {
								promotionsItems.push('<em class="hl_red_bg">赠券</em><em class="hl_red">赠' + value.couponQouta + '元京券</em>');
							}
						}
					});
				}

			}

			// 封顶促销
			if (infoList[i].promoType == 15) {
				var adword = infoList[i].adword;
				var bookTopAdword = "参与图书“封顶折扣”活动";
				var unitInfor = '';

				if (adword != null && adword != "") {
					unitInfor += "<div><font color=\"#ef0000\">" + adword + "</font></div>";
				} else {
					unitInfor += "<div><font color=\"#ef0000\">" + bookTopAdword + "</font></div>";
				}

				promotionsItemsExtra.push(unitInfor);
			}

			//赠品促销
			if (infoList[i].promoType == 4) {

				var giftList = infoList[i].adwordGiftSkuList;

				if ( giftList.length > 0 & giftList !== null ) {
					var res = gift_TPL.process( infoList[i] );

					if ( res !== '' ) {
						giftsItems.push( res );
					}
					
				}

				var couponList = infoList[i].adwordCouponList;
				var score = infoList[i].score;
				var jq = 0;

				if (couponList != null && couponList.length > 0) {
					$.each(couponList, function(y, coupon) {
						if (coupon.type == 1) {
							jq = jq + coupon.couponQouta;
						}
					});
				}

				if (score > 0) {
					promotionsItems.push('<em class="hl_red_bg">赠积分</em><em class="hl_red">赠' + score + '积分</em><br />');
				}
				if (jq > 0) {
					if (score > 0) promotionsItems.push('<em class="hl_red_bg">赠券</em><em class="hl_red">赠' + jq + '元京券</em>');
					else promotionsItems.push('<em class="hl_red_bg">赠券</em><em class="hl_red">赠' + jq + '元京券</em>');
				}
			}

			//附件
			if (infoList[i].adwordGiftSkuList !== null && infoList[i].adwordGiftSkuList.length > 0) {
				var gift_list = infoList[i].adwordGiftSkuList;
				for (var k = 0; k < gift_list.length; k++) {
					if (gift_list[k].giftType == 1) {

						$('#product-detail-3').append('<div>' + gift_list[k].name + ' × ' + gift_list[k].number + '</div>')
					}
				}
			}

			//满返满赠促销
			if (infoList[i].promoType == 10) {
				//满 赠、返
				var FULL_REFUND = 1;
				//每满赠、返
				var FULL_REFUND_PER = 2;
				//加价购
				var EXTRA_PRICE = 4;
				//阶梯满减
				var FULL_LADDER = 6;
				//满返百分比
				var PERCENT = 8;
				//满返满赠促销子类型
				var fullRefundType = infoList[i].fullRefundType;
				var reward = infoList[i].reward;
				var needMoney = infoList[i].needMondey;
				var addMoney = infoList[i].addMoney;
				var topMoney = infoList[i].topMoney;
				var percent = infoList[i].percent;
				var score = infoList[i].score;
				var couponList = infoList[i].adwordCouponList;
				var haveGifts = infoList[i].haveFullRefundGifts;
				var jq = 0;
				var fullLadderList = infoList[i].fullLadderDiscountList;
				var adwordLink = infoList[i].adwordUrl;

				//拼接满返满赠信息
				var fullRefundInfo = "";
				if (couponList != null && couponList.length > 0) {
					$.each(couponList, function(z, couponValue) {
						if (couponValue.type == 1) {
							jq = jq + coupon.couponQouta;
						}
					});
				}

				if (fullRefundType == FULL_REFUND) {
					fullRefundInfo = '<em class="hl_red_bg">满减</em><em class="hl_red">满' + needMoney + '立减' + reward + '</em>';
					if (haveGifts) {
						fullRefundInfo = '<em class="hl_red"><em class="hl_red_bg">满赠</em>满' + needMoney + '元即赠，先到先得送完即止</em>';
					} else if (jq > 0) {
						fullRefundInfo = '<em class="hl_red_bg">满减</em><em class="hl_red">满' + needMoney + '元，赠' + jq + '元京券</em>';
					}
				} else if (fullRefundType == FULL_REFUND_PER) {
					if (reward > 0) {
						fullRefundInfo = '<em class="hl_red_bg">满减</em><em class="hl_red">每满' + needMoney + '元，可减' + reward + '元现金</em>';
						if (topMoney > 0) {
							fullRefundInfo += '<em class="hl_red">，最多可减' + topMoney + '元</em>';
						}
					} else {
						if (haveGifts) {
							fullRefundInfo = '<em class="hl_red_bg">满赠</em><em class="hl_red">每满' + needMoney + '元即赠，赠完即止</em>';
						} else if (jq > 0) {
							fullRefundInfo = '<em class="hl_red_bg">满赠</em><em class="hl_red">每满' + needMoney + '元，即赠' + jq + '元京券</em>';
						}
					}
				} else if (fullRefundType == EXTRA_PRICE) {
					if (addMoney > 0) {
						fullRefundInfo = '<em class="hl_red_bg">加价购</em><em class="hl_red">满' + needMoney + '元另加' + addMoney + '元即可购买热销商品</em>';
					}
				} else if (fullRefundType == PERCENT) {
					if (percent > 0) {
						percent = percent * 100;
						fullRefundInfo = '<em class="hl_red_bg">满减</em><em class="hl_red">满' + needMoney + '元，可减' + percent + '%</em>';
					}
				} else if (fullRefundType == FULL_LADDER) {
					if (fullLadderList != null && fullLadderList.length > 0) {
						//fullRefundInfo = '<em class="hl_red_bg">满减</em>该商品参加阶梯满减活动，购买活动商品<br/>';
						$.each(fullLadderList, function(z, fullLadderValue) {
							
							var tipsHtml = z == 0 ? '<em class="hl_red_bg">满减</em>' : '',
								isFirstSign = z == 0 ? '' : '，';

							if (fullLadderValue.needMoney > 0 && fullLadderValue.rewardMoney > 0) {
								
								fullRefundInfo = (fullRefundInfo + tipsHtml + '<em class="hl_red">满' + isFirstSign + fullLadderValue.needMoney + '减' + fullLadderValue.rewardMoney + '</em>');
							}
						});
						//fullRefundInfo = fullRefundInfo.substring(0, fullRefundInfo.length - 1)
					}
				}
				var fullRefundTotalInfo = "";
				if (fullRefundInfo != "") {
					if (adwordLink != null && adwordLink.length > 0) {
						fullRefundInfo = fullRefundInfo + '<a href="'+ adwordLink +'" target="_blank">&nbsp;&nbsp;详情 <s class="s-arrow">&gt;&gt;</s></a>';
						//"<a target=\"_blank\" style='color:#CE0000' xx='oo' href=\"" + adwordLink + "\">" +  + "</a>";
					}
					fullRefundTotalInfo = fullRefundInfo;
				}
				promotionsItems.push(fullRefundTotalInfo);

			}

			// //赠送积分、京券
			// if ( infoList[i].score > 0 ) {
			//	 promotionsItems.push( '赠<em class="hl_red">' + infoList[i].score + '</em>积分');
			// }
			// if (coupon != null && coupon.length > 0) {
			//	 $.each(coupon, function(name, value) {
			//		 if (value.type == 1) {
			//			 if (value.key != null && value.key != "") {
			//				 if (value.adWord == null) {
			//					 value.adWord = "";
			//				 }
			//				 if (value.adWord != null && value.adWord.length > 0) {
			//					 promotionsItems.push( '赠<em class="hl_red">' + value.couponQouta + '</em>元限品类京券（' + value.adWord + ')' );
			//				 } else {
			//					 promotionsItems.push( '赠<em class="hl_red">' + value.couponQouta + '</em>元限品类京券' );
			//				 }
			//			 } else {
			//				 promotionsItems.push( '赠<em class="hl_red">' + value.couponQouta + '</em>元京券' );
			//			 }
			//		 }
			//	 });
			// }  
			
			// 是否限时打折
			if (infoList[i].limitTimePromo == 1) {
				if ( $('#a-tips').length < 1 ) {
					$('#summary-price strong').after('<em id="a-tips">&nbsp;促销即将结束&nbsp;</em>');
				}
			}
		}
	}

	// 节能补贴
	if ( !!result.subsidyMoney == true ) {
		var isBr = tipsItems.length > 0 ? '<br/>' : '';

		$('#choose-btn-append').addClass('choose-btn-append-lite');

		tipsItems.push(isBr + '<em class="hl_red_bg">节能补贴</em>参加节能补贴，下单立减￥' + parseFloat(result.subsidyMoney).toFixed(2) + '&nbsp;&nbsp;<a href="http://help.360buy.com/help/question-91.html" target="_blank">查看更多细则</a>');

		var skuid = pageConfig.product.skuid,
			num = $('#buy-num').val();

		if ($('#choose-btn-subsidy').length <= 0) {
			setAmount.urlPerfix = 'http://jd2008.360buy.com/purchase/orderinfo_elePow.aspx?';

			$('#choose-btn-append').before('<div id="choose-btn-subsidy" class="btn"><a class="btn-subsidies" clstag="shangpin|keycount|product|jieneng" href="' + setAmount.urlPerfix + '' + $.param(setAmount.data) + '">参加节能补贴<b></b></a></div>');
			setAmount.targetLink = $('#choose-btn-subsidy .btn-subsidies');
		}

	} else {
		$('#choose-btn-subsidy').remove();
	}

	// 奢侈品
	if (pageConfig.product.tips == true) {
		var strPerfix = tipsItems.length > 0 ? '<br/>' : '';

		tipsItems.push(strPerfix + '此商品尊享7天无忧退换货服务');

	}

	/* 售后到家 */
	if ( pageConfig.product.brand == 1000 && (new RegExp(pageConfig.product.cat[2])).test('6864,672,1105') ) {
		tipsItems.push("<a class='hl_red' href='http://help.360buy.com/help/question-97.html' target='_blank' title='售后到家（仅针对京东指定商品）：自商品售出一年内，如出现质量问题，京东将提供免费上门取送及原厂授权维修服务。'>尊享1年期京东售后到家服务</a>");
	}

	if (giftsItems.length > 0) {
		// 赠品提示
		giftsDiv.parent().show();
		giftsDiv.html(giftsItems.join(''));
	} else {
		giftsDiv.parent().hide();
	}

	if (promotionsItems.length > 0) {
		var tipsHTML = '<em class="hl_red_bg">满减</em>';

		// 促销信息
		promotionsDiv.parent().show();
		promotionsDiv.html(promotionsItems.join('<br />'));
	} else {
		promotionsDiv.parent().hide();
	}

	if (promotionsItemsExtra.length > 0) {
		// 促销信息 extra
		promotionsExtraDiv.parent().show();
		promotionsExtraDiv.html(promotionsItemsExtra.join('&nbsp;&nbsp;&nbsp;&nbsp;'));
	} else {
		promotionsExtraDiv.parent().hide();
	}

	if (tipsItems.length > 0) {
		// 温馨提示
		tips.parent().show();
		tips.html(tipsItems.join('&nbsp;'));
	} else {
		tips.parent().hide();
	}

}

function getCustomerLevel(level) {
	switch (level) {
	case 50:
		return "注册用户";
	case 56:
		return "铁牌用户";
	case 59:
		return "注册用户";
	case 60:
		return "铜牌用户";

	case 61:
		return "银牌用户";

	case 62:
		return "金牌用户";

	case 63:
		return "钻石用户";

	case 64:
		return "经销商";

	case 65:
		return "VIP";

	case 66:
		return "京东员工";

	case -1:
		return "未注册";

	case 88:
		return "双钻用户";

	case 90:
		return "企业用户";

	case 103:
		return "三钻用户";

	case 104:
		return "四钻用户";

	case 105:
		return "五钻用户";
	}
	return "未知";
}

function refreshPack() {

	var skuId = $("#name").attr("pshowskuid") || pageConfig.product.skuid;

	$.ajax({
		url: "http://jprice.360buy.com/pageadword/" + skuId + "-1-1.html",
		dataType: "script",
		cache: true,
		scriptCharset: "utf-8"
	});

}
refreshPack();