reCookieName = "reWidsThirdRec";
var wids = "";
var atthref = "http://prs.360buy.com/PersonalSimiRec.aspx";
function readPinCookie(name)//读取cookies函数
{
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

function reClick2(type2, pwid, sku, num) {
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
// 截取固定长度子字符串 sSource为字符串,iLen为截取的长度
function getInterceptedStr(sSource, iLen) {
    if (sSource.replace(/[^\x00-\xff]/ig, "xx").length <= iLen) {
        return sSource;
    }
    var str = ""; var l = 0; var schar;
    for (var i = 0; schar = sSource.charAt(i); i++) {
        l += (schar.match(/[^\x00-\xff]/ig) != null ? 2 : 1);
        if (l < iLen - 1) { str += schar; } else { break; };
    }
    return str + "...";
}
function setCookie(name, value, date)//两个参数，一个是cookie的名子，一个是值
{
    var Days = date; //此 cookie 将被保存 30 天
    var exp = new Date();    //new Date("December 31, 9998");
    exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
    document.cookie = name + "=" + escape(value) + ";expires=" + exp.toGMTString() + ";path=/;domain=.360buy.com";
}
function getCookie(name)//读取cookies函数
{
    var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
    if (arr != null) return unescape(arr[2]); return null;
}
//-------以上为推荐系统的相关的统计代码，请勿删除-------------------------

//三级列表页推荐--------start------------------------------------
var Sort = "";
var type = "";
var key = "";
function ClubSimiGoods() {
    var wids = new Array();
    $("#plist ul li .p-img a").each(function(i, o) {
        if (i >= 4) { return false; }
        var being = o.href.lastIndexOf("/") + 1;
        var end = o.href.lastIndexOf(".");
        wids.push(o.href.substring(being, end));
        return true;
    })
    var Wid = wids[parseInt(wids.length * Math.random())];
    $.getJSONP("http://simigoods.360buy.com/ThridRec/ThridRec.aspx?ip=" + getCookie("ipLocation") + "&Wid=" + Wid + "&type=" + type + "&key=" + key + "&callback=ClubSimiGoodsCallback", ClubSimiGoodsCallback);
}
function GetKeyWords() {
    var keyword = "";
    var crumb = $(".crumb a");
    var crumbIndex = 3;
    if (crumb.length == 0) {
        crumb = $(".breadcrumb a");
        crumbIndex = 2;
    }
    keyword = $(crumb[crumbIndex]).text()
    return keyword;
}
ClubSimiGoodsCallback = function(json) {
    var keyWords = getInterceptedStr(GetKeyWords(), 12);
    if (json.AttentionRec != null && json.AttentionRec.length > 0) {
        var template = "<div class=\"mt\"></div><div class=\"mc\"><ul>{for item in AttentionRec}{if item_index==0}<li class='fore' onclick = 'reClick2(\"" + Sort + "&ThirdRec\",\"\",\"${item.Wid}#${item.WMeprice}\",\"${item_index}\")'>{else}<li onclick = 'reClick2(\"" + Sort + "&ThirdRec\",\"\",\"${item.Wid}#${item.WMeprice}\",${item_index})'>{/if}<div class='p-img'><a href='${item.Href}' title='${item.Wname}&#13;${item.Promotitle}' target=\"_blank\"><img width='100' height='100' src='${item.Img}' alt='${item.Wname}&#13;${item.Promotitle}'></a>{if item.AllNum != 0}<div class=\"pi${item.AllNum}\"></div>{else}{/if}</div><div class='rate'>{if item.Count > 0}<strong>${item.Count}%会买：</strong>{else}{/if}<a href='${item.Href}' title='${item.Wname}&#13;${item.Promotitle}' target=\"_blank\">${item.Wname}<font style=\"color:#ff0000\">${item.Promotitle}</font></a></div><div class='p-price'><strong>${item.Priceimg}</strong></div></li>{/for}</ul><div class=\"more\"><a target=\"_blank\" title=\"查看更多\" href=\"" + atthref + "\" clstag='click|keycount|recthird|persmore'>查看更多推荐</a></div></div>";
        var html = template.process(json);
        $('#finalbuy').html(html);
        $("#finalbuy .mt").html("<h2>浏览<font color=\"red\">" + keyWords + "</font>最终购买</h2>")
        $('#finalbuy').show();
        ischoiceonetag();
        log(Sort + "&ThirdRec", 'Show');
    }
    var keyWords2 = getInterceptedStr(GetKeyWords(), 12);
    if (json.AttentionBuy != null && json.AttentionBuy.length > 0) {
        var template = "<div class=\"mt\"></div><div class=\"mc\"><ul>{for item in AttentionBuy}{if item_index==0}<li class='fore' onclick = 'reClick2(\"" + Sort + "&ThirdBuy\",\"\",\"${item.Wid}#${item.WMeprice}\",\"${item_index}\")'>{else}<li onclick = 'reClick2(\"" + Sort + "&ThirdBuy\",\"\",\"${item.Wid}#${item.WMeprice}\",${item_index})'>{/if}<div class='p-img'><a href='${item.Href}' title='${item.Wname}&#13;${item.Promotitle}' target=\"_blank\"><img width='100' height='100' src='${item.Img}' alt='${item.Wname}&#13;${item.Promotitle}'></a>{if item.AllNum != 0}<div class=\"pi${item.AllNum}\"></div>{else}{/if}</div><div class='rate'><a href='${item.Href}' title='${item.Wname}&#13;${item.Promotitle}' target=\"_blank\">${item.Wname}<font style=\"color:#ff0000\">${item.Promotitle}</font></a></div><div class='p-price'><strong>${item.Priceimg}</strong></div></li>{/for}</ul></div>"
        var html = template.process(json);
        $('#alsobuy').html(html);
        $("#alsobuy .mt").html("<h2>浏览<font color=\"red\">" + keyWords2 + "</font>还购买了</h2>")
        $('#alsobuy').show();
        log(Sort + "&ThirdBuy", 'Show');
    }
}
function ThirdTypeRec() {
    var strUrl = this.location.href;
    var Thirdkey; var ThirdType; var firsttype;
    var Sbegin = strUrl.lastIndexOf("/");
    var Send = strUrl.lastIndexOf(".");
    var strUrlS = strUrl.substring(Sbegin + 1, Send);
    var strUrlSplit = strUrlS.split("-");
    ThirdType = strUrlSplit[2]; firsttype = strUrlSplit[0]; Thirdkey = "";
    if (strUrlSplit.length > 3) {
        for (var i = 3; i < strUrlSplit.length - 3; i++) {
            Thirdkey += strUrlSplit[i] + "-";
            if (i >= 9)
            { break; }
        }
        Thirdkey = Thirdkey.substring(0, Thirdkey.length - 1);
        if (Thirdkey == "0-0-0-0-0-0-0") {
            Thirdkey = "";
        }
    }
    var r = /^\+?[1-9][0-9]*$/;
    if (r.test(firsttype) && r.test(ThirdType)) {
        Sort = firsttype; type = ThirdType;
    }
    atthref = "http://prs.360buy.com/PersonalSimiRec.aspx?cid3=" + type;
    key = Thirdkey;
    ClubSimiGoods();
    log(Sort + "&ThirdPage", 'Show');
}
function ischoiceonetag() {
    if ($('#finalbuy div').length > 0) {
        var data = $($('#finalbuy ul li .p-img').find('a')[0]).attr('href');
        var a = data.split('/')[data.split('/').length - 1];
        var b = a.split('.');
        wids = b[0];
        atthref = "http://prs.360buy.com/PersonalSimiRec.aspx?cwid=" + wids + "&cid3=" + type;
        $($('#finalbuy .more').find('a')[0]).attr("href", atthref);
    }
}
ThirdTypeRec();
