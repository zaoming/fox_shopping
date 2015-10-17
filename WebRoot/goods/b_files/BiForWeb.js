function readPinCookie(name) {
    var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
    if (arr != null) return arr[2]; return '';
}
var loguri = "http://csc.360buy.com/log.ashx?type1=$type1$&type2=$type2$&data=$data$&pin=$pin$&referrer=$referrer$&jinfo=$jinfo$&callback=?";
callback1 = function(data) {
    ;
}
log = function(type1, type2, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) {
    var data = '';
    for (i = 2; i < arguments.length; i++) {
        data = data + arguments[i] + '|||';
    }
    var url = loguri.replace(/\$type1\$/, escape(type1));
    url = url.replace(/\$type2\$/, escape(type2));
    url = url.replace(/\$data\$/, escape(data));
    url = url.replace(/\$pin\$/, escape(decodeURIComponent(readPinCookie("pin"))));
    url = url.replace(/\$referrer\$/, escape(document.referrer));
    url = url.replace(/\$jinfo\$/, escape(''));
    $.getJSON(
            url,
            callback1
        );
}
function GetWarePriceimg(sku) {
    return "<img  onerror=\"this.src='http://www.360buy.com/images/no1.gif'\" src=\"http://jprice.360buyimg.com/price/gp" + sku + "-1-1-1.png\" />";
}
function getPuoductlink(sku) {
    if (sku > 10000000 && sku < 20000000) {
        return "http://book.360buy.com/" + sku + ".html";
    }
    else if (sku > 20000000 && sku < 30000000) {
        return "http://mvd.360buy.com/" + sku + ".html";
    }
    else {
        return "http://www.360buy.com/product/" + sku + ".html";
    }
}
function GetImgMasterUrl(wid, Folder) {
    var domain = 10;
    switch (wid % 5) {
        case 0:
            domain = 10;
            break;
        case 1:
            domain = 11;
            break;
        case 2:
            domain = 12;
            break;
        case 3:
            domain = 13;
            break;
        case 4:
            domain = 14;
            break;
        default:
            domain = 10;
            break;
    }
    return "http://img" + domain + ".360buyimg.com/" + Folder + "/";
}
function verifyPrice(price) {
    if (!price || price == '') {
        return price;
    }
    var result;
    var i = price.toString().split('.');
    if (i.length == 1) {
        result = i[0] + '.' + '00';
    }
    else if (i.length == 2) {
        if (i[1].length == 1) {
            result = i[0] + '.' + i[1] + '0';
        }
        else if (i[1].length == 2) {
            result = price;
        }
        else if (i[1].length > 2) {
            result = i[0] + '.' + i[1].substring(0, 2);
        }
    }
    return result;
}
function accAdd(arg1, arg2) {
    var r1, r2, m;
    try { r1 = arg1.toString().split(".")[1].length } catch (e) { r1 = 0 }
    try { r2 = arg2.toString().split(".")[1].length } catch (e) { r2 = 0 }
    m = Math.pow(10, Math.max(r1, r2))
    return (arg1 * m + arg2 * m) / m
}
function accSub(arg1, arg2) {
    var r1, r2, m, n;
    try { r1 = arg1.toString().split(".")[1].length } catch (e) { r1 = 0 }
    try { r2 = arg2.toString().split(".")[1].length } catch (e) { r2 = 0 }
    m = Math.pow(10, Math.max(r1, r2));
    n = (r1 >= r2) ? r1 : r2;
    return ((arg1 * m - arg2 * m) / m).toFixed(n);
}

//除了“购买了还购买了其他的地方也在用统计不要更改此方法”
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
//过渡页拆分统计
reCookieName = "reWidsTs";
function reClick3(type2, pwid, sku, num) {
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
    //推荐位点击
    log(3, type2, sku);
    //log('RC', 'CK', type2, pwid, sku[0], num);
}
function setCookie(name, value, date) {
    var Days = date;
    var exp = new Date();
    exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
    document.cookie = name + "=" + escape(value) + ";expires=" + exp.toGMTString() + ";path=/;domain=.360buy.com";
}
function getCookie(name) {
    var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
    if (arr != null) return unescape(arr[2]); return null;
}
function getflag(name) {
    if (getCookie(name) != null & getCookie(name) != "") {
        return 1;
    }
    return 0;
}
//我的购物车页面推荐商品(购买了同样商品的顾客还购买了)
//----------------------start-------------------------------------
var CartRecommandWare;
function GetRecommandWare(wids, showContainer) {
    $.getJSON("http://prs.360buy.com/GetRecommendWare.aspx?ip=" + getCookie("ipLocation") + "&wids=" + wids + "&jsoncallback=?",
        function(json) {
            if (json != undefined && json != "" && json.length > 0) {
                log('R2', 'Show', json.length);
                CartRecommandWare = json;
                GetRecommandWarePage(showContainer, 3);
                var len = $(".num > li").length;
                var index = 0;
                var adTimer;
                $(".num li").mouseover(function() {
                    index = $(".num li").index(this);
                    showImg(index);
                }).eq(0).mouseover();
                $('.ad').hover(function() {
                    clearInterval(adTimer);
                }, function() {
                    adTimer = setInterval(function() {
                        showImg(index)
                        index++;
                        if (index == len) { index = 0; }
                    }, 5000);
                }).trigger("mouseleave");
            }
        }
    );
}
//我的购物车页面推荐商品拼凑每页html(购买了同样商品的顾客还购买了)
function GetRecommandWarePage(showContainer, pagesize) {
    var wcart_pagecount = Math.ceil(CartRecommandWare.length / pagesize);
    var wcart_start = 0;
    var wcart_end = 0;
    var wcart_start
    var html = "";
    html += "<div class=\"c-top\"></div>";
    html += "<div class=\"content_right\">";
    html += "<h3>购买了同样商品的顾客还购买了</h3>";
    html += "<ul class=\"num\">";
    for (var i = 1; i <= wcart_pagecount; i++) {
        html += "<li>" + i + "</li>";
    }
    html += "</ul>";
    html += "<div class=\"ad\">";
    html += "<div class=\"slider\">";
    html += "<ul>";
    for (var curpage = 1; curpage <= wcart_pagecount; curpage++) {
        wcart_start = (curpage - 1) * pagesize;
        wcart_end = wcart_start + pagesize - 1;
        if (wcart_end >= CartRecommandWare.length) {
            wcart_end = CartRecommandWare.length - 1;
        }
        html += "<li class=\"Product_List_S3\">";
        html += "<ul>";
        for (var i = wcart_start; i <= wcart_end; i++) {
            html += "<li>";
            html += "<dl onclick = 'reClick(\"2\",\"" + CartRecommandWare[i].Pwid + "\",\"" + CartRecommandWare[i].Wid + "#" + CartRecommandWare[i].WMeprice + "\",\"" + i + "\")'>";
            html += "<dt><a href=" + getPuoductlink(CartRecommandWare[i].Wid) + " title=\"" + CartRecommandWare[i].Wname + "&#13;" + CartRecommandWare[i].Promotitle + "\" target=\"_blank\"><img onerror=\"this.src='http://www.360buy.com/images/none/none_150.gif'\" src=\"" + GetImgMasterUrl(CartRecommandWare[i].Wid, "n4") + CartRecommandWare[i].ImageUrl + "\" /></a></dt>";
            html += "<dd>";
            html += "<div class=\"p_Name\"><a href=" + getPuoductlink(CartRecommandWare[i].Wid) + " title=\"" + CartRecommandWare[i].Wname + "&#13;" + CartRecommandWare[i].Promotitle + "\" target=\"_blank\">" + CartRecommandWare[i].Wname + "<font style=\"color:#ff0000\">" + CartRecommandWare[i].Promotitle + "</font></a></div>";
            html += "<div class=\"p_Price\"><img onerror=\"this.src='http://www.360buy.com/images/no1.gif'\" src=\"" + CartRecommandWare[i].PriceImg + "\" /></div>";
            html += "<div class=\"p_Opp\"><a onclick=\"AddProduct('" + CartRecommandWare[i].Wid + "',1,this)\" href=\"#none\"><img alt=\"加入购入车\" title=\"加入购入车\" src=\"http://www.360buy.com/purchase/skin/images/addcart2.gif\" /></a></div>";
            html += "</dd>";
            html += "</dl>";
            html += "</li>";
        }
        html += "</ul>";
        html += "</li>";
    }
    html += "</ul>";
    html += "</div>";
    html += "</div>";
    html += "</div>";
    html += "<div class=\"c-bot\"></div>";
    document.getElementById(showContainer).innerHTML = html;
}
function showImg(index) {
    var adHeight = $(".content_right .ad").height();
    $(".slider").stop(true, false).animate({ top: -adHeight * index }, 1000);
    $(".num li").removeClass("on").eq(index).addClass("on");
}

function NewGetRecommandWare(wids) {
    $.getJSON("http://prs.360buy.com/GetRecommendWare.aspx?ip=" + getCookie("ipLocation") + "&wids=" + wids + "&jsoncallback=?",
    function(json) {
        if (!json) { return; }

        var html = "";
        for (var i = 0; i < json.length; i++) {
            html += "<li onclick = 'reClick(\"2\",\"" + json[i].Pwid + "\",\"" + json[i].Wid + "#" + json[i].WMeprice + "\",\"" + i + "\")'>";
            html += "<div class=\"p-img\"><a href=" + getPuoductlink(json[i].Wid) + " title=\"" + json[i].Wname + "\" target=\"_blank\"><img onerror=\"this.src='http://www.360buy.com/images/none/none_150.gif'\" src=\"" + GetImgMasterUrl(json[i].Wid, "n3") + json[i].ImageUrl + "\" class=\"loading-style2\" /></a></div>";
            html += "<div class=\"p-name\"><a href=" + getPuoductlink(json[i].Wid) + " title=\"" + json[i].Wname + "\" target=\"_blank\">" + json[i].Wname + json[i].WareTitle + "</a></div>";
            html += "<div class=\"p-price\"><img onerror=\"this.src='http://www.360buy.com/images/no1.gif'\" src=\"" + json[i].PriceImg + "\" /></div>";
            html += "<div class=\"p-btn\"><a class=\"btn\" href=\"#\"><span class=\"btn-icon\">1</span><span class=\"btn-text\">加入购物车</span></a></div>";
            html += "</li>";
        }
        $(".clearfix").html(html);
        $(".clearfix").show();
        log('R2', 'Show', json.length);
    });
}
//---------过渡页面“购买了还购买了”和“您可能感兴趣的商品”的显示--begin--------------
var CurrentWids = "";
function GetWares(Wids) {
    CurrentWids = Wids;
    $.getJSONP("http://simigoods.360buy.com/GetInterimPageNew.aspx?ip=" + getCookie("ipLocation") + "&wids=" + Wids + "&callback=InterimPageHtml", InterimPageHtml);
}
InterimPageHtml = function(json) {
    if (json != undefined && json != null && json != "" && json.length > 0) {
        str = json.split('&#!#&');
        if (str[0] == '') {
            $('#similar').hide();
        }
        else {
            $('#similarData').html(str[0]);
            var StatisticsKey = (CurrentWids.length == 6 || CurrentWids.length == 8) ? "&TrsBuy" : "&TrsBuyP";
            //log(str[2] + StatisticsKey, 'Show');
            log('R4', 'Show');

        }
        if (str[1] == '') {
            $('#promotion').hide();
        }
        else {
            $('#promotionData').html(str[1])
            var StatisticsKey = (CurrentWids.length == 6 || CurrentWids.length == 8) ? "&TrsNed" : "&TrsNedP";
            //log(str[2] + StatisticsKey, 'Show');
            log('R5', 'Show');

        }
        ShowTag();
        //log(GetFirstType() + '&Buy', 'Show');
    }
}
//过渡页促销icon显示
function ShowTag() {
    var arr, arr1, arr2 = new Array();
    var skuids = new String();
    arr1 = $("#promotionData dl dd span");
    arr2 = $("#similarData dl dd span");
    arr = $.merge($.makeArray(arr1), $.makeArray(arr2));
    $.each(arr, function(i, v) {
        if ($(v).attr('sku') != undefined && $(v).attr('sku') != "" && $(v).attr('sku').length > 0) {
            skuids += $(v).attr('sku') + ',';
        }
    });

    if (skuids == undefined && skuids == "" && skuids.length <= 0) {
        return;
    }
     
    $.getJSON("http://price.360buy.com/PromotionFlag.aspx?pid=" + skuids.substring(0, skuids.length - 1) + "&jsoncallback=?", function(json) {
        if (!json) { return; }
        json = json.data;
        var pInfo;
        for (var i = 0; i < json.length; i++) {
            pInfo = "";
            for (var j = 0; j < json[i].PF.length; j++) {
                switch (json[i].PF[j]) {

                    case 1:
                        pInfo += "<a class=\"pt1\" title=\"本商品正在降价销售中\">直降</a>";
                        break;
                    case 2:
                        pInfo += "<a class=\"pt2\" title=\"购买本商品送赠品\">赠品</a>";
                        break;
                    case 3:
                        pInfo += "<a class=\"pt3\" title=\"购买本商品返优惠券\">返券</a>";
                        break;
                    case 4:
                        pInfo += "<a class=\"pt4\" title=\"购买本商品送积分\">送积分</a>";
                        break;
                    default:
                        return;
                }
            }
            $("#p" + json[i].Pid).html(pInfo);
        }
    });
}
//-----商品订单页面，推荐显示---begin-------------------------------------
function OrderPageRe() {
    var InWids = "";
    var Wids = $('#jdhome_orderlist_recproduct').text().replace(/'/g, "");
    if (this.location.hostname.toLowerCase().indexOf('jd2008', 0) >= 0) {
        $("a[clstag$='click|keycount|orderinfo|order_product']").each(function(i, o) {
            if (i >= 4) { return false; }
            var being = o.href.lastIndexOf("/") + 1;
            var end = o.href.lastIndexOf(".");
            InWids += o.href.substring(being, end) + ",";
            return true;
        })
        InWids = InWids.substring(0, InWids.length - 1)
    }
    else {
        var arrWids = Wids.split(",");
        if (arrWids.length > 0) {
            if (arrWids.length >= 4) {
                for (var j = 0; j < 5; j++) {
                    InWids = InWids + arrWids[j] + ",";
                }
            }
            else {
                for (var j = 0; j < arrWids.length; j++) {
                    InWids = InWids + arrWids[j] + ",";
                }
            }
            InWids = InWids.substring(0, InWids.length - 1)
        }
    }
    $.getJSONP("http://simigoods.360buy.com/OrderRecNew.aspx?identity=" + escape(getCookie("pin")) + "&ip=" + getCookie("ipLocation") + "&wids=" + InWids + "&callback=OrderRecommandWarePage", OrderRecommandWarePage);
}
OrderRecommandWarePage = function(json) {
    if (json != undefined && json != null && json != "" && json.length > 0) {
        OrderRecommandWarePageHtml(json);
        log('DDR', 'Show');
        //log(GetFirstType() + '&Buy', 'Show');
    }
}
function OrderRecommandWarePageHtml(json) {
    var Wids = $('#jdhome_orderlist_recproduct').text().replace(/'/g, "");
    var Order_end = json.length - 1;
    var html = "";
    html += "<div class=\"mt\">";
    if (Wids.length >= 1) {
        html += "<h2>根据您的购买记录，我们为您推荐</h2>";
    }
    else {
        html += "<h2>您可能感兴趣的商品</h2>";
    }
    html += "<div class=\"extra\">";
    html += "<a target=\"_blank\" href='http://prs.360buy.com/PersonalSimiRec.aspx' clstag='click|keycount|rorder|persmore'>今日为您推荐</a>";
    html += "</div>";
    html += "</div>";
    html += "<div class=\"mc\">";
    html += "<div class=\"reco-l\" id=\"brands-left\">";
    html += "<div></div>";
    html += "</div>";
    html += "<div class=\"i-reco\" id=\"reco-list\">";
    html += "<ul class=\"list-h\">";
    for (var i = 0; i <= Order_end; i++) {
        if (Wids.indexOf(json[i].Wid) < 0) {
            html += "<li onclick = 'reClick(\"DDR\",\"\",\"" + json[i].Wid + "#" + json[i].WMeprice + "\",\"" + i + "\")'>";
            html += "<div class=\"p-img\"><a href=" + json[i].WidStr + " title=\"" + json[i].Wname + "&#13;" + json[i].Promotitle + "\" target=\"_blank\"><img width=\"160\" height=\"160\" src=" + json[i].ImageUrl + "  onerror=\"this.src='http://www.360buy.com/images/none/none_150.gif'\" alt=\"" + json[i].Wname + "\"/></a></div>";
            html += "<div class=\"p-name\"><a href=" + json[i].WidStr + " title=\"" + json[i].Wname + "&#13;" + json[i].Promotitle + "\" target=\"_blank\">" + json[i].Wname + json[i].Promotitle + "</a></div>";
            html += "<div class=\"p-price\">京东价：<strong>" + GetWarePriceimg(json[i].Wid) + "</strong></div>";
            html += "</li>";
        }
    }
    html += "</ul>";
    html += "</div>";
    html += "<div class=\"reco-r\" id=\"brands-right\">";
    html += "<div></div>";
    html += "</div>";
    html += "</div>";
    $('#reco').html(html);
    $('#reco').show();
    $("#reco-list").jdMarquee({
        deriction: "right",
        auto: true,
        width: 704,
        height: 250,
        step: 4,
        speed: 4,
        delay: 10,
        control: true,
        _front: "#brands-right",
        _back: "#brands-left"
    });
}
// -----分类列表页新用户推荐---begin---------------
function ListRecP(pwid, keyword) {
    if (keyword == null && keyword == undefined) {
        keyword = "";
    }
    $.getJSONP("http://simigoods.360buy.com/FirstOrderRec.aspx?ip=" + getCookie("ipLocation") + "&pwid=" + pwid + "&keyword=" + keyword + "&callback=ListRecPCallback",
		ListRecPCallback
	);
}
ListRecPCallback = function(json) {
    if (json != undefined && json != "" && json.length > 0) {
        $("#hotsale").fadeOut(function() { $("#hotsale").replaceWith(json).fadeIn() });
        log('NR', 'Show');
    }
}
//我的京东改版后“猜你喜欢”的推荐--------start-------------------------------------
function GuessYouLike() {
    $.getJSON("http://prs.360buy.com/GuessYouLike.aspx?ip=" + getCookie("ipLocation") + "&jsoncallback=?",
    function(json) {
        GuessYouLikeCallback(json)
    })
}
GuessYouLikeCallback = function(json) {
    if (json != undefined && json != "" && json.length > 0) {
        $("#GuessLike").html(json);
        log('R3', 'Show', 12);
        $("#GuessLike").jdMarquee({
            deriction: "left",
            width: 548,
            height: 183,
            step: 4,
            speed: 4,
            delay: 10,
            control: true,
            _front: "#recoright01",
            _back: "#recoleft01"
        });
    }
}
//初始化方法
Init = function() {
    if ($('#jdhome_orderlist_recproduct').length != 0) {
        OrderPageRe();
    }
}
Init();