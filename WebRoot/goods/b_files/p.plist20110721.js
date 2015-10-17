compare();
(function(){
	if (typeof jdwsment!="object"){
		return;
	}
	var url="http://price.360buy.com/PromotionFlag.aspx?pid="+jdwsment.skuids+"&jsoncallback=?";
	$.getJSON(url,function (json){
		if (!json){return;}
		json=json.data;
		var pInfo,prdbuy;
		for (var i=0;i<json.length;i++){
			pInfo="";
			prdbuy = $("#p"+json[i].Pid+" .pt5").length>0;
			for (var j=0;j<json[i].PF.length;j++){
				switch (json[i].PF[j]){
					case 1:
						pInfo+="<a class=\"pt1\" title=\"本商品正在降价销售中\">直降</a>";
						break;
					case 2:
						pInfo+="<a class=\"pt2\" title=\"购买本商品送赠品\">赠品</a>";
						break;
					case 3:
						pInfo+="<a class=\"pt3\" title=\"购买本商品返优惠券\">返券</a>";
						break;
					case 4:
						pInfo+="<a class=\"pt4\" title=\"购买本商品送积分\">送积分</a>";
						break;
					default:
						break;
				}
				if(prdbuy&&pInfo){$(pInfo).insertBefore("#p"+json[i].Pid+" .pt5");break;}
			}
			if(!prdbuy)$("#p"+json[i].Pid).html(pInfo);
		}
	});
})();
var  GetJdwsmentsCallback = function(json) {
	if (json.AdWordList){
		 for (var i=0; i<json.AdWordList.length; i++) {
			var object=$("#plist li[sku='"+json.AdWordList[i].wid +"']"),adTitle=json.AdWordList[i].waretitle;
			if (object.length){
				object.find(".p-img").find("img").attr("title",adTitle);
				object.find(".p-name").find("a").attr("title",adTitle);
				object.find(".adwords").html(adTitle);
			}
		 }
	}
};
(function(){
	if (typeof jdwsment!="object"){
		return;
	}
	var AdServiceUrl = "http://price.360buy.com/ProductsAdWordListHandler.ashx";
	$.getJSONP(AdServiceUrl + "?callback=GetJdwsmentsCallback&action=GetJdwsment&wids="+jdwsment.skuids+"&key="+jdwsment.key,GetJdwsmentsCallback);
})();
