/*pub-1|2012-10-22 10:09:02*/(function(){var AP=window,o=document,B="g_tb_aplus_loaded";if(!o.getElementsByTagName("body").length){setTimeout(arguments.callee,50);return }if(AP[B]){return }AP[B]=1;var AN="5",K=location,e="https:"==K.protocol,h=parent!==self,z=1,X=(z?"0.0":""),J=K.pathname,As=(e?"https://img":"http://www")+".atpanel.com/",Av=(e?"https://":"http://")+"log.mmstat.com/",Af=Av+w(K.hostname)+".gif",l=[["logtype",h?0:1]],AX=location.href,AO=o.referrer,Ae=e&&(AX.indexOf("login.taobao.com")>=0||AX.indexOf("login.tmall.com")>=0),AJ=!!o.attachEvent,AL="attachEvent",P="addEventListener",AZ=AJ?AL:P,I=false,Au=true,AC="::-plain-::",AR="data-spm",Ag="data-spm-protocol",H=I,m,AQ=W(),O,Q,AU=Y("cna"),x={},b,AT={},s,k,M,AS,Aj,V=I,An=I,AB={},Ap=AP._SPM_a,Ao=AP._SPM_b,AD,y,Ai,T,d=I,Z;AO=(function(){var A1,A0="wm_referrer",Az="refer_pv_id",Ay=AP.name||"",Aw=q(Ay),A2=Aw[A0],Ax=Aw.wm_old_value;A1=o.referrer||E(A2);m=Aw[Az];if(!Ae){if(!f(Ax)){AP.name=E(Ax)}else{if(!f(A2)){AP.name=Ay.replace(/&?\bwm_referrer=[^&]*/g,"")}}}return A1})();function w(A0){var Aw="o",A1=[["ju.taobao.com","4"],["juhuasuan.com","4"],["alipay.com","5"],["china.alibaba.com","6"],["alibaba.com","7"],["aliloan.com","8"],["cnzz.com","9"],["net.cn","a"],["hichina.com","a"],["phpwind.com","b"],["aliyun.com","c"],["tao123.com","d"],["alimama.com","e"],["taobao.com","1"],["tmall.com","2"],["etao.com","3"],["*",Aw]],Ay=A1.length,Ax,Az;for(Ax=0;Ax<Ay;Ax++){Az=A1[Ax];if(Ak(A0,Az[0])){return Az[1]}}return Aw}function Ak(Ax,Aw){return Ax.indexOf(Aw)>-1}function i(Az,Aw){for(var Ay=0,Ax=Aw.length;Ay<Ax;Ay++){if(Ak(Az,Aw[Ay])){return Au}}return I}function AF(Ax,Aw){return Ax.indexOf(Aw)==0}function AH(Az,Ay){var Ax=Az.length,Aw=Ay.length;return Ax>=Aw&&Az.indexOf(Ay)==(Ax-Aw)}function Al(Aw){return Aq(Aw)?Aw.replace(/^\s+|\s+$/g,""):""}function E(Az,Ax){var Aw=Ax||"";if(Az){try{Aw=decodeURIComponent(Az)}catch(Ay){}}return Aw}function c(Az){var Aw=[],Ay,Ax;for(Ay in Az){if(Az.hasOwnProperty(Ay)){Ax=""+Az[Ay];Aw.push(AF(Ay,AC)?Ax:(Ay+"="+encodeURIComponent(Ax)))}}return Aw.join("&")}function AV(Ax){var Ay=[],A0,Az,A1,Aw=Ax.length;for(A1=0;A1<Aw;A1++){A0=Ax[A1][0];Az=Ax[A1][1];Ay.push(AF(A0,AC)?Az:(A0+"="+encodeURIComponent(Az)))}return Ay.join("&")}function Aa(Ax){var Ay={},Aw;for(Aw in Ax){if(Ax.hasOwnProperty(Aw)){Ay[Aw]=Ax[Aw]}}return Ay}function U(Ay,Ax){for(var Aw in Ax){if(Ax.hasOwnProperty(Aw)){Ay[Aw]=Ax[Aw]}}return Ay}function q(A1){var Ax=A1.split("&"),Ay=0,Aw=Ax.length,Az,A0={};for(;Ay<Aw;Ay++){Az=Ax[Ay].split("=");A0[Az[0]]=E(Az[1])}return A0}function t(Aw){return typeof Aw=="number"}function f(Aw){return typeof Aw=="undefined"}function Aq(Aw){return typeof Aw=="string"}function C(Aw){return Object.prototype.toString.call(Aw)==="[object Array]"}function Ar(Ax,Aw){return Ax.indexOf(Aw)>=0}function n(Aw,Ax){return Aw&&Aw.getAttribute?(Aw.getAttribute(Ax)||""):""}function g(Aw,Az,Ax){if(Aw&&Aw.setAttribute){try{Aw.setAttribute(Az,Ax)}catch(Ay){}}}function AA(Aw,Ay){if(Aw&&Aw.removeAttribute){try{Aw.removeAttribute(Ay)}catch(Ax){g(Aw,Ay,"")}}}function AE(Ax){var Aw;try{Aw=Al(Ax.getAttribute("href",2))}catch(Ay){}return Aw||""}function N(){var Aw=o.getElementById("tb-beacon-aplus");return n(Aw,"exparams")}function D(){O=O||o.getElementsByTagName("head")[0];return Q||(O?(Q=O.getElementsByTagName("meta")):[])}function At(A1,A2){var Ay=A1.split(";"),Az,Ax=Ay.length,Aw,A0;for(Az=0;Az<Ax;Az++){Aw=Ay[Az].split("=");A0=Al(Aw[0]);if(A0){A2[A0]=E(Al(Aw[1]))}}}function Y(Aw){var Ax=o.cookie.match(new RegExp("\\b"+Aw+"=([^;]+)"));return Ax?Ax[1]:""}function AW(){return Math.floor(Math.random()*268435456).toString(16)}function Ab(Ax){var Aw,A0;try{Aw=[].slice.call(Ax);return Aw}catch(Az){Aw=[];A0=Ax.length;for(var Ay=0;Ay<A0;Ay++){Aw.push(Ax[Ay])}return Aw}}function v(){var Ax,A0,Ay=D(),Aw=Ay.length,Az;for(Ax=0;Ax<Aw;Ax++){A0=Ay[Ax];if(n(A0,"name")=="microscope-data"){Az=n(A0,"content");At(Az,x);d=Au}}b=c(x);Aj=x.pageId;M=x.shopId;AS=x.siteInstanceId;k=AS||M}function AI(){var Ax,A0,Ay=D(),Aw=Ay.length,Az;for(Ax=0;Ax<Aw;Ax++){A0=Ay[Ax];if(n(A0,"name")=="atp-beacon"){Az=n(A0,"content");At(Az,AT)}}s=c(AT)}function Ad(){var A0=D(),Ay,Ax,Az,Aw;for(Ay=0,Ax=A0.length;Ay<Ax;Ay++){Az=A0[Ay];Aw=n(Az,"name");if(Aw==AR){AD=n(Az,Ag)}}}function p(A1){var A3=D(),A0,Ay,Ax,A2,Aw,Az;if(A3){for(A0=0,Ay=A3.length;A0<Ay;A0++){A2=A3[A0];Aw=n(A2,"name");if(Aw==A1){Ai=n(A2,"content");if(Ai.indexOf(":")>=0){Ax=Ai.split(":");AD=Ax[0]=="i"?"i":"u";Ai=Ax[1]}Az=n(A2,Ag);if(Az){AD=(Az=="i"?"i":"u")}T=AF(Ai,"110");y=(T?X:Ai);return Au}}}return I}function Am(){if(!f(y)){return y}if(Ap&&Ao){Ap=Ap.replace(/^{(\w+)}$/g,"$1");Ao=Ao.replace(/^{(\w+)}$/g,"$1");V=Au;y=Ap+"."+Ao;Ad();Z.spm_ab=[Ap,Ao];return y}var Ay=o.getElementsByTagName("head")[0],Ax;p(AR)||p("spm-id");y=y||X;if(!y){return y}var Aw=o.getElementsByTagName("body");var Az;Aw=Aw&&Aw.length?Aw[0]:null;if(Aw){Az=n(Aw,AR);if(Az){Ax=y.split(".");y=Ax[0]+"."+Az;Z.spm_ab=[Ax[0],Az]}}return y}function W(){var Aw="g_aplus_pv_id",Ay="",Ax="0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";if(!AP[Aw]){while(Ay.length<6){Ay+=Ax.substr(Math.floor(Math.random()*62),1)}AP[Aw]=Ay}return AP[Aw]}function AK(Ax){Ax=(Ax||"").split("#")[0].split("?")[0];var Aw=Ax.length,Ay=function(A2){var A1,Az=A2.length,A0=0;for(A1=0;A1<Az;A1++){A0=A0*31+A2.charCodeAt(A1)}return A0};return Aw?Ay(Aw+"#"+Ax.charCodeAt(Aw-1)):-1}function S(Aw){var Ax=AP.KISSY;if(Ax){Ax.ready(Aw)}else{if(AP.jQuery){jQuery(o).ready(Aw)}else{if(o.readyState==="complete"){Aw()}else{u(AP,"load",Aw)}}}}function R(){if(h){return }var Ax=AP.name||"",Ay=Ae?(o.referrer||AX):AX,Aw={refer_pv_id:AQ};if(e){Aw.wm_referrer=Ay}if(Ax.indexOf("=")==-1){Aw.wm_old_value=Ax;AP.name=c(Aw)}else{if(Ae&&Ax.match(/&?\bwm_referrer=[^&]+/)){delete Aw.wm_referrer}Ax=q(Ax);U(Ax,Aw);AP.name=c(Ax)}}function u(Ax,Ay,Aw){Ax[AZ]((AJ?"on":"")+Ay,function(A0){A0=A0||AP.event;var Az=A0.target||A0.srcElement;Aw(A0,Az)},I)}function Ah(){var Ax,Aw,Az=["/theme/info/info","/promo/co_header.php","fast_buy.htm","/add_collection.htm","/taobao_digital_iframe","/promo/co_header_taoinfo.php","/list_forum","/theme/info/info"];for(Ax=0,Aw=Az.length;Ax<Aw;Ax++){if(J.indexOf(Az[Ax])!=-1){return Au}}var Ay=/^https?:\/\/[\w\.]+\.taobao\.com/i;return !Ay.test(AO)}function G(){var A0=AP.goldlog_queue,Ax,Az,Aw;if(!A0||!C(A0)||!A0.length){return }while(Ax=A0.shift()){if(!Ax||!Ax.action||!Aq(Ax.action)||!Ax.arguments||!C(Ax.arguments)){continue}Aw=Ax.action.split(".");Az=AP;while(Aw.length){Az=Az[Aw.shift()];if(!Az){return }}if(typeof Az=="function"){try{Az.apply(Az,Ax.arguments)}catch(Ay){}}}}function AM(){var Aw=function(){G();setTimeout(Aw,200)};Aw();u(AP,"beforeunload",G)}function j(Aw,Ax){return Ax?Z.send(Aw,Ax):null}function AY(){return AC+Math.random()}function r(Ax){var Aw=Ax.match(new RegExp("\\?.*spm=([\\w\\.\\-\\*]+)")),Ay;return(Aw&&(Ay=Aw[1])&&Ay.split(".").length==5)?Ay:null}function L(A2,A1){var Az,Aw=A1.length,A0,Ay,Ax;for(Az=0;Az<Aw;Az++){A0=A1[Az];Ay=A0[0];Ax=A0[1];if(Ax){A2.push([Ay,Ax])}}}function a(){if(Math.random()<0.0001){F("sample.js?v=120910")}if(AS){F("wp-beacon.js?v=121010")}}function AG(Ay,Aw){var Ax=o.createElement("script");Ax.type="text/javascript";Ax.async=true;Ax.src=e?Aw:Ay;o.getElementsByTagName("head")[0].appendChild(Ax)}function F(Ay){var Ax="http://a.tbcdn.cn/s/fdc/",Aw="https://s.tbcdn.cn/s/fdc/";AG(Ax+Ay,Aw+Ay)}function Ac(A0){var A2=o.getElementsByTagName("*"),Ax,Az,Ay,A3,A1,Aw;for(Ax=[];A0&&A0.nodeType==1;A0=A0.parentNode){if(A0.hasAttribute("id")){Aw=A0.getAttribute("id");A3=0;for(Az=0;Az<A2.length;Az++){A1=A2[Az];if(A1.hasAttribute("id")&&A1.id==Aw){A3++;break}}if(A3==1){Ax.unshift('id("'+Aw+'")');return Ax.join("/")}else{Ax.unshift(A0.localName.toLowerCase()+'[@id="'+Aw+'"]')}}else{for(Az=1,Ay=A0.previousSibling;Ay;Ay=Ay.previousSibling){if(Ay.localName==A0.localName){Az++}}Ax.unshift(A0.localName.toLowerCase()+"["+Az+"]")}}return Ax.length?"/"+Ax.join("/"):null}function A(Aw){var Ax=AB[Ac(Aw)];return Ax?Ax.spmc:""}Z={version:AN,pvid:AQ,referrer:AO,_d:{},_microscope_data:x,on:u,DOMReady:S,getCookie:Y,tryToGetAttribute:n,tryToGetHref:AE,isNumber:t,send:function(Ay,A0){var Ax=new Image(),A2="_img_"+Math.random(),Az=Ay.indexOf("?")==-1?"?":"&",A1,Aw=A0?(C(A0)?AV(A0):c(A0)):"";AP[A2]=Ax;Ax.onload=Ax.onerror=function(){AP[A2]=null};Ax.src=A1=Aw?(Ay+Az+Aw):Ay;Ax=null;return A1},emit:function(Az,Ay){var Aw,Ax="ued.1.1.2?type=9";if(C(Ay)){Aw=([["_gm:id",Az]]).concat(Ay)}else{Aw=Aa(Ay);Aw["_gm:id"]=Az}return Z.send(As+Ax,Aw)},record:function(Ax,A3,Az,Aw){Aw=arguments[3]||"";var Ay,A2="?",A1=I,A0;if(Ax=="ac"){Ay="http://ac.atpanel.com/1.gif";A1=AF(Aw,"A")&&(Aw.substring(1)==AK(A3))}else{if(AF(Ax,"/")){A1=AF(Aw,"H")&&(Aw.substring(1)==AK(Ax));Ay=Av+Ax.substring(1);A0=Au}else{if(AH(Ax,".gif")){Ay=Av+Ax}else{return }}}if(!A1&&Aw!="%"&&AK(AX)!=Aw){return }Ay+=A2+"cache="+AW()+"&gmkey="+encodeURIComponent(A3)+"&gokey="+encodeURIComponent(Az)+"&cna="+AU+"&isbeta="+AN;if(A0){Ay+="&logtype=2"}return Z.send(Ay)}};AP.goldlog=Z;AP.goldminer={record:Z.emit};AP.goldlog_queue=[];AM();v();Am();a();(function(){var A2,A0=Y("tracknick"),Az=x.prototypeId,A1=r(AX),A3=r(AO);if(!h||Ah()){A2=[[AY(),"title="+escape(o.title)],["pre",AO],["cache",AW()],["scr",screen.width+"x"+screen.height],["isbeta",AN]];if(AU){A2.push([AY(),"cna="+AU])}if(A0){A2.push([AY(),"nick="+A0])}L(A2,[["wm_pageid",Aj],["wm_prototypeid",Az],["wm_instanceid",AS],["wm_sid",M],["spm-url",A1],["spm-pre",A3]]);if(z){A2.push(["spm-cnt",(y||"0.0")+".0.0."+AQ])}else{if(y){A2.push(["spm-cnt",y])}}l=l.concat(A2);l.push([AY(),N()]);AP.g_aplus_pv_req=j(Af,l)}if(h){AI();var Ax,Aw=AT.on,Ay=(Aw=="1"?"http://ac":"http://www")+".atpanel.com/1.gif";if((Aw=="1"||Aw=="2")&&(Ax=AT.chksum)&&Ax===AK(AX).toString()){j(Ay,l)}}if(Ae){R()}else{u(AP,"beforeunload",function(){R()})}})();(function(){var A6;var BE;var Aw="data-spm-wangpu-module-id";var BC="data-spm-anchor-id";function A8(BL){var BS,BQ,BO,BK,BR,BP=[],BT,BN,BM;BS=Ab(BL.getElementsByTagName("a"));BQ=Ab(BL.getElementsByTagName("area"));BK=BS.concat(BQ);for(BN=0,BM=BK.length;BN<BM;BN++){BT=false;BR=BO=BK[BN];while(BR=BR.parentNode){if(BR==BL){break}if(n(BR,AR)){BT=true;break}}if(!BT){BP.push(BO)}}return BP}function BH(BL,BM,BN){var BT,BP,BV,BK,BS,BY,BR,BQ,BO,BX,BW,Ba,BU,Bb,BZ;if(n(BL,"data-spm-delay")){BL.setAttribute("data-spm-delay","");return }BM=BM||BL.getAttribute(AR)||"";if(!BM){return }BT=A8(BL);BV=BM.split(".");Ba=(BE&&AF(BM,"110")&&BV.length==3);if(Ba){BU=BV[2];Bb=BU.split("-");BV[2]="w"+((Bb.length>1)?Bb[0]:"0");BM=BV.join(".")}if(Aq(BQ=Am())&&BQ.match(/^[\w\-\*]+(\.[\w\-\*]+)?$/)){if(!Ar(BM,".")){if(!Ar(BQ,".")){BQ+=".0"}BM=BQ+"."+BM}else{if(!AF(BM,BQ)){BK=BQ.split(".");BV=BM.split(".");for(BX=0,BO=BK.length;BX<BO;BX++){BV[BX]=BK[BX]}BM=BV.join(".")}}}if(!BM.match||!BM.match(/^[\w\-\*]+\.[\w\-\*]+\.[\w\-\*]+$/)){return }BZ=parseInt(n(BL,"data-spm-max-idx"))||0;for(BW=0,BS=BZ,BO=BT.length;BW<BO;BW++){BP=BT[BW];BY=AE(BP);if(!BY){continue}if(Ba){BP.setAttribute(Aw,BU)}if(BR=BP.getAttribute(BC)){Az(BP,BR,BN);continue}BS++;BR=BM+"."+(BG(BP)||BS);Az(BP,BR,BN);BP.setAttribute(BC,BR)}BL.setAttribute("data-spm-max-idx",BS)}function BA(){BE=(k&&Aj);return BE}function A5(BM){var BL=["mclick.simba.taobao.com","click.simba.taobao.com","click.tanx.com","click.mz.simba.taobao.com","click.tz.simba.taobao.com","redirect.simba.taobao.com","rdstat.tanx.com","stat.simba.taobao.com","s.click.taobao.com"],BN,BK=BL.length;for(BN=0;BN<BK;BN++){if(BM.indexOf(BL[BN])!=-1){return true}}return false}function BJ(BK){return BK?(!!BK.match(/^[^\?]*\balipay\.(?:com|net)\b/i)):I}function BF(BK){return BK?(!!BK.match(/^[^\?]*\balipay\.(?:com|net)\/.*\?.*\bsign=.*/i)):I}function BD(BL){var BK;while((BL=BL.parentNode)&&BL.tagName!="BODY"){BK=n(BL,Ag);if(BK){return BK}}return""}function Ay(BM,BS){if(BM&&/&?\bspm=[^&#]*/.test(BM)){BM=BM.replace(/&?\bspm=[^&#]*/g,"").replace(/&{2,}/g,"&").replace(/\?&/,"?").replace(/\?$/,"")}if(!BS){return BM}var BT,BP,BR,BQ="&",BN,BL,BK,BO;if(BM.indexOf("#")!=-1){BR=BM.split("#");BM=BR.shift();BP=BR.join("#")}BN=BM.split("?");BL=BN.length-1;BR=BN[0].split("//");BR=BR[BR.length-1].split("/");BK=BR.length>1?BR.pop():"";if(BL>0){BT=BN.pop();BM=BN.join("?")}if(BT&&BL>1&&BT.indexOf("&")==-1&&BT.indexOf("%")!=-1){BQ="%26"}BM=BM+"?spm="+BS+(BT?(BQ+BT):"")+(BP?("#"+BP):"");BO=Ak(BK,".")?BK.split(".").pop().toLowerCase():"";if(BO){if(({png:1,jpg:1,jpeg:1,gif:1,bmp:1,swf:1}).hasOwnProperty(BO)){return 0}if(!BT&&BL<=1){if(!BP&&!({htm:1,html:1,php:1}).hasOwnProperty(BO)){BM+="&file="+BK}}}return BM}function Ax(BK){return BK&&(AX.split("#")[0]==BK.split("#")[0])}function Az(BM,BO,BN){if(BN){return }if(z){BO+="."+AQ}var BL=AE(BM);var BP=(n(BM,Ag)||BD(BM)||AD)=="i";var BK=As+"tbspm.1.1?spm=";if(!BL||A5(BL)){return }if(!BP&&(AF(BL,"#")||Ax(BL)||AF(BL.toLowerCase(),"javascript:")||BJ(BL)||BF(BL))){return }if(BP){BK+=BO+"&url="+encodeURIComponent(AX)+"&cache="+AW();if(A6==BM){Z.send(BK)}}else{if(!BN){(BL=Ay(BL,BO))&&A3(BM,BL)}}}function A3(BN,BM){var BK,BL=BN.innerHTML;if(BL&&BL.indexOf("<")==-1){BK=o.createElement("b");BK.style.display="none";BN.appendChild(BK)}BN.href=BM;if(BK){BN.removeChild(BK)}}function BG(BL){var BN,BK,BM;if(V){BK=Ac(BL);BM=AB[BK];if(BM){BN=BM.spmd}}else{BN=n(BL,AR);if(!BN||!BN.match(/^d\w+$/)){BN=""}}return BN}function A0(BM){var BN,BL,BK=BM;while(BM&&BM.tagName!="HTML"&&BM.tagName!="BODY"&&BM.getAttribute){if(!V){BL=BM.getAttribute(AR)}else{BL=A(BM)}if(BL){BN=BL;BK=BM;break}if(!(BM=BM.parentNode)){break}}return{spm_c:BN,el:BK}}function BB(BL){var BK;return(BL&&(BK=BL.match(/&?\bspm=([^&#]*)/)))?BK[1]:""}function A2(BN){var BM=o.getElementsByTagName("a"),BK=BM.length,BL;for(BL=0;BL<BK;BL++){if(BM[BL]==BN){return BL+1}}return 0}function A4(BP,BM){var BK=AE(BP),BO=BB(BK),BN=BO?BO.split("."):null,BR,BQ,BL=y&&(BR=y.split(".")).length==2;if(BN&&BN.length>=4&&BN[3]){if(BN[0]=="1003"||BN[0]=="2006"){}else{if(BL){BN[0]=BR[0];BN[1]=BR[1];BQ=BG(BP);if(BQ){BN[3]=BQ}}}Az(BP,BN.slice(0,4).join("."),BM);return }else{if(BL){BN=[y,0,BG(BP)||A2(BP)];Az(BP,BN.join("."),BM);return }}if(BK&&BO){BP.href=" "+BK.replace(/&?\bspm=[^&#]*/g,"").replace(/&{2,}/g,"&").replace(/\?&/,"?").replace(/\?$/,"").replace(/\?#/,"#")}}function A1(BR,BO){A6=BR;var BT=n(BR,BC),BN,BQ,BL,BM,BP,BS,BK;if(!BT){BQ=A0(BR.parentNode);BL=BQ.spm_c;if(!BL){A4(BR,BO);return }BH(BQ.el,BL,BO);BT=n(BR,BC)}else{Az(BR,BT,BO)}if(BO){return }BP=n(BR,Aw);BS=!!BP;if(BT&&BS&&k&&Aj){BN=([k,Aj,BP]).join(".");BM=new Image();BK="g_aplus_rndid_"+Math.random();AP[BK]=BM;BM.onload=BM.onerror=function(){AP[BK]=null};BM.src=As+"tbwmspm.1.1?wmspm="+encodeURIComponent(BN)+"&url="+encodeURIComponent(BR.href)+"&r="+Math.random();BM=null}}function A7(BO){if(!BO||BO.nodeType!=1){return }AA(BO,"data-spm-max-idx");var BL=Ab(BO.getElementsByTagName("a")),BN=Ab(BO.getElementsByTagName("area")),BP=BL.concat(BN),BM,BK=BP.length;for(BM=0;BM<BK;BM++){AA(BP[BM],BC)}}function A9(BL){var BM=BL.tagName;var BK;if(BM!="A"&&BM!="AREA"){return""}A1(BL,Au);BK=n(BL,BC);return BK?(BK+"."+AQ):""}function BI(){if(An){return }if(!AP.spmData){if(!H){setTimeout(arguments.callee,100)}return }An=Au;var BN=AP.spmData["data"],BM,BK,BO,BL;if(!BN||!C(BN)){return }for(BM=0,BK=BN.length;BM<BK;BM++){BO=BN[BM];BL=BO.xpath;AB[BL]={spmc:BO.spmc,spmd:BO.spmd}}}if(i(AX,["xiaobai.com","admin.taobao.org"])){return }S(function(){H=Au});BA();BI();u(o,"mousedown",function(BL,BK){var BM;while(BK&&(BM=BK.tagName)){if(BM=="A"||BM=="AREA"){A1(BK,I);break}else{if(BM=="BODY"||BM=="HTML"){break}}BK=BK.parentNode}});AP.g_SPM={resetModule:A7,getParam:A9}})()})();