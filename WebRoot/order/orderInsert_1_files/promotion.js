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
					+   '<em class="hl_red"> �� ${item.number}</em>'
					+'</div>'
					+'{/if}{/for}';

	//�Ƿ��и�����Ϣ 
	if (result.skuExtInfo !== '' && result.skuExtInfo != null) {
		tipsItems.push('<span class="hl_red">����Ʒ' + result.skuExtInfo + '</span>');
	}

	if (infoList !== null && infoList.length > 0) {

		for (var i = 0; i < infoList.length; i++) {

			var levelText = getCustomerLevel(infoList[i].userLevel);
			var coupon = infoList[i].adwordCouponList;
			

			//��Ʒ����
			if (infoList[i].promoType == 1) {
				if (infoList[i].minNum > 1) {

					promotionsItems.push( '<em class="hl_red_bg">�����Ż�</em>' + '<em class="hl_red">����' + infoList[i].minNum + '�������ϣ���' + infoList[i].price + '</em>');
				} else {

					if (infoList[i].userLevel <= 50 && infoList[i].discount > 0 && skuId.length != 10) {
						var limitText = ( infoList[i].limitUserType == 4 || infoList[i].maxNum >= 1 ) ? ('�����򳬹�' + infoList[i].maxNum + '��ʱ�����ܸ��Ż�') : '';
						var limitHTML = ( infoList[i].limitUserType == 4 || infoList[i].maxNum >= 1 ) ? '�޹�' : 'ֱ��';
						promotionsItems.push('<em class="hl_red_bg">'+limitHTML+'</em><em class="hl_red">���Żݣ�' + infoList[i].discount + ' ' + limitText + '</em>');
					} else if (infoList[i].userLevel > 50 && infoList[i].price > 0) {
						promotionsItems.push( '<em class="hl_red_bg">��Ա����</em><em class="hl_red">' + levelText + '�����ϻ�Ա�ۣ���' + infoList[i].price + '</em>');
					}
				}

				var couponList = infoList[i].adwordCouponList;
				var score = infoList[i].score;
				var jq = 0;

				if (score > 0) {
					promotionsItems.push('<em class="hl_red_bg">������</em><em class="hl_red">��' + score + '����</em>');
				}
				if (coupon != null && coupon.length > 0) {
					$.each(coupon, function(name, value) {
						if (value.type == 1) {
							if (value.key != null && value.key != "") {
								if (value.adWord == null) {
									value.adWord = "";
								}
								if (value.adWord != null && value.adWord.length > 0) {
									promotionsItems.push('<em class="hl_red_bg">��ȯ</em><em class="hl_red">��' + value.couponQouta + 'Ԫ��Ʒ�ྩȯ��' + value.adWord + ')</em>');
								} else {
									promotionsItems.push('<em class="hl_red_bg">��ȯ</em><em class="hl_red">��' + value.couponQouta + 'Ԫ��Ʒ�ྩȯ</em>');
								}

							} else {
								promotionsItems.push('<em class="hl_red_bg">��ȯ</em><em class="hl_red">��' + value.couponQouta + 'Ԫ��ȯ</em>');
							}
						}
					});
				}

			}

			// �ⶥ����
			if (infoList[i].promoType == 15) {
				var adword = infoList[i].adword;
				var bookTopAdword = "����ͼ�顰�ⶥ�ۿۡ��";
				var unitInfor = '';

				if (adword != null && adword != "") {
					unitInfor += "<div><font color=\"#ef0000\">" + adword + "</font></div>";
				} else {
					unitInfor += "<div><font color=\"#ef0000\">" + bookTopAdword + "</font></div>";
				}

				promotionsItemsExtra.push(unitInfor);
			}

			//��Ʒ����
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
					promotionsItems.push('<em class="hl_red_bg">������</em><em class="hl_red">��' + score + '����</em><br />');
				}
				if (jq > 0) {
					if (score > 0) promotionsItems.push('<em class="hl_red_bg">��ȯ</em><em class="hl_red">��' + jq + 'Ԫ��ȯ</em>');
					else promotionsItems.push('<em class="hl_red_bg">��ȯ</em><em class="hl_red">��' + jq + 'Ԫ��ȯ</em>');
				}
			}

			//����
			if (infoList[i].adwordGiftSkuList !== null && infoList[i].adwordGiftSkuList.length > 0) {
				var gift_list = infoList[i].adwordGiftSkuList;
				for (var k = 0; k < gift_list.length; k++) {
					if (gift_list[k].giftType == 1) {

						$('#product-detail-3').append('<div>' + gift_list[k].name + ' �� ' + gift_list[k].number + '</div>')
					}
				}
			}

			//������������
			if (infoList[i].promoType == 10) {
				//�� ������
				var FULL_REFUND = 1;
				//ÿ��������
				var FULL_REFUND_PER = 2;
				//�Ӽ۹�
				var EXTRA_PRICE = 4;
				//��������
				var FULL_LADDER = 6;
				//�����ٷֱ�
				var PERCENT = 8;
				//������������������
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

				//ƴ������������Ϣ
				var fullRefundInfo = "";
				if (couponList != null && couponList.length > 0) {
					$.each(couponList, function(z, couponValue) {
						if (couponValue.type == 1) {
							jq = jq + coupon.couponQouta;
						}
					});
				}

				if (fullRefundType == FULL_REFUND) {
					fullRefundInfo = '<em class="hl_red_bg">����</em><em class="hl_red">��' + needMoney + '����' + reward + '</em>';
					if (haveGifts) {
						fullRefundInfo = '<em class="hl_red"><em class="hl_red_bg">����</em>��' + needMoney + 'Ԫ�������ȵ��ȵ����꼴ֹ</em>';
					} else if (jq > 0) {
						fullRefundInfo = '<em class="hl_red_bg">����</em><em class="hl_red">��' + needMoney + 'Ԫ����' + jq + 'Ԫ��ȯ</em>';
					}
				} else if (fullRefundType == FULL_REFUND_PER) {
					if (reward > 0) {
						fullRefundInfo = '<em class="hl_red_bg">����</em><em class="hl_red">ÿ��' + needMoney + 'Ԫ���ɼ�' + reward + 'Ԫ�ֽ�</em>';
						if (topMoney > 0) {
							fullRefundInfo += '<em class="hl_red">�����ɼ�' + topMoney + 'Ԫ</em>';
						}
					} else {
						if (haveGifts) {
							fullRefundInfo = '<em class="hl_red_bg">����</em><em class="hl_red">ÿ��' + needMoney + 'Ԫ���������꼴ֹ</em>';
						} else if (jq > 0) {
							fullRefundInfo = '<em class="hl_red_bg">����</em><em class="hl_red">ÿ��' + needMoney + 'Ԫ������' + jq + 'Ԫ��ȯ</em>';
						}
					}
				} else if (fullRefundType == EXTRA_PRICE) {
					if (addMoney > 0) {
						fullRefundInfo = '<em class="hl_red_bg">�Ӽ۹�</em><em class="hl_red">��' + needMoney + 'Ԫ���' + addMoney + 'Ԫ���ɹ���������Ʒ</em>';
					}
				} else if (fullRefundType == PERCENT) {
					if (percent > 0) {
						percent = percent * 100;
						fullRefundInfo = '<em class="hl_red_bg">����</em><em class="hl_red">��' + needMoney + 'Ԫ���ɼ�' + percent + '%</em>';
					}
				} else if (fullRefundType == FULL_LADDER) {
					if (fullLadderList != null && fullLadderList.length > 0) {
						//fullRefundInfo = '<em class="hl_red_bg">����</em>����Ʒ�μӽ����������������Ʒ<br/>';
						$.each(fullLadderList, function(z, fullLadderValue) {
							
							var tipsHtml = z == 0 ? '<em class="hl_red_bg">����</em>' : '',
								isFirstSign = z == 0 ? '' : '��';

							if (fullLadderValue.needMoney > 0 && fullLadderValue.rewardMoney > 0) {
								
								fullRefundInfo = (fullRefundInfo + tipsHtml + '<em class="hl_red">��' + isFirstSign + fullLadderValue.needMoney + '��' + fullLadderValue.rewardMoney + '</em>');
							}
						});
						//fullRefundInfo = fullRefundInfo.substring(0, fullRefundInfo.length - 1)
					}
				}
				var fullRefundTotalInfo = "";
				if (fullRefundInfo != "") {
					if (adwordLink != null && adwordLink.length > 0) {
						fullRefundInfo = fullRefundInfo + '<a href="'+ adwordLink +'" target="_blank">&nbsp;&nbsp;���� <s class="s-arrow">&gt;&gt;</s></a>';
						//"<a target=\"_blank\" style='color:#CE0000' xx='oo' href=\"" + adwordLink + "\">" +  + "</a>";
					}
					fullRefundTotalInfo = fullRefundInfo;
				}
				promotionsItems.push(fullRefundTotalInfo);

			}

			// //���ͻ��֡���ȯ
			// if ( infoList[i].score > 0 ) {
			//	 promotionsItems.push( '��<em class="hl_red">' + infoList[i].score + '</em>����');
			// }
			// if (coupon != null && coupon.length > 0) {
			//	 $.each(coupon, function(name, value) {
			//		 if (value.type == 1) {
			//			 if (value.key != null && value.key != "") {
			//				 if (value.adWord == null) {
			//					 value.adWord = "";
			//				 }
			//				 if (value.adWord != null && value.adWord.length > 0) {
			//					 promotionsItems.push( '��<em class="hl_red">' + value.couponQouta + '</em>Ԫ��Ʒ�ྩȯ��' + value.adWord + ')' );
			//				 } else {
			//					 promotionsItems.push( '��<em class="hl_red">' + value.couponQouta + '</em>Ԫ��Ʒ�ྩȯ' );
			//				 }
			//			 } else {
			//				 promotionsItems.push( '��<em class="hl_red">' + value.couponQouta + '</em>Ԫ��ȯ' );
			//			 }
			//		 }
			//	 });
			// }  
			
			// �Ƿ���ʱ����
			if (infoList[i].limitTimePromo == 1) {
				if ( $('#a-tips').length < 1 ) {
					$('#summary-price strong').after('<em id="a-tips">&nbsp;������������&nbsp;</em>');
				}
			}
		}
	}

	// ���ܲ���
	if ( !!result.subsidyMoney == true ) {
		var isBr = tipsItems.length > 0 ? '<br/>' : '';

		$('#choose-btn-append').addClass('choose-btn-append-lite');

		tipsItems.push(isBr + '<em class="hl_red_bg">���ܲ���</em>�μӽ��ܲ������µ�������' + parseFloat(result.subsidyMoney).toFixed(2) + '&nbsp;&nbsp;<a href="http://help.360buy.com/help/question-91.html" target="_blank">�鿴����ϸ��</a>');

		var skuid = pageConfig.product.skuid,
			num = $('#buy-num').val();

		if ($('#choose-btn-subsidy').length <= 0) {
			setAmount.urlPerfix = 'http://jd2008.360buy.com/purchase/orderinfo_elePow.aspx?';

			$('#choose-btn-append').before('<div id="choose-btn-subsidy" class="btn"><a class="btn-subsidies" clstag="shangpin|keycount|product|jieneng" href="' + setAmount.urlPerfix + '' + $.param(setAmount.data) + '">�μӽ��ܲ���<b></b></a></div>');
			setAmount.targetLink = $('#choose-btn-subsidy .btn-subsidies');
		}

	} else {
		$('#choose-btn-subsidy').remove();
	}

	// �ݳ�Ʒ
	if (pageConfig.product.tips == true) {
		var strPerfix = tipsItems.length > 0 ? '<br/>' : '';

		tipsItems.push(strPerfix + '����Ʒ����7�������˻�������');

	}

	/* �ۺ󵽼� */
	if ( pageConfig.product.brand == 1000 && (new RegExp(pageConfig.product.cat[2])).test('6864,672,1105') ) {
		tipsItems.push("<a class='hl_red' href='http://help.360buy.com/help/question-97.html' target='_blank' title='�ۺ󵽼ң�����Ծ���ָ����Ʒ��������Ʒ�۳�һ���ڣ�������������⣬�������ṩ�������ȡ�ͼ�ԭ����Ȩά�޷���'>����1���ھ����ۺ󵽼ҷ���</a>");
	}

	if (giftsItems.length > 0) {
		// ��Ʒ��ʾ
		giftsDiv.parent().show();
		giftsDiv.html(giftsItems.join(''));
	} else {
		giftsDiv.parent().hide();
	}

	if (promotionsItems.length > 0) {
		var tipsHTML = '<em class="hl_red_bg">����</em>';

		// ������Ϣ
		promotionsDiv.parent().show();
		promotionsDiv.html(promotionsItems.join('<br />'));
	} else {
		promotionsDiv.parent().hide();
	}

	if (promotionsItemsExtra.length > 0) {
		// ������Ϣ extra
		promotionsExtraDiv.parent().show();
		promotionsExtraDiv.html(promotionsItemsExtra.join('&nbsp;&nbsp;&nbsp;&nbsp;'));
	} else {
		promotionsExtraDiv.parent().hide();
	}

	if (tipsItems.length > 0) {
		// ��ܰ��ʾ
		tips.parent().show();
		tips.html(tipsItems.join('&nbsp;'));
	} else {
		tips.parent().hide();
	}

}

function getCustomerLevel(level) {
	switch (level) {
	case 50:
		return "ע���û�";
	case 56:
		return "�����û�";
	case 59:
		return "ע���û�";
	case 60:
		return "ͭ���û�";

	case 61:
		return "�����û�";

	case 62:
		return "�����û�";

	case 63:
		return "��ʯ�û�";

	case 64:
		return "������";

	case 65:
		return "VIP";

	case 66:
		return "����Ա��";

	case -1:
		return "δע��";

	case 88:
		return "˫���û�";

	case 90:
		return "��ҵ�û�";

	case 103:
		return "�����û�";

	case 104:
		return "�����û�";

	case 105:
		return "�����û�";
	}
	return "δ֪";
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