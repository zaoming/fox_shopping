(function(l){var A="#site-nav .cart";var j="hover";var E="menu-bd";var k="mini-cart-";if(TB.Global.version==="2.0"){A="#J_GHeadCart";j="g_head-menu-hover";E="g_head-menu-bd";k="g_head-minicart-"}var g=KISSY,G=window,h=document,i=!"0"[0],K=i&&!window.XMLHttpRequest,o=h.domain,H=!(o.indexOf("taobao.com")>-1||o.indexOf("tmall.com")>-1),p=H?".daily.taobao.net":".taobao.com",B="http://cart"+p+"/",J=B+"trail_mini_cart.htm?",C=B+"del_mini_cart.htm?",s="\u6b63\u5728\u5220\u9664\u4e2d",f="\u5220\u9664",b=k,d=b+"hd",N=b+"bd",c=b+"img",D=b+"count",v=b+"del",y=b+"title",M=b+"info",z=b+"ft",L=b+"price",x=b+"bt",u=b+"content",F=b+"ready",n="data-cartId",t=".",e="",a=function(R){var Q=R.match(/&#[0-9]{1,5};/g);if(Q!=null){var P,S,O;for(O=0;O<Q.length;O++){P=Q[O];S=P.substring(2,P.length-1);if(S>=-32768&&S<=65535){R=R.replace(P,String.fromCharCode(S))}else{R=R.replace(P,"")}}}return R.replace("<","&lt;").replace(">","&gt;")},r=function(S){S.css({"white-space":"nowrap",overflow:"hidden"});if("textOverflow" in h.documentElement.style||"OTextOverflow" in h.documentElement.style){S.css({"text-overflow":"ellipsis","-o-text-overflow":"ellipsis"})}else{if(!S.data("text")){S.data("text",S.text())}var T=S.attr("text")||S.text(),Q=S.width(),P=0,O=T.length,U=O,R=new g.Node(S[0].cloneNode(true)).insertAfter(S);S.text(T);R.text(T).css({position:"absolute",width:"auto",visibility:"hidden",overflow:"hidden"});if(R.width()>Q){while((U=Math.floor((O+P)/2))>P){R.text(T.substr(0,U)+"\u2026");if(R.width()>Q){O=U}else{P=U}}S.text(T.substr(0,U)+"\u2026");if(!S.attr("title")){S.attr("title",T)}}R.remove()}},w=function(O){if(H){return}new Image().src="http://www.atpanel.com/jsclick?minicart="+O+"&cache="+g.now()},I="\u60a8\u8d2d\u7269\u8f66\u91cc\u8fd8\u6ca1\u6709\u4efb\u4f55\u5b9d\u8d1d\u3002",q="\u7cfb\u7edf\u76ee\u524d\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002",m="\u60a8\u8d2d\u7269\u8f66\u91cc\u7684\u5b9d\u8d1d\u5747\u5df2\u5931\u6548\u3002";G.MiniCart={init:function(Q,O){var P=this;Q=parseInt(Q);if(isNaN(Q)||Q<0){return}P.cartNum=Q;P._rendUI();if(!O){return}P._bindUI()},_rendUI:function(){var O=this;O.trigger=g.one(A);O.elem=new g.Node(O.trigger.children()[0]);O.content=new g.Node("<div>").addClass(u).appendTo(O.trigger);O.content.addClass(E)},_bindUI:function(){var O=this,P=O.content;TB.Global._addMenu(O.trigger[0]);O.elem.on("mouseenter",function(Q){if(TB.Global._OFF){return}var R=new g.Node(Q.target)[0].tagName.toLowerCase();if(R==="b"||R==="span"||R==="s"){Q.halt();return}O.show()}).on("click",function(){if(TB.Global._OFF){return}O._clicked=true;w("topclick")}).on("keydown",function(Q){if(TB.Global._OFF){return}if(Q.keyCode!==39&&Q.keyCode!==40){return}O.show()});P.on("click",function(S){if(TB.Global._OFF){return}var R=new g.Node(S.target),Q;if(R[0].tagName.toLowerCase()==="a"){Q=R.parent();if(Q.hasClass(v)){S.preventDefault();S.halt();if(R.html()===s){return}w("delete");R.html(s);g.getScript(C+"callback=MiniCart.remove&del_id="+Q.parent().attr(n)+"&t="+g.now(),function(){R.html(f);this.parentNode.removeChild(this)})}else{if(Q.hasClass(x)){w("showmycart")}}}})},remove:function(R){var O=this;if(!R){return}if(R.status){var Q=O.content,P=Q.one(t+N);g.each(P.children(),function(T){T=new g.Node(T);if(T.attr(n)==R.delCart){var S=function(){T.remove?T.remove():T[0].parentNode.removeChild(T[0]);O.setData(R);if(O.cartNum===0){O.hide()}};if(!K){T.animate?T.animate("opacity: 0",1,"easeOut",S):S()}else{S()}return false}})}else{alert(R.errMsg)}},show:function(){var P=this,Q=P.content,O=function(R){P.setData({status:false,errMsg:R})};w("popup");if((!P._data||P.isExpired)){Q.html(e).removeClass(F);if(P.cartNum<1){O(I);Q.addClass(F);return}g.later(function(){if(!P._clicked&&P._isShowing()){g.getScript(J+"callback=MiniCart.setData&t="+g.now(),function(){Q.addClass(F);this.parentNode.removeChild(this)});P._setTimeout(function(){O(q)})}},300)}},hide:function(){var O=this;g.later(function(){O.trigger.removeClass(j)},2000)},_isShowing:function(){return this.content.css("display")==="block"},_parseItem:function(T){var O=this,P=e,S=T.item,R=S?S.length:0,Q=0;if(R>0){Q=T.num-R;P+='<div class="'+d+'">\u6700\u8fd1\u52a0\u5165\u7684\u5b9d\u8d1d:</div><ul class="'+N+'">';g.each(S,function(V){var U="http://item"+p+"/item.htm?id="+V.itemId,W=a(V.title);P+="<li "+n+'="'+V.cartId+'"><div class="'+c+'"><a target="_top" href="'+U+'"><img src="'+V.picUrl+'" alt="'+W+'" /></a></div><div class="'+D+'">&yen;<strong class="'+L+'">'+V.price+'</strong></div><div class="'+y+'"><a target="_top" href="'+U+'" title="'+W+'">'+W+"</a></div>"+(V.sku&&V.sku.length?'<div class="'+M+'"><span>'+V.sku.join("</span><span>")+"</span></div>":e)+'<div class="'+v+'"><a href="#">\u5220\u9664</a></div></li>'});P+="</ul>"}if(Q>0){P+='<div class="'+z+'">'+O._parseRest(Q,T.num)+"</div>"}return P},_parseRest:function(O){if(O>0){return"\u8d2d\u7269\u8f66\u91cc\u8fd8\u6709"+O+"\u4ef6\u5b9d\u8d1d"}return e},_parseMsg:function(P){var O=e;O+='<div class="'+x+'"><a target="_top" href="http://ju.atpanel.com/?url='+B+'my_cart.htm?from=mini&ad_id=&am_id=&cm_id=&pm_id=150042785330be233161">\u67e5\u770b\u6211\u7684\u8d2d\u7269\u8f66</a>'+(P||e)+"</div>";return O},_setTimeout:function(P){var O=this;if(O._timeout){return}O._timeout=g.later(function(){P();O._timeout=l},10000)},_clearTimeout:function(){var O=this;if(O._timeout){O._timeout.cancel()}O._timeout=l},setData:function(P){var W=this,R=e,T=W.content;W._clearTimeout();if(!P){return}if(P.status){var S=P.num,U=false;if(g.isNumber(S)&&S===-2){S=W.cartNum-1;U=true}TB.Global.setCartNum(S);W._data=P;if(S>0){if(P.item&&P.item.length){R=W._parseItem(P)+W._parseMsg(e)}else{if(U){var Q=T.one(t+z),V=T.one(t+N).all("li").length;if(V){Q&&Q.html(W._parseRest(S-V,S));R=T.html()}else{R=W._parseMsg(Q?m:I);W.hide()}}else{R=W._parseMsg(m);W.hide()}}}else{if(S===0){R=W._parseMsg(I)}}W.isExpired=false;setTimeout(function(){W.isExpired=true},30000)}else{R=W._parseMsg(P.errMsg)}if(P.num!==-1){T.html(R);var O=T.prev("iframe");O&&O.offset(T.offset()).width(T.width()+30).height(T.height()+20);g.each(g.all(t+y),function(Z){Z=new g.Node(Z);var Y=280-Z.prev(t+D).width()-70,X=Z.one("a");X.width(Y);r(X)})}}}})();