function initCart(url){
	jQuery.ajax({
		type : "POST",
		dataType : "json",
		url : url,
		data : null,
		success : function(result) {
			if(result != null && result.success){
				var data = TrimPath.processDOMTemplate("template_Cart", result); 
				document.getElementById("cart_content").innerHTML = data;
				if(result.lastAddedSku != null){
					var pid = result.lastAddedSku.id; 
					if(pid != null && pid != ""){
						var backurl = "http://www.360buy.com/product/"+pid+".html";
						var url = PurchaseAppConfig.Domain + "/cart.html?backurl=" + backurl+"&rid="+Math.random();
						$(".btn-continue").attr("href",backurl);
						$(".btn-pay").attr("href",url);
					}
					$("#mycart-amount").html($("#skuCount").html());
					initYbInfo(PurchaseAppConfig.Domain+"/queryYbInfo.action?rid="+Math.random());
				}
			}
		},
		error:function(XMLHttpResponse){
		   
		}
	});
}

function initYbInfo(url){
	$.getJSON(url,function(result) {
		result.pid = getParam("pid");
		var data = TrimPath.processDOMTemplate("template_Cart_Yb", result); 
		document.getElementById("cart_yb").innerHTML = data;
	});
}

function addYbSkuToCart(id,num,targetId,packId){
	var type = SkuItemType.YbOfSkusOrGifts;
	if(packId != null && packId != "" && packId != 0){
		type = SkuItemType.YbOfPacks;
	}
	var param = "pid="+id+"&ptype="+type+"&pcount="+num+"&packId="+packId+"&targetId="+targetId;
	$.getJSON(PurchaseAppConfig.Domain+"/addYbSkuToCart.action?rd="+Math.random(),param,function(result){
		if(result != null && result.success){
			alert("增加延保服务成功");
		}else{
			alert("增加延保服务失败");
		}
	});
}

//判断此商品是否满1000个 
function isSkuFull(skuId,num){
	num=parseInt(num);
	var skuNum=parseInt(getSkuNum(skuId));
	if(skuNum+num>1000){
		return true;
	}
	return false;
}

/**
 * 得到当前cookie里商品的数量
 * @param skuId
 * @returns
 */
function  getSkuNum(skuId){
	  var cart=$.jCookie("cart-main");
	  cart = cart.replace(/\\/g,"");
	  cart = cart.replace(/\"/g,"");
	  if(cart == null || 
				 cart == "" ||
				 cart == "\"\"" ||
				 cart == "\"" ||
				 cart == "null"){
				  return 0;
	  }
	  var flag="&i&:"+skuId+"$";
	  var index=cart.indexOf(flag);
	  if(index == -1){
		  return 0;
	  }
	  var subLengh=index+flag.length;
	  cart=cart.substring(subLengh);
	  if(cart.indexOf("$")>-1){
	      var sku=cart.substring(0,cart.indexOf("$"));
		  if(sku !=null){
		     var skuObj=sku.split(":");
			 if(skuObj.length>0){
			    return skuObj[1];
			 }
		  }
	  
	  }
}

function AddProduct(id,count,obj){
	if(isSkuFull(id,count)){
	    alert("对不起,该商品已经超出最大购买数!");
	    return ;
	}
	$.getJSON(PurchaseAppConfig.Domain+"/addSkuToCartAsync.action?rd="+Math.random(),"pid="+id+"&ptype=1&pcount="+count,function(result){
		if(result != null && result.success){
			var data = TrimPath.processDOMTemplate("template_Cart", result); 
			document.getElementById("cart_content").innerHTML = data;
			if(result.addSkuLimitState != null &&
			   result.addSkuLimitState != "" &&
			   result.addSkuLimitState == "Add_Item_Fail"){
			   alert("添加商品失败,已超出购物车最大容量!");
			}
			else{
				if(id != null && id != ""){
					var backurl = "http://www.360buy.com/product/"+id+".html";
					var url = PurchaseAppConfig.Domain + "/cart.html?backurl=" + backurl+"&rid="+Math.random();
					$(".btn-continue").attr("href",backurl);
					$(".btn-pay").attr("href",url);
				}
				GetWares(id);
				ShowAddSucTip("商品已成功加入购物车！");
			}
			
		}else{
			ShowAddSucTip("增加商品失败！");
		}
	});

}

/**
 * 点击加入商品弹出对话框
 */
function ShowAddSucTip(message)
{
    $.jdThickBox({
    type:"text",
    source:"<div id=\"model-collect\" class=\"model-prompt\"><div class=\"con\"><b class=\"success\"></b><h5><font color=\"#009900\">"+message+"</font></h5><a href=\"http://cart.360buy.com/cart/cart.html\">查看购物车</a></div></div>", 
    width:300,
    height:100,
    title:"提示",
    _countdown:6
  })
}