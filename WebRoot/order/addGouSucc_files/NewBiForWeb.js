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
    return "<img onerror=\"this.src='http://www.360buy.com/images/no1.gif'\" src=\"http://jprice.360buyimg.com/price/gp" + sku + "-1-1-1.png\" />";
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
function reClickRouter(type2, pwid, sku, num) {
    var parameters = type2.split('#');
    reClick(parameters[0], pwid, sku, num);
    reClick3(parameters[1], pwid, sku, num);
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

    sku = sku.split("#");
    log(3, type2, sku[0]);
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
//---------过渡页面“购买了还购买了”和“您可能感兴趣的商品”的显示--begin--------------
var CurrentWids = "";
function GetWares(Wids) {
    CurrentWids = Wids;
    $.getJSONP("http://simigoods.360buy.com/GetInterimUtfPageNewJsonData.aspx?ip=" + getCookie("ipLocation") + "&wids=" + Wids + "&callback=InterimPageHtmlJson", InterimPageHtmlJson);
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
InterimPageHtmlJson = function(json) {
    if (json != undefined && json != null && json != "" && json.length > 0) {
        var userbuy = getCookie("_ghis");
        if (userbuy == null) {
            userbuy = "";
        }
        var html1 = "", html2 = "", i1 = 0, i2 = 0;
        for (var i = 0, len = json.length; i < len; i++) {
            var p2 = json[i];
            if (userbuy.indexOf(',' + p2.Code + ',') < 0) {
                if (i1 < 9) {
                    i1++;
                    html1 += "<dl onclick = 'reClick(\"4\",\"\",\"" + p2.Wid + "#" + p2.Wmeprice + "\",\"" + i + "\");'>";
                    html1 += "<dt class=\"p-img\"><a href=" + getPuoductlink(p2.Wid) + " title=\"" + p2.Name + "\" target=\"_blank\"><img src=\"" + GetImgMasterUrl(p2.Wid, "n4") + p2.Imgurl + "\" onerror=\"this.src='http://www.360buy.com/images/none/none_150.gif'\" width=\"100\" height=\"100\" alt=\"" + p2.Name + "\"/></a></dt>";
                    html1 += "<dd class=\"p-info\">";
                    html1 += "<div class=\"p-name\"><a href=" + getPuoductlink(p2.Wid) + " title=\"" + p2.Name + "\" target=\"_blank\">" + p2.Name + "</a></div>";
                    html1 += "<div class=\"p-price\">" + GetWarePriceimg(p2.Wid) + "<span sku=\"" + p2.Wid + "\" id=\"p" + p2.Wid + "\"></span></div>";
                    html1 += "<div class=\"p-btn\"><a onclick=\"AddProduct(" + p2.Wid + ",1,this)\" class=\"btn-append\" href=\"#none\">加入购物车</a></div>";
                    html1 += "</dd>";
                    html1 += "</dl>";
                } else {
                    i2++;
                    if (i2 > 6) break;
                    html2 += "<dl onclick = 'reClick(\"5\",\"\",\"" + p2.Wid + "#" + p2.Wmeprice + "\",\"" + i + "\");'>";
                    html2 += "<dt class=\"p-img\"><a href=" + getPuoductlink(p2.Wid) + " title=\"" + p2.Name + "\" target=\"_blank\"><img src=\"" + GetImgMasterUrl(p2.Wid, "n4") + p2.Imgurl + "\" onerror=\"this.src='http://www.360buy.com/images/none/none_150.gif'\" width=\"100\" height=\"100\" alt=\"" + p2.Name + "\"/></a></dt>";
                    html2 += "<dd class=\"p-info\">";
                    html2 += "<div class=\"p-name\"><a href=" + getPuoductlink(p2.Wid) + " title=\"" + p2.Name + "\" target=\"_blank\">" + p2.Name + "</a></div>";
                    html2 += "<div class=\"p-price\">" + GetWarePriceimg(p2.Wid) + "<span sku=\"" + p2.Wid + "\" id=\"p" + p2.Wid + "\"></span></div>";
                    html2 += "<div class=\"p-btn\"><a onclick=\"AddProduct(" + p2.Wid + ",1,this)\" class=\"btn-append\" href=\"#none\">加入购物车</a></div>";
                    html2 += "</dd>";
                    html2 += "</dl>";
                }
            }
        }
        if (html1) {
            html1 = "<div class=\"list-h\">" + html1 + "</div>";
            $('#similarData').html(html1);
            log('R4', 'Show');
        } else {
            $('#similar').hide();
        }
        if (html2) {
            html2 = "<div class=\"list-h\">" + html2 + "</div>";
            $('#promotionData').html(html2);
            log('R5', 'Show');
        } else {
            $('#promotion').hide();
        }
        ShowTag();
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