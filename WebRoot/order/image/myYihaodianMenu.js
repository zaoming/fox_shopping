/* SVN.committedRevision=373325 */
function loadMyYihaodianLeftMenu(){if(currSiteType==2){var h=URLPrefix.mymall;var c=URLPrefix.mall}else{var h=URLPrefix.my;var c=URLPrefix.central}var a=document.getElementById("myYihaodianLeftMenu");var k=URLPrefix.my_statics||"http://image.yihaodianimg.com/member";var m=window.location.protocol+"//"+window.location.hostname+window.location.pathname;if(a){var e="";var f="";f+=".columnleft{width:200px; background:url("+k+"/member/images/user_bg_y.gif) right repeat-y; float:left;padding-right:4px!important; padding-right:1px;}";f+=".columnleft dl{background:url("+k+"/member/images/user_bg_x.gif) 0 -268px repeat-x ; border-left:#ccc 1px solid; margin-bottom:-2px; zoom:1;}";f+=".columnleft dt{height:32px; background:url("+k+"/member/images/user_bg.gif) -180px 7px no-repeat; padding-left:28px; font:bold 12px/32px Arial, Helvetica, sans-serif; color:#333;}";
f+=".columnleft dd{ font:10px/30px '宋体'; background:url("+k+"/member/images/user_bg_x.gif) 0 -71px repeat-x; background-position:0 -71px\9; margin:0 8px; color:#333;}";f+=".columnleft .last{background:none;}";f+=".columnleft .current{background-color:#FFEFD9; margin:0; padding:0 8px; color:#900;}";f+="#container .columnleft a{font-size:12px; color:#333;}";f+="#container a:hover{color:#900; text-decoration:none;}";f+=".bgnone{ background-image:none;}";f+=".fixedRight{position:fixed;_position:absolute;top:200px;top:50%;left:50%;margin-left:491px; z-index: 999}";f+=".fixedRight a{display:block;width:24px;padding-top:15px;background:url("+k+"/member/images/bg_spirit.png) -908px -441px no-repeat;color:#999;font-size:12px;text-decoration:none}";f+=".fixedRight a span{display:block;width:12px;padding:0 6px 5px;background:url("+k+"/member/images/bg.png) 0 bottom;color:#999;cursor:pointer;}";
f+="#container .fixedRight a:hover span{color:#c00}";e+="<dl>";e+="<dt>"+unescape("%u8BA2%u5355%u67E5%u8BE2")+"</dt>";e+="<dd>> <a href='"+URLPrefix.my+"/order/myOrder.do'>"+unescape("%u6211%u7684%u8BA2%u5355")+"</a></dd>";e+="<dd>> <a href='"+URLPrefix.my+"/tuangou/myGroupon.do' otherhref='"+c+"/tuangou/myGrouponAgo.do'>"+unescape("%u6211%u7684%u56E2%u8D2D%u8BA2%u5355")+"</a></dd>";e+="<dd>> <a href='"+URLPrefix.mymall+"/piao/piao.do'>"+unescape("%u6211%u7684%u7535%u5B50%u7968%u5238")+"</a></dd>";e+="<dd>> <a href='"+h+"/member/myCollection/myCollectionProduct.do'>"+unescape("%u6211%u7684%u6536%u85CF%u5939")+"</a></dd>";e+="<dd>> <a href='"+h+"/member/exp/comment.do' otherhref='"+h+"/member/exp/displayComment.do'>"+unescape("%u8BC4%u4EF7%u5546%u54C1")+"</a></dd>";e+="</dl>";e+="<dl>";e+="<dt>"+unescape("%u81EA%u52A9%u670D%u52A1")+"</dt>";
e+="<dd>> <a href='"+h+"/opinion/opinionList.do'>"+unescape("%u5728%u7EBF%u6295%u8BC9")+"</a></dd>";e+="<dd>> <a href='"+URLPrefix.my+"/return/returnApplyList.do'>"+unescape("%u5728%u7EBF%u9000%u6362%u8D27")+"</a></dd>";e+="<dd>> <a href='"+URLPrefix.my+"/invoice/invoiceApply.do'>"+unescape("%u5728%u7EBF%u8865%u5F00%u53D1%u7968")+"</a></dd>";e+="<dd>> <a href='"+URLPrefix.central+"/cms/view.do?topicId=18991'>"+unescape("%u5E38%u89C1%u95EE%u9898%u67E5%u8BE2")+"</a></dd>";e+="<dd>> <a href='"+URLPrefix.central+"/cms/view.do?topicId=18942'>"+unescape("%u5E2E%u52A9%u4E2D%u5FC3")+"</a></dd>";e+="</dl>";e+="<dl>";e+="<dt>"+unescape("%u8D26%u6237%u4FE1%u606F")+"</dt>";e+="<dd>> <a href='"+h+"/account/displayAccount.do'>"+unescape("%u8D26%u6237%u67E5%u8BE2")+"</a></dd>";e+="<dd>> <a href='"+URLPrefix.my+"/points/displayPointAccount.do'>"+unescape("%u79EF%u5206%u67E5%u8BE2%u4E0E%u5151%u6362")+"</a></dd>";
e+="<dd>> <a href='"+URLPrefix.my+"/giftcard/displayGiftCardAddMoney.do' otherhref='"+h+"/giftcard/manageGiftCard.do'>"+unescape("%u6211%u7684%u793C%u54C1%u5361")+"</a></dd>";e+="<dd>> <a href='"+h+"/coupon/displayCoupons.do' otherhref='"+h+"/coupon/displayUsedCoupons.do' otherhref2='"+h+"/coupon/displayExpiredCoupons.do'>"+unescape("%u6211%u7684%u62B5%u7528%u5238")+"</a></dd>";e+="</dl>";e+="<dl>";e+="<dt>"+unescape("%u865A%u62DF%u8BA2%u5355%u670D%u52A1")+"</dt>";e+="<dd>> <a href='"+URLPrefix.my+"/chongzhi/myMobileCharge.do'>"+unescape("%u6211%u7684%u624B%u673A%u5145%u503C")+"</a></dd>";e+="<dd>> <a href='"+URLPrefix.mymall+"/airTicket/airTicket.do'>"+unescape("%u6211%u7684%u673A%u7968")+"</a></dd>";e+="<dd>> <a href='"+URLPrefix.mymall+"/insurance/insurance.do'>"+unescape("%u6211%u7684%u4FDD%u9669")+"</a></dd>";
e+="<dd>> <a href='"+URLPrefix.my+"/member/trialCenter/myTrail.do'>"+unescape("%u6211%u7684%u8BD5%u7528%u4E2D%u5FC3")+"</a></dd>";e+="</dl>";e+="<dl>";e+="<dt>"+unescape("%u4E2A%u4EBA%u4FE1%u606F%u7BA1%u7406")+"</dt>";e+="<dd>> <a href='"+h+"/message/myMessage.do'>"+unescape("%u6211%u7684%u6D88%u606F")+"</a></dd>";e+="<dd>> <a href='"+h+"/member/userinfo/editinfo.do'>"+unescape("%u7F16%u8F91%u4E2A%u4EBA%u8D44%u6599")+"</a></dd>";e+="<dd>> <a href='"+h+"/member/userinfo/changepw.do'>"+unescape("%u4FEE%u6539%u5BC6%u7801")+"</a></dd>";e+="<dd>> <a href='"+h+"/member/bind/bind.do' otherhref='"+h+"/member/bind/finishBind.do' otherhref2='"+h+"/member/bind/successBind.do'>"+unescape("%u624B%u673A%u7ED1%u5B9A")+"</a></dd>";e+="<dd>> <a href='"+h+"/member/address/addressBook.do'>"+unescape("%u5730%u5740%u7C3F%u7BA1%u7406")+"</a></dd>";
e+="<dd>> <a href='"+URLPrefix.my+"/friend/invite.do'>"+unescape("%u9080%u8BF7%u597D%u53CB%u52A0%u51651%u53F7%u5E97")+"</a></dd>";e+="<dd>> <a href='"+URLPrefix.my+"/member/share/shareSet.do'>"+unescape("%u4E00%u952E%u5206%u4EAB")+"</a></dd>";e+="</dl>";e+="<img src='"+k+"/member/images/leftfooter.gif'/>";e+="<div id='fixedRight'></div>";var g=document.createElement("style");g.type="text/css";if(navigator.userAgent.indexOf("MSIE 6.")!=-1||navigator.userAgent.indexOf("MSIE 7.")!=-1||navigator.userAgent.indexOf("MSIE 8.")!=-1){g.styleSheet.cssText=f}else{g.innerHTML=f}document.getElementsByTagName("HEAD").item(0).appendChild(g);a.innerHTML=e;a.className="columnleft";for(i=0;i<document.getElementById("myYihaodianLeftMenu").getElementsByTagName("dl").length;i++){for(j=0;j<document.getElementById("myYihaodianLeftMenu").getElementsByTagName("dl")[i].getElementsByTagName("dd").length;
j++){if(document.getElementById("myYihaodianLeftMenu").getElementsByTagName("dl")[i].getElementsByTagName("dd")[j].innerHTML.indexOf(m)!=-1){document.getElementById("myYihaodianLeftMenu").getElementsByTagName("dl")[i].getElementsByTagName("dd")[j].className="current"}}}a.style.display="block";var b=c+"/advertise/getAdVoByJsonp.do?callback=?";var l;jQuery.getJSON(b,function(n){if(n.flag==1){jQuery("#fixedRight").addClass("fixedRight");jQuery("#fixedRight").html("<a id ='fixedLink' target='_blank'  onclick=\"gotracker(1,'"+n.tk+"')\"><span>"+n.text.substr(0,8)+"</span></a>");jQuery("#fixedLink").attr("href",n.link);jQuery("#fixedRight").css("marginTop",-jQuery("#fixedRight").height()/2+"px")}else{jQuery("#fixedRight").hide()}});if(navigator.userAgent.indexOf("MSIE 6.")!=-1){function d(){document.getElementById("fixedRight").style.pixelTop=jQuery(window).scrollTop()+jQuery(window).height()/2
}window.onscroll=d}}}loadMyYihaodianLeftMenu();(function(d){d.tools=d.tools||{version:"v1.2.5"},d.tools.scrollable={conf:{activeClass:"active",circular:!1,clonedClass:"cloned",disabledClass:"disabled",easing:"swing",initialIndex:0,item:null,items:".items",keyboard:!0,mousewheel:!1,next:".next",prev:".prev",speed:400,vertical:!1,touch:!0,wheelSpeed:0}};function e(h,i){var f=parseInt(h.css(i),10);if(f){return f}var g=h[0].currentStyle;return g&&g.width&&parseInt(g.width,10)}function a(f,g){var h=d(g);return h.length<2?h:f.parent().find(g)}var b;function c(l,m){var n=this,o=l.add(n),y=l.children(),z=0,f=m.vertical;b||(b=n),y.length>1&&(y=d(m.items,l)),d.extend(n,{getConf:function(){return m},getIndex:function(){return z},getSize:function(){return n.getItems().size()},getNaviButtons:function(){return i.add(j)},getRoot:function(){return l},getItemWrap:function(){return y
},getItems:function(){return y.children(m.item).not("."+m.clonedClass)},move:function(p,q){return n.seekTo(z+p,q)},next:function(p){return n.move(1,p)},prev:function(p){return n.move(-1,p)},begin:function(p){return n.seekTo(0,p)},end:function(p){return n.seekTo(n.getSize()-1,p)},focus:function(){b=n;return n},addItem:function(p){p=d(p),m.circular?(y.children("."+m.clonedClass+":last").before(p),y.children("."+m.clonedClass+":first").replaceWith(p.clone().addClass(m.clonedClass))):y.append(p),o.trigger("onAddItem",[p]);return n},seekTo:function(s,u,r){s.jquery||(s*=1);if(m.circular&&s===0&&z==-1&&u!==0){return n}if(!m.circular&&s<0||s>n.getSize()||s<-1){return n}var t=s;s.jquery?s=n.getItems().index(s):t=n.getItems().eq(s);var q=d.Event("onBeforeSeek");if(!r){o.trigger(q,[s,u]);if(q.isDefaultPrevented()||!t.length){return n
}}var p=f?{top:-t.position().top}:{left:-t.position().left};z=s,b=n,u===undefined&&(u=m.speed),y.animate(p,u,m.easing,r||function(){o.trigger("onSeek",[s])});return n}}),d.each(["onBeforeSeek","onSeek","onAddItem"],function(q,p){d.isFunction(m[p])&&d(n).bind(p,m[p]),n[p]=function(r){r&&d(n).bind(p,r);return n}});if(m.circular){var g=n.getItems().slice(-1).clone().prependTo(y),h=n.getItems().eq(1).clone().appendTo(y);g.add(h).addClass(m.clonedClass),n.onBeforeSeek(function(q,r,p){if(!q.isDefaultPrevented()){if(r==-1){n.seekTo(g,p,function(){n.end(0)});return q.preventDefault()}r==n.getSize()&&n.seekTo(h,p,function(){n.begin(0)})}}),n.seekTo(0,0,function(){})}var i=a(l,m.prev).click(function(){n.prev()}),j=a(l,m.next).click(function(){n.next()});!m.circular&&n.getSize()>1&&(n.onBeforeSeek(function(p,q){setTimeout(function(){p.isDefaultPrevented()||(i.toggleClass(m.disabledClass,q<=0),j.toggleClass(m.disabledClass,q>=n.getSize()-1))
},1)}),m.initialIndex||i.addClass(m.disabledClass)),m.mousewheel&&d.fn.mousewheel&&l.mousewheel(function(p,q){if(m.mousewheel){n.move(q<0?1:-1,m.wheelSpeed||50);return !1}});if(m.touch){var k={};y[0].ontouchstart=function(p){var q=p.touches[0];k.x=q.clientX,k.y=q.clientY},y[0].ontouchmove=function(r){if(r.touches.length==1&&!y.is(":animated")){var s=r.touches[0],p=k.x-s.clientX,q=k.y-s.clientY;n[f&&q>0||!f&&p>0?"next":"prev"](),r.preventDefault()}}}m.keyboard&&d(document).bind("keydown.scrollable",function(q){if(m.keyboard&&!q.altKey&&!q.ctrlKey&&!d(q.target).is(":input")){if(m.keyboard!="static"&&b!=n){return}var p=q.keyCode;if(f&&(p==38||p==40)){n.move(p==38?-1:1);return q.preventDefault()}if(!f&&(p==37||p==39)){n.move(p==37?-1:1);return q.preventDefault()}}}),m.initialIndex&&n.seekTo(m.initialIndex,0,function(){})
}d.fn.scrollable=function(f){var g=this.data("scrollable");if(g){return g}f=d.extend({},d.tools.scrollable.conf,f),this.each(function(){g=new c(d(this),f),d(this).data("scrollable",g)});return f.api?g:this}})(jQuery);(function(a){var b=a.tools.scrollable;b.autoscroll={conf:{autoplay:!0,interval:3000,autopause:!0}},a.fn.autoscroll=function(e){typeof e=="number"&&(e={interval:e});var c=a.extend({},b.autoscroll.conf,e),d;this.each(function(){var j=a(this).data("scrollable");j&&(d=j);var f,i=!0;j.play=function(){f||(i=!1,f=setInterval(function(){j.next()},c.interval))},j.pause=function(){f=clearInterval(f)},j.stop=function(){j.pause(),i=!0},c.autopause&&j.getRoot().add(j.getNaviButtons()).hover(j.pause,j.play),c.autoplay&&j.play()});return c.api?d:this}})(jQuery);(function(b){var c=b.tools.scrollable;
c.navigator={conf:{navi:".navi",naviItem:null,activeClass:"active",indexed:!1,idPrefix:null,history:!1}};function a(d,e){var f=b(e);return f.length<2?f:d.parent().find(e)}b.fn.navigator=function(d){typeof d=="string"&&(d={navi:d}),d=b.extend({},c.navigator.conf,d);var e;this.each(function(){var l=b(this).data("scrollable"),m=d.navi.jquery?d.navi:a(l.getRoot(),d.navi),v=l.getNaviButtons(),f=d.activeClass,g=d.history&&b.fn.history;l&&(e=l),l.getNaviButtons=function(){return v.add(m)};function h(p,n,o){l.seekTo(n);if(g){location.hash&&(location.hash=p.attr("href").replace("#",""))}else{return o.preventDefault()}}function i(){return m.find(d.naviItem||"> *")}function j(o){var n=b("<"+(d.naviItem||"a")+"/>").click(function(p){h(b(this),o,p)}).attr("href","#"+o);o===0&&n.addClass(f),d.indexed&&n.text(o+1),d.idPrefix&&n.attr("id",d.idPrefix+o);
return n.appendTo(m)}i().length?i().each(function(n){b(this).click(function(o){h(b(this),n,o)})}):b.each(l.getItems(),function(n){j(n)}),l.onBeforeSeek(function(n,o){setTimeout(function(){if(!n.isDefaultPrevented()){var p=i().eq(o);!n.isDefaultPrevented()&&p.length&&i().removeClass(f).eq(o).addClass(f)}},1)});function k(o,p){var n=i().eq(p.replace("#",""));n.length||(n=i().filter("[href="+p+"]")),n.click()}l.onAddItem(function(o,n){n=j(l.getItems().index(n)),g&&n.history(k)}),g&&i().history(k)});return d.api?e:this}})(jQuery);