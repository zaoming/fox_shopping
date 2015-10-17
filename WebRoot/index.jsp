<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta>

<LINK rel=stylesheet type=text/css href="./index_files/images/szxue.css"></LINK>
<SCRIPT language=javascript src="./index_files/images/jquery.js"></SCRIPT>
<SCRIPT language=javascript src="./index_files/images/szxue.js"></SCRIPT>



<script type="text/javascript" src="./index_files/jquery-1.2.6.pack.js"></script>
<script type="text/javascript" src="./index_files/lib-v1.js"></script>
<script type="text/javascript" src="./index_files/home.js"></script>
<script type="text/javascript" src="./index_files/wl.js"></script>

<title>商城首页</title>
<c:if test="${goodsType1_former == null }">
	<c:redirect url="goodsTypeView"></c:redirect>
</c:if>
<script>var jdpts=new Object();jdpts._st=new Date().getTime();jdpts._p="a1";jdpts._cls="p0.0";</script>
<style type="text/css">
html,body,div,span,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,address,big,cite,code,del,em,font,img,ins,small,strong,var,b,u,i,center,dl,dt,dd,ol,ul,li,fieldset,form,label,legend
	{
	margin: 0;
	padding: 0;
}

ol,ul {
	list-style: none;
}

:focus {
	outline: 0;
}

a img {
	border: 0;
}

img {
	vertical-align: middle;
}

table {
	empty-cells: show;
}

ins {
	text-decoration: none;
}

del {
	text-decoration: line-through;
}

em {
	font-style: normal;
}

button::-moz-focus-inner,input[type="reset"]::-moz-focus-inner,input[type="button"]::-moz-focus-inner,input[type="submit"]::-moz-focus-inner,input[type="file"]>input[type="button"]::-moz-focus-inner
	{
	border: none;
	padding: 0;
}

.g-0 {
	width: 100%;
}

.g-8 {
	width: 150px;
}

.g-a {
	width: 190px;
}

.g-a1 {
	width: 210px;
}

.g-a5 {
	width: 290px;
}

.g-b1 {
	width: 410px;
}

.g-b4 {
	width: 470px;
}

.g-b8 {
	width: 550px;
}

.g-b9 {
	width: 570px;
}

.g-c9 {
	width: 770px;
}

.g-d {
	width: 790px;
}

.g-e {
	width: 990px;
}

.g-0,.g-8,.g-a,.g-a1,.g-a5,.g-b1,.g-b4,.g-b8,.g-b9,.g-c9,.g-d,.g-e {
	float: left;
}

.g-8,.g-a,.g-a1,.g-a5,.g-b1,.g-b4,.g-b8,.g-b9,.g-c9,.g-d,.g-e {
	position: relative;
	z-index: 1;
}

.g-80,.c-80 {
	margin-left: 160px;
}

.g-a0,.c-a0 {
	margin-left: 200px;
}

.g-a10,.c-a10 {
	margin-left: 220px;
}

.g-a50,.c-a50 {
	margin-left: 300px;
}

.g-b10,.c-b10 {
	margin-left: 420px;
}

.g-b40,.c-b40 {
	margin-left: 480px;
}

.g-b80,.c-b80 {
	margin-left: 560px;
}

.g-b90,.c-b90 {
	margin-left: 580px;
}

.g-c90,.c-c90 {
	margin-left: 780px;
}

.g-d0,.c-d0 {
	margin-left: 800px;
}

.g-e0,.c-e0 {
	margin-left: 1000px;
}

* html .g-80,* html .g-a0,* html .g-a10,* html .g-a50,* html .g-b10,*
	html .g-b40,* html .g-b80,* html .g-b90,* html .g-c90,* html .g-d0,*
	html .g-e0 {
	float: right;
	margin-left: 10px;
}

.g-08,.c-08 {
	margin-right: 160px;
}

.g-0a,.c-0a {
	margin-right: 200px;
}

.g-0a1,.c-0a1 {
	margin-right: 220px;
}

.g-0a5,.c-0a5 {
	margin-right: 300px;
}

.g-0b1,.c-0b1 {
	margin-right: 420px;
}

.g-0b4,.c-0b4 {
	margin-right: 480px;
}

.g-0b8,.c-0b8 {
	margin-right: 560px;
}

.g-0b9,.c-0b9 {
	margin-right: 580px;
}

.g-0c9,.c-0c9 {
	margin-right: 780px;
}

.g-0d,.c-0d {
	margin-right: 800px;
}

.g-0e,.c-0e {
	margin-right: 1000px;
}

* html .g-08,* html .g-0a,* html .g-0a1,* html .g-0a5,* html .g-0b1,*
	html .g-0b4,* html .g-0b8,* html .g-0b9,* html .g-0c9,* html .g-0d,*
	html .g-0e {
	float: left;
	margin-right: 10px;
}

.c-0 {
	margin-left: -100%;
}

.c-080 {
	margin-left: -150px;
}

.c-0a0 {
	margin-left: -190px;
}

.c-0a10 {
	margin-left: -210px;
}

.c-0a50 {
	margin-left: -290px;
}

.c-0b10 {
	margin-left: -410px;
}

.c-0b40 {
	margin-left: -470px;
}

.c-0b80 {
	margin-left: -550px;
}

.c-0b90 {
	margin-left: -570px;
}

.c-0c90 {
	margin-left: -770px;
}

.c-0d0 {
	margin-left: -790px;
}

.c-0e0 {
	margin-left: -990px;
}

* html .c-0 {
	filter: "";
}

.fl {
	float: left;
}

.fr {
	float: right;
}

.fn {
	float: none;
}

.al {
	text-align: left;
}

.ac {
	text-align: center;
}

.ar {
	text-align: right;
}

.clr {
	display: block;
	overflow: hidden;
	clear: both;
	height: 0;
	line-height: 0;
	font-size: 0;
}

.clearfix:after {
	content: ".";
	display: block;
	height: 0;
	clear: both;
	visibility: hidden;
}

.clearfix {
	display: inline-table;
}  /* Hides from IE-mac \*/
* html .clearfix {
	height: 1%;
}

.clearfix {
	display: block;
}  /* End hide from IE-mac */
*+html .clearfix {
	min-height: 1%;
}

.overflow {
	overflow: hidden;
}

.form label,.form input,.form select,.form textarea,.form button,.form .label
	{
	float: left;
	font-size: 12px;
}

.block {
	display: block;
	overflow: hidden;
}

.hide {
	display: none;
}

.invisible {
	visibility: hidden;
}

.tab {
	overflow: hidden;
	zoom: 1;
}

.tab li,.tab a,.tab-item {
	float: left;
	text-align: center;
}

.btn-img,.button {
	display: inline-block;
	margin: 0;
	padding: 0;
	border: 0;
	text-align: center;
	cursor: pointer;
}

.btn-text {
	margin: 0;
	padding: 0;
	text-align: center;
	cursor: pointer;
}

body {
	font: 12px/ 150% Arial, Verdana, "\5b8b\4f53";
	color: #333;
	background: #fff;
	_background-image: url(about:blank);
	_background-attachment: fixed;
}

h1 {
	font: 20px "microsoft yahei", "\5b8b\4f53";
}

h2,h3 {
	font-size: 14px;
}

h4,h5,h6 {
	font-size: 12px;
}

a:link,a:visited {
	color: #333;
	text-decoration: none;
}

a:hover {
	color: #C00;
	text-decoration: underline;
}

a:active {
	color: #900;
}

.w {
	width: 990px;
	margin: 0 auto;
}

.w1 {
	margin-bottom: 10px;
}

.lh {
	overflow: hidden;
	zoom: 1;
}

.lh li,.lh dl,.lh .item {
	float: left;
}

.ld {
	position: relative;
	zoom: 1;
}

.ld s,.ld b,.ld .block {
	position: absolute;
	overflow: hidden;
}

.p-img,.p-name,.p-price,.p-market,.p-detail {
	overflow: hidden;
}

.p-img {
	padding: 5px 0;
}

.p-img a:link,.p-img a:visited {
	text-decoration: none;
}

.p-img .pi {
	cursor: pointer;
}

.p-name,.p-detail {
	word-break: break-all;
	word-wrap: break-word;
}

.p-price {
	color: #999;
}

.p-price strong,.p-market strong {
	color: #C00;
}

.pi {
	position: absolute;
	top: 0;
	right: 0;
	top: 10px;
	width: 40px;
	height: 41px;
	padding-left: 8px;
	background-repeat: no-repeat;
	font-family: "microsoft yahei";
	color: #fff;
	line-height: 41px;
	overflow: hidden;
	font-size: 16px;
	zoom: 1;
}

.pix0 {
	background-position: -270px 0;
}

.pix1 {
	background-position: -219px 0;
}

.pif1 {
	font-size: 22px;
}

.pif4 {
	height: 37px;
	padding-top: 4px;
	font-size: 14px;
	line-height: 16px;
}

.pt {
	display: inline-block;
	overflow: hidden;
}

.vi {
	width: 64px;
	height: 12px;
	background-image: url();
	background-repeat: no-repeat;
	overflow: hidden;
}

.vix0 {
	background-position: -65px -390px;
}

.vix1 {
	background-position: -52px -390px;
}

.vix2 {
	background-position: -39px -390px;
}

.vix3 {
	background-position: -26px -390px;
}

.vix4 {
	background-position: -13px -390px;
}

.vix5 {
	background-position: 0 -390px;
}

.ci {
	width: 21px;
	height: 21px;
	background-image: url();
	background-repeat: no-repeat;
	overflow: hidden;
}

.cix1 {
	background-position: -202px -268px;
}

.cix2 {
	background-position: -202px -290px;
}

.ui {
	width: 60px;
	height: 60px;
	background-image: url();
	background-repeat: no-repeat;
}

.uix1 {
	background-position: 0 -549px;
}

.uix2 {
	background-position: 0 -488px;
}

.uix3 {
	background-position: 0 -427px;
}

.uix4 {
	background-position: 0 -366px;
}

.uix5 {
	background-position: 0 -305px;
}

.uix6 {
	background-position: 0 -244px;
}

.uix7 {
	background-position: 0 -183px;
}

.uix8 {
	background-position: 0 -122px;
}

.uix9 {
	background-position: 0 -61px;
}

.uix10 {
	background-position: 0 0;
}

img.err-product,img.err-poster {
	background: url() no-repeat 50% 50%;
}

img.err-price {
	width: 81px;
	height: 22px;
	background: url() no-repeat 50% 50%;
}

.m,.mt,.mc,.mb,.sm,.smt,.smc,.smb {
	overflow: hidden;
	zoom: 1;
}

.m,.sm {
	margin-bottom: 10px;
}

.mt,.smt {
	cursor: default;
}

.mt h2,.smt h3 {
	font-family: "microsoft yahei";
}

.m .mt .extra a:link,.m .mt .extra a:visited,.sm .smt .extra a:link,.sm .smt .extra a:visited
	{
	color: #005EA7;
}

.loading-style1 b,.loading-style2 {
	background: url(./index_files/images/loading.gif) no-repeat 50% 50%;
}

.loading-style1 {
	width: 126px;
	margin: 0 auto;
	text-align: center;
	color: #999;
}

.loading-style1 b {
	display: block;
	width: 24px;
	height: 24px;
	margin: 0 auto 5px;
}

.slide {
	position: relative;
	background: url(http://.360buyimg.) no-repeat center center;
}

.slide .slide-itemswrap {
	position: relative;
	overflow: hidden;
}

.slide .slide-items {
	position: absolute;
	overflow: hidden;
}

.slide-controls span {
	display: inline-block;
	margin: 0 1px;
	background: #999;
	text-align: center;
	cursor: default;
	color: #fff;
	border-radius: 12px;
	-moz-border-radius: 12px;
	-webkit-border-radius: 12px;
}

.slide-controls a:link,.slide-controls a:visited {
	display: inline-block;
	width: 100%;
	color: #fff;
	font-weight: bold;
}

.slide-controls .curr {
	background: #C00;
}

#shortcut,#shortcut .w,#shortcut .fl b,#shortcut .menu b {
	background-image:
		url(http://misc.360buyimg.com/lib/skin/2012/i/20111221C.png);
	background-repeat: no-repeat;
}

#shortcut li {
	background-image:
		url(http://misc.360buyimg.com/lib/skin/2012/i/20120112B.png);
	background-repeat: no-repeat;
}

#shortcut,#shortcut .w {
	height: 30px;
	background-color: #efefef;
	background-repeat: repeat-x;
}

#shortcut {
	width: 100%;
	padding-bottom: 1px;
	line-height: 30px;
}

#shortcut li {
	height: 27px;
	padding: 0 9px;
	background-position: -230px -320px;
}

#shortcut .fl .fore1 {
	padding-left: 15px;
	background: none;
}

#shortcut .fl b {
	top: 10px;
	left: 1px;
	width: 10px;
	height: 10px;
	background-position: -57px -289px;
	cursor: pointer;
}

#shortcut .fl span {
	display: none;
}

#shortcut .fr {
	height: 30px;
	overflow: visible;
}

#shortcut .fr .fore1 {
	background: none;
}

#shortcut .fr .menu {
	position: relative;
	z-index: 10;
	width: 81px;
	padding: 3px 0 0;
}

#shortcut .menu dl {
	width: 67px;
	padding: 0 6px;
}

#shortcut .menu dt {
	height: 24px;
	padding: 0 10px 1px 6px;
	line-height: 24px;
	cursor: default;
}

#shortcut .menu b {
	top: 10px;
	right: 3px;
	width: 7px;
	height: 4px;
	background-position: -35px -281px;
}

#shortcut .menu dd {
	display: none;
	padding: 4px 0 4px 5px;
	line-height: 21px;
}

#shortcut .fr .hover {
	z-index: 11;
}

#shortcut .hover dl {
	border: 1px solid #ddd;
	background: #fff;
	-moz-box-shadow: 0 0 5px #ddd;
	-webkit-box-shadow: 0 0 5px #ddd;
	box-shadow: 0 0 5px #ddd;
}

#shortcut .hover dt {
	padding-left: 5px;
	border-bottom: 1px solid #F3F3F3;
	line-height: 23px;
}

#shortcut .hover dd {
	display: block;
}

#shortcut .hover b {
	top: 9px;
	background-position: -35px -275px;
}

#shortcut a.link-logout:link,#shortcut a.link-logout:visited {
	color: #999;
}

#loginbar a {
	margin-left: 5px;
}

#mycity {
	font-weight: bold;
	color: #005EA7;
}

#quit {
	color: #999;
}

* html #shortcut .fl {
	height: 27px;
	overflow: hidden;
}

* html #shortcut .fl b {
	top: 8px;
}

* html #shortcut li.menu dl {
	position: absolute;
}

#header {
	height: 60px;
	padding: 15px 0;
}

#logo {
	float: left;
	width: 330px;
	padding-top: 5px;
}

#logo a:link b,#logo a:visited b {
	top: 11px;
	left: 190px;
	width: 69px;
	height: 34px;
	cursor: pointer;
}

#logo a:hover b,#logo a:active b {
	background: url(http://misc.360buyimg.com/lib/skin/2012/i/20111221C.png)
		no-repeat -5px -470px;
}

#search b,#search s,#search .form,#search .text,#search .button {
	background-image:
		url(http://misc.360buyimg.com/lib/skin/2012/i/20111221C.png);
	background-repeat: repeat-x;
}

#search {
	float: left;
	width: 320px;
	padding: 4px 86px 0 0;
}

#search input {
	margin: 0;
	padding: 0;
	height: 30px;
	border: none;
}

#search .i-search {
	z-index: 7;
	width: 304px;
	height: 36px;
	margin-bottom: 3px;
	border: solid #D00000;
	border-width: 0 3px;
}

#search b,#search s {
	height: 36px;
	top: 0;
	background-repeat: no-repeat;
}

#search b {
	width: 4px;
	left: -3px;
	background-position: -81px -470px;
}

#search s {
	width: 3px;
	right: -3px;
	background-position: 0 -470px;
}

#search .form {
	height: 30px;
	padding: 3px 0;
	overflow: hidden;
	background-position: 0 -357px;
	background-color: #D00000;
}

#search .text {
	position: relative;
	z-index: 1;
	width: 216px;
	height: 20px;
	padding: 5px;
	background-position: 0 -360px;
	background-color: #fff;
	background-repeat: repeat-x;
	line-height: 20px;
	color: #999;
	font-family: arial, "\5b8b\4f53";
	font-size: 14px;
}

#search .button {
	position: relative;
	z-index: 1;
	width: 78px;
	background-position: 0 -395px;
	background-color: #FBB111;
	font-size: 14px;
	font-weight: bold;
}

#shelper {
	overflow: hidden;
	position: absolute;
	top: 33px;
	left: 0;
	width: 302px;
	border: 1px solid #ddd;
	background: #fff;
	-moz-box-shadow: 0 0 5px #ddd;
	-webkit-box-shadow: 0 0 5px #ddd;
	box-shadow: 0 0 5px #ddd;
}

#shelper li {
	overflow: hidden;
	padding: 1px 6px;
	line-height: 22px;
	cursor: pointer;
}

#shelper div {
	float: left;
	overflow: hidden;
	width: 220px;
}

#shelper .close {
	border-top: 1px solid #efefef;
	text-align: right;
}

#shelper .item3 {
	cursor: default;
}

#shelper .item3 a {
	float: left;
	margin-right: 10px;
	white-space: nowrap;
}

#shelper li.fore1 {
	width: 100%;
	padding: 0;
	border-bottom: 1px solid #ddd;
}

#shelper li.fore1 div {
	float: none;
	width: auto;
	height: 22px;
	padding: 1px 2px 1px 20px;
	overflow: hidden;
	zoom: 1;
}

#shelper li.fore1 div.fore1 {
	padding-left: 6px;
}

#shelper li.fore1 strong {
	color: #C00;
}

#shelper li.fore1 .fore1 strong {
	color: #333;
}

#shelper li.fore1 .item1 {
	float: none;
	width: auto;
	padding: 1px 2px 1px 20px;
}

#shelper li.fore1 .item2 {
	float: none;
	width: auto;
	padding: 1px 2px 1px 20px;
}

#shelper li.fore1 .item3 {
	float: none;
	width: auto;
	color: #9C9A9C;
}

#shelper li.fore1 span {
	float: left;
}

#shelper li:hover {
	background: #FCF4EA;
}

#shelper li.fore1:hover,#shelper li.close:hover {
	background: none;
}

#shelper li.fore1 div:hover {
	background: #FCF4EA;
}

#hotwords {
	height: 18px;
	color: #999;
	overflow: hidden;
}

#hotwords span,#hotwords strong {
	float: left;
	font-weight: normal;
}

#hotwords a:link,#hotwords a:visited {
	float: left;
	margin-right: 10px;
	color: #999;
}

#hotwords a:hover,#hotwords a:active {
	color: #C00;
}

#my360buy dt,#my360buy dt img,#my360buy .prompt .btn-login,#my360buy .orderlist .more
	{
	background-image:
		url(http://misc.360buyimg.com/lib/skin/2012/i/20120112B.png);
	background-repeat: no-repeat;
}

#my360buy dt b,#my360buy dl.hover dt b,#my360buy .prompt {
	background-image:
		url(http://misc.360buyimg.com/lib/skin/2012/i/20111221C.png);
	background-repeat: no-repeat;
}

#my360buy {
	float: left;
	position: relative;
	z-index: 9;
	width: 112px;
	height: 30px;
	margin-top: 12px;
}

#my360buy dt {
	position: absolute;
	z-index: 1;
	width: 50px;
	height: 30px;
	padding: 0 26px 0 36px;
	background-color: #fff;
	background-position: -64px -320px;
	text-align: center;
	line-height: 27px;
	cursor: pointer; *
	line-height: 30px;
}

#my360buy dt img {
	position: absolute;
	top: 2px;
	left: 3px;
	background-position: -202px -176px;
}

#my360buy dt span {
	font-family: "\5b8b\4f53";
	color: #005EA7;
}

#my360buy dt b {
	top: 11px;
	right: 10px;
	width: 11px;
	height: 6px;
	background-position: -15px -283px;
}

#my360buy dd {
	display: none;
	position: absolute;
	top: 31px;
	right: 1px;
	width: 310px;
	border: 1px solid #E3E3E3;
	background: #fff;
	border-radius: 5px 0 5px 5px;
	-moz-border-radius: 5px 0 5px 5px;
	-webkit-border-radius: 5px 0 5px 5px;
}

#my360buy dl.hover dt {
	height: 32px;
	background-position: -64px -351px;
}

#my360buy dl.hover dd {
	display: block;
}

#my360buy dl.hover dt b {
	background-position: -15px -275px;
}

#my360buy .prompt a,#my360buy .orderlist a {
	color: #005EA7;
}

#my360buy .prompt {
	padding: 6px 6px 6px 9px;
	background-position: 0 -118px;
	background-repeat: repeat-x;
	overflow: hidden;
	line-height: 25px;
	border-radius: 5px 0 0 0;
	-moz-border-radius: 5px 0 0 0;
	-webkit-border-radius: 5px 0 0 0;
	zoom: 1;
}

#my360buy .prompt .btn-login {
	display: block;
	width: 73px;
	height: 25px;
	background-position: -124px -220px;
	background-color: #F4C36E;
	text-align: center;
	line-height: 25px;
	color: #333;
}

#my360buy .smt h4 {
	float: left;
	padding-left: 4px;
	font-weight: normal;
}

#my360buy .smt .extra {
	float: left;
}

#my360buy .orderlist {
	width: 300px;
	padding: 8px 5px;
	border-bottom: 1px solid #E6E6E6;
}

#my360buy .orderlist li {
	overflow: hidden;
	border-top: 1px dotted #ccc;
	zoom: 1;
}

#my360buy .orderlist .fore1 {
	border-top: none;
}

#my360buy .orderlist span {
	color: #F60;
}

#my360buy .orderlist .p-img {
	padding-left: 4px;
}

#my360buy .orderlist .p-img img,#my360buy .orderlist .more {
	float: left;
	border: 1px solid #ddd;
	margin-right: 3px;
}

#my360buy .orderlist .more {
	width: 50px;
	height: 50px;
	overflow: hidden;
	line-height: 150px;
	background-position: -137px -252px;
	margin-right: 0;
}

#my360buy .orderlist .p-detail {
	padding-top: 2px;
}

#my360buy .uclist {
	width: 310px;
	padding: 5px 0;
	margin: 5px 0;
	overflow: hidden;
}

#my360buy .uclist ul {
	width: 134px;
	padding: 0 10px;
}

#my360buy .uclist .fore1 {
	border-right: 1px solid #E6E6E6;
}

#my360buy .uclist li {
	border-bottom: 1px dotted #ccc;
}

#my360buy .uclist a:link,#my360buy .uclist a:visited {
	display: block;
	height: 18px;
	overflow: hidden;
	padding: 5px;
	text-decoration: none;
	color: #005EA7;
}

#my360buy .uclist a:hover,#my360buy .uclist a:active {
	background: #F5F5F5;
	color: #C00;
}

#my360buy .viewlist {
	width: 305px;
	padding: 8px 0 8px 5px;
	background: #F3F3F3;
	border-radius: 0 0 5px 5px;
	-moz-border-radius: 0 0 5px 5px;
	-webkit-border-radius: 0 0 5px 5px;
}

#my360buy .viewlist span {
	padding-left: 4px;
}

#my360buy .viewlist li {
	width: 52px;
	padding: 4px;
	line-height: 0;
	font-size: 0;
}

#my360buy .viewlist a:link,#my360buy .viewlist a:visited {
	display: block;
	border: 1px solid #ddd;
}

#my360buy .loading-style1 {
	margin: 10px auto;
}

#settleup dt,#settleup .smb a {
	background-image:
		url(http://misc.360buyimg.com/lib/skin/2012/i/20120112B.png);
	background-repeat: none;
}

#settleup .shopping,#settleup .shopping span,#settleup dt b,#settleup .smt
	{
	background-image:
		url(http://misc.360buyimg.com/lib/skin/2012/i/20111221C.png);
	background-repeat: none;
}

#settleup {
	float: right;
	position: relative;
	z-index: 9;
	width: 131px;
	height: 30px;
	margin-top: 12px;
}

#settleup dt {
	position: absolute;
	z-index: 3;
	width: 80px;
	height: 30px;
	padding: 0 16px 0 35px;
	background-color: #fff;
	background-position: 0 -252px;
	cursor: pointer;
	text-align: center;
}

#settleup dt s {
	top: -8px;
	left: 24px;
	text-decoration: none;
	color: #fff;
}

#settleup .shopping {
	background-position: 0 -231px;
	padding-left: 6px;
}

#settleup .shopping span {
	float: left;
	display: block;
	height: 20px;
	padding-right: 6px;
	background-position: 100% -595px;
}

#settleup dt a {
	line-height: 27px; *
	line-height: 30px;
}

#settleup dt b {
	top: 9px;
	right: 10px;
	width: 5px;
	height: 9px;
	background-position: -52px -275px;
}

#settleup dd {
	display: none;
	position: absolute;
	top: 31px;
	right: 0;
	width: 350px;
}

#settleup dl.hover dt {
	height: 32px;
	background-position: 0 -283px;
}

#settleup dl.hover dd {
	display: block;
}

#settleup-content {
	position: absolute;
	left: 0;
	top: 0;
	z-index: 2;
	width: 350px;
}

#settleup-iframe {
	position: absolute;
	left: 0;
	top: 0;
	z-index: 1;
	width: 350px;
	background: #000;
}

#settleup .prompt {
	border: 1px solid #ddd;
	padding: 10px 15px;
	background: #fff;
	text-align: center;
	border-radius: 5px 0 5px 5px;
	-moz-border-radius: 5px 0 5px 5px;
	-webkit-border-radius: 5px 0 5px 5px;
}

#settleup .sm {
	margin-bottom: 0;
}

#settleup .smt {
	height: 25px;
	padding: 6px 8px;
	background-position: 0 -118px;
	background-repeat: repeat-x;
	border: solid #ddd;
	border-width: 1px 1px 0;
	line-height: 25px;
	border-radius: 5px 0 0 0;
	-moz-border-radius: 5px 0 0 0;
	-webkit-border-radius: 5px 0 0 0;
}

#settleup .smt .extra {
	color: #999;
}

#settleup .smc {
	border: solid #ddd;
	border-width: 0 1px;
	background: #fff;
	max-height: 344px;
}

#settleup ul {
	margin-top: -1px;
}

#settleup li {
	height: 52px;
	padding: 8px 10px;
	border-top: 1px dotted #ccc;
	overflow: hidden;
	line-height: 17px;
	vertical-align: bottom;
}

#settleup li:hover,#settleup li.hover {
	background: #F5F5F5;
}

#settleup .p-img {
	width: 50px;
	height: 50px;
	border: 1px solid #ddd;
	padding: 0;
	margin-right: 10px;
	font-size: 0;
}

#settleup .p-name {
	width: 160px;
	height: 52px;
}

#settleup .p-price {
	font-weight: bold;
}

#settleup .delete {
	color: #005EA7;
}

#settleup .smb {
	padding: 8px;
	background: #F3F3F3;
	border: solid #ddd;
	border-width: 0 1px 1px;
	border-radius: 0 0 5px 5px;
	-moz-border-radius: 0 0 5px 5px;
	-webkit-border-radius: 0 0 5px 5px;
}

#settleup .smb b {
	margin: 0 5px;
	color: #C00;
}

#settleup .smb strong {
	font-size: 18px;
	color: #C00;
}

#settleup .smb a {
	display: inline-block;
	width: 120px;
	height: 30px;
	margin-top: 6px;
	background-position: 0 -220px;
	color: #fff;
	text-align: center;
	font-weight: bold;
	line-height: 30px;
}

#settleup li.style1 {
	height: auto;
}

#settleup li.style1 .gift {
	height: 17px;
	overflow: hidden;
}

#settleup li.style1 .gift a {
	color: #999;
}

* html #settleup .smc {
	height: 344px;
}

* html #settleup li {
	font-family: "\5b8b\4f53";
}

* html #settleup dd {
	right: -1px;
}

#nav,#navitems,#navitems li,#navitems .fore1,#navitems .curr a,#navitems .hover a
	{
	background-image:
		url(http://misc.360buyimg.com/lib/skin/2012/i/20111221C.png);
	background-repeat: repeat-x;
}

#nav {
	position: relative;
	z-index: 6;
	height: 40px;
	padding-left: 210px;
	margin-bottom: 10px;
	background: url(<%=path%>/index_files/20111221C.png) #FF0000 repeat-x 0
		-315px;
}

#navitems,#navitems li,#navitems li a {
	height: 40px;
}

#navitems {
	background-position: 770px -273px;
	background-repeat: no-repeat;
}

#navitems li {
	float: left;
	position: relative;
	width: 83px;
	background-position: -83px -509px;
	background-repeat: no-repeat;
}

#navitems li a {
	position: absolute;
	top: 0;
	left: 0;
	width: 85px;
	text-align: center;
	color: #fff;
	font: bold 15px/ 40px "microsoft yahei";
	text-decoration: none;
}

#navitems .fore1 {
	background-position: -55px -231px;
	background-repeat: no-repeat;
}

#navitems .curr,#navitems .hover {
	z-index: 1;
}

#navitems .curr a,#navitems .hover a {
	background-position: 0 -161px;
}

#treasure {
	position: absolute;
	right: 0;
	top: 0;
}

#categorys,#categorys .mt,#categorys .mt b,#categorys h3,#categorys s,#categorys .close,#categorys.hover .mt b
	{
	background-image:
		url(http://misc.360buyimg.com/lib/skin/2012/i/20111221C.png);
	background-repeat: no-repeat;
}

#categorys .fr {
	background-image:
		url(http://misc.360buyimg.com/product/skin/2012/i/20120209D.png);
	background-repeat: repeat-y;
}

#categorys {
	position: absolute;
	top: 0;
	left: 0;
	width: 210px;
	height: 40px;
	background-position: 0 -427px;
	background-repeat: repeat-x;
}

#categorys .mt {
	background-position: -75px -273px;
}

#categorys .mt a {
	display: block;
	height: 40px;
	padding-left: 20px;
	line-height: 40px;
	color: #fff;
}

#categorys .mt b {
	top: 9px;
	right: 9px;
	width: 25px;
	height: 25px;
	background-position: 0 -204px;
}

#categorys .mc {
	display: none;
	position: absolute;
	top: 40px;
	left: 0;
	width: 203px;
	height: 422px;
	padding: 3px 3px 3px 0;
	background: #FCF4EA;
	border: solid #D00000;
	border-width: 0 2px 2px;
	overflow: visible;
}

#categorys .item {
	width: 200px;
	height: 30px;
	border-top: 1px solid #FFFDFA;
}

#categorys .fore1 {
	border-top: none;
}

#categorys span {
	display: block;
	width: 203px;
	position: absolute;
	z-index: 1;
}

#categorys h3 {
	width: 164px;
	height: 28px;
	padding-left: 18px;
	border: solid #FCF4EA;
	border-width: 1px 0 1px 1px;
	background-position: -75px -562px;
	background-color: #FCF4EA;
	background-repeat: no-repeat;
	font-weight: normal;
	line-height: 28px;
}

#categorys h3 a:link,#categorys h3 a:visited {
	color: #333;
}

#categorys h3 a:hover,#categorys h3 a:active {
	color: #C00;
	font-weight: bold;
}

#categorys s {
	display: block;
	position: absolute;
	top: 9px;
	left: 182px;
	width: 9px;
	height: 11px;
	background-position: -62px -273px;
}

#categorys .item .i-mc {
	display: none;
	position: absolute;
	left: 181px;
	top: 3px;
	width: 705px;
	border: 1px solid #c30;
	background: #fff;
	overflow: hidden;
}

#categorys .item dt {
	padding: 3px 6px 0 0;
	font-weight: bold;
	color: #C00;
}

#categorys .item dd {
	padding: 3px 0 0;
	overflow: hidden;
	zoom: 1;
}

#categorys .subitem {
	float: left;
	width: 477px;
	min-height: 370px;
	padding: 0 4px 0 8px;
}

#categorys .subitem dl {
	border-top: 1px dotted #EED6B7;
	padding: 6px 0;
	overflow: hidden;
	zoom: 1;
}

#categorys .subitem .fore1 {
	border-top: none;
}

#categorys .subitem dt {
	float: left;
	width: 54px;
	line-height: 22px;
	text-align: right;
}

#categorys .subitem dd {
	float: left;
	width: 415px;
}

#categorys .subitem em {
	float: left;
	height: 14px;
	margin: 4px 0;
	line-height: 14px;
	padding: 0 8px;
	border-left: 1px solid #ccc;
}

#categorys .subitem dt a {
	color: #c00;
	text-decoration: underline;
}

#categorys .subitem dd a {
	white-space: nowrap;
}

#categorys .fr {
	background-position: -548px 0;
	background-color: #FCF4EA;
	width: 210px;
	padding-bottom: 2010px;
	margin-bottom: -2000px;
}

#categorys .fr dl {
	width: 194px;
	padding: 6px 8px;
}

#categorys .fr a {
	color: #666;
}

#categorys .fr dd {
	padding-top: 6px;
	line-height: 20px;
	overflow: hidden;
}

#categorys .fr img {
	margin-bottom: 4px;
}

#categorys .categorys-brands li {
	float: left;
	width: 97px;
}

#categorys .mc .extra {
	padding: 3px 8px 4px 18px;
	height: 15px;
	line-height: 15px;
	overflow: hidden;
	background: #FDF1DE;
	border-top: 1px solid #FDE6D2;
}

#categorys .mc .extra a {
	color: #c00;
}

#categorys .close {
	position: absolute;
	top: 6px;
	left: 679px;
	z-index: 14;
	width: 19px;
	height: 19px;
	background-position: -56px -204px;
	cursor: pointer;
}

#categorys .loading-style1 {
	margin-top: 10px;
}

#categorys .fore1 .categorys-brands li,#categorys .fore13 .categorys-brands li
	{
	width: 194px;
}

#categorys .fore13 .i-mc {
	top: 58px;
}

#categorys .hover span {
	z-index: 13;
	width: 160px;
}

#categorys .hover h3 {
	border: solid #c30;
	border-width: 1px 0;
	background-color: #fff;
	overflow: hidden;
}

#categorys .hover s {
	display: none;
}

#categorys .hover .i-mc {
	display: block;
	z-index: 12;
}

#categorys.hover .mt b {
	background-position: -28px -204px;
}

#categorys.hover .mc {
	display: block;
}

* html #categorys .item dd {
	padding-bottom: 6px;
}

* html #categorys .subitem {
	height: 370px;
}

#service dd,#service dt b,#service li,#service li b {
	background-image:
		url(http://misc.360buyimg.com/lib/skin/2012/i/20120112B.png);
	background-repeat: no-repeat;
}

#service {
	padding: 10px 20px;
	background: #FEFEFE;
	margin-bottom: 20px;
	border: 1px solid #ddd;
	zoom: 1;
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
}

#service dl {
	float: left;
	width: 196px;
}

#service dt {
	position: relative;
	padding: 6px 0 6px 44px;
	font: 14px "microsoft yahei";
	zoom: 1;
}

#service dd {
	min-height: 120px;
	padding-left: 24px;
	margin-left: 20px;
	background-position: -230px -177px;
	line-height: 20px;
}

#service dt b {
	position: absolute;
	top: 0;
	left: 6px;
	width: 28px;
	height: 28px;
}

#service dl.fore1 b {
	background-position: 0 -176px;
}

#service dl.fore2 b {
	background-position: -30px -176px;
}

#service dl.fore3 b {
	background-position: -60px -176px;
}

#service dl.fore4 b {
	background-position: -90px -176px;
}

#service dl.fore5 b {
	background-position: -120px -176px;
}

#service dl.fore5 {
	width: 160px;
}

#service ul {
	display: none;
}

* html #service dd {
	height: 120px;
}

#footer {
	padding-bottom: 30px;
	text-align: center;
}

#footer .links a,#footer .links span {
	margin: 0 10px;
}

#footer .links span a {
	margin: 0;
}

#footer .copyright {
	margin: 10px 0;
}

#footer .authentication a {
	margin: 0 5px;
}

#toppanel {
	position: relative;
	z-index: 1000;
}

#sidepanel {
	position: fixed;
	bottom: 0;
	right: 0;
	z-index: 1000;
}

#sidepanel a,#sidepanel b {
	background-image:
		url(http://misc.360buyimg.com/lib/skin/2012/i/20111221C.png);
	background-repeat: no-repeat;
}

#sidepanel a {
	display: block;
	position: relative;
	width: 17px;
	height: 66px;
	padding: 28px 4px 0;
	margin: 5px 0;
	text-align: center;
	line-height: 14px;
	text-decoration: none;
}

#sidepanel b {
	position: absolute;
	top: 9px;
	left: 4px;
	width: 17px;
	height: 16px;
	overflow: hidden;
}

#sidepanel a:link,#sidepanel a:visited {
	background-position: 0 -606px;
}

#sidepanel a:hover,#sidepanel a:active {
	background-position: 0 -509px;
}

#sidepanel .gotop:link b,#sidepanel .gotop:visited b {
	background-position: -52px -528px;
}

#sidepanel .gotop:hover b,#sidepanel .gotop:active b {
	background-position: -52px -509px;
}

#sidepanel .research:link b,#sidepanel .research:visited b {
	background-position: -30px -528px;
}

#sidepanel .research:hover b,#sidepanel .research:active b {
	background-position: -30px -509px;
}

* html #sidepanel {
	position: absolute;
	top: expression(documentElement.scrollTop + 
		 documentElement.clientHeight-this.offsetHeight);
	overflow: visible;
}

.da0x150 {
	width: 310px;
	height: 150px;
	background: #efefef;
}

.da0x100 {
	width: 310px;
	height: 100px;
	background: #efefef;
}

.pagin a,.pagin span {
	float: left;
	height: 20px;
	padding: 3px 10px;
	border: 1px solid #ccc;
	margin-left: 2px;
	font-family: arial;
	line-height: 20px;
	font-size: 14px;
	overflow: hidden;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
}

.pagin .text,.pagin .current {
	border: none;
	padding: 4px 11px;
}

.pagin a:link,.pagin a:visited {
	color: #005aa0;
}

.pagin a:hover,.pagin a:active {
	background: #005aa0;
	color: #fff;
	text-decoration: none;
}

.pagin .current,.pagin .current:link,.pagin .current:visited {
	color: #f60;
	font-weight: bold;
}

.pagin b {
	dispaly: block;
	position: absolute;
	top: 9px;
	width: 5px;
	height: 9px;
	background-image:
		url(http://misc.360buyimg.com/201007/skin/df/i/bg_hotsale.gif);
	background-repeat: no-repeat;
	overflow: hidden;
}

.pagin .prev,.pagin .next,.pagin .prev-disabled,.pagin .next-disabled {
	position: relative;
	padding-top: 5px;
	height: 18px;
	line-height: 18px;
}

.pagin .prev-disabled,.pagin .next-disabled {
	color: #ccc;
	cursor: default;
}

.pagin .prev,.pagin .prev-disabled {
	padding-left: 12px;
}

.pagin .prev b {
	left: 3px;
	background-position: -68px -608px;
}

.pagin .prev-disabled b {
	left: 3px;
	background-position: -80px -608px;
}

.pagin .next,.pagin .next-disabled {
	padding-right: 12px;
}

.pagin .next b {
	right: 3px;
	background-position: -62px -608px;
}

.pagin .next-disabled b {
	right: 3px;
	background-position: -74px -608px;
}

.pagin-m a,.pagin-m span {
	height: 14px;
	line-height: 14px;
	font-size: 12px;
}

.pagin-m b {
	top: 5px;
}

.pagin-m .prev,.pagin-m .next,.pagin-m .prev-disabled,.pagin-m .next-disabled
	{
	padding-top: 3px;
	height: 14px;
	line-height: 14px; *
	line-height: 16px;
}

.thickframe {
	position: fixed;
	top: 0;
	left: 0;
	z-index: 10000000;
	width: 100%;
	height: 100%;
	background: #000;
	border: 0;
	filter: alpha(opacity =   0);
	opacity: 0;
}

.thickdiv {
	position: fixed;
	top: 0;
	left: 0;
	z-index: 10000001;
	width: 100%;
	height: 100%;
	background: #000;
	border: 0;
	filter: alpha(opacity =   15);
	opacity: .15;
}

.thickbox {
	position: absolute;
	z-index: 10000002;
	overflow: hidden;
	padding: 0;
	border: 4px solid rgba(0, 0, 0, 0.1);
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
}

.thicktitle {
	height: 27px;
	padding: 0 10px;
	border: solid #C4C4C4;
	border-width: 1px 1px 0;
	background: #F3F3F3;
	line-height: 27px;
	font-family: arial, "\5b8b\4f53";
	font-size: 14px;
	font-weight: bold;
	color: #333;
}

.thickclose:link,.thickclose:visited {
	display: block;
	position: absolute;
	z-index: 100000;
	top: 7px;
	right: 12px;
	overflow: hidden;
	width: 15px;
	height: 15px;
	background:
		url(http://misc.360buyimg.com/201007/skin/df/i/bg_thickbox.gif)
		no-repeat 0 -18px;
	font-size: 0;
	line-height: 100px;
}

.thickcon {
	overflow: auto;
	background: #fff;
	border: solid #C4C4C4;
	border-width: 1px;
	padding: 10px;
}

.thickloading {
	background: url(./index_files/images/loading.gif) #fff no-repeat center
		center;
}

.thickcountdown {
	height: 20px;
	padding-right: 6px;
	margin-top: -20px;
	text-align: right;
	color: #999;
}

* html .thickframe {
	position: absolute;
}

* html .thickdiv {
	position: absolute;
}

#thicktitler {
	padding: 0 11px;
	background: #8DB7DC;
	border: none;
	color: #fff;
}

#thickcloser:link,#thickcloser:visited {
	top: 6px;
	right: 9px;
	width: 16px;
	height: 17px;
	background-position: 0 0;
}

#thickconr {
	border: solid #8DB7DC;
	border-width: 1px;
}

.compare {
	width: 200px;
	border: 1px solid #C4C4C4;
	background: #fff;
	display: none;
}

.compare .mt {
	background: #F3F3F3;
	padding: 3px 5px;
	height: 18px;
	line-height: 18px;
	overflow: hidden;
	zoom: 1;
}

.compare h5 {
	float: left;
}

.compare .extra {
	float: right;
	margin-top: 2px;
	width: 13px;
	height: 13px;
	background:
		url(http://misc.360buyimg.com/201007/skin/df/i/bg_hotsale.gif)
		no-repeat -51px -632px;
	cursor: pointer;
}

.compare .mc {
	padding: 2px;
}

.compare .mc li {
	border: 1px solid #E5E5E5;
	padding: 4px 12px 4px 4px;
	margin-bottom: 2px;
}

.compare .mb {
	text-align: center;
	padding: 5px 0;
}

.compare .btn {
	cursor: pointer;
}

.crumb {
	padding: 0 5px 8px;
}

.breadcrumb {
	height: 20px;
	padding: 0 0 4px 6px;
	margin-bottom: 10px;
	border-bottom: 1px solid #ddd;
	overflow: hidden;
	line-height: 20px;
	vertical-align: baseline;
}

.breadcrumb strong,.breadcrumb h1 {
	display: inline;
	font-weight: bold;
	line-height: 20px;
	font-size: 18px;
	font-family: "microsoft yahei";
}

.breadcrumb span {
	font-family: "\5b8b\4f53";
}

.iloading {
	width: 140px;
	height: 30px;
	padding-left: 22px;
	background: url(./index_files/images/loading.gif) no-repeat 0 center;
	margin: 0 auto;
	line-height: 30px;
	color: #999;
}

.norecode {
	color: #999;
}

.model-prompt .con {
	position: relative;
	zoom: 1;
}

.model-prompt .con b {
	position: absolute;
	background-image:
		url(http://misc.360buyimg.com/201007/skin/df/i/bg_prompt.gif);
	background-repeat: no-repeat;
}

#model-collect .con {
	padding: 20px 0 0 60px;
	color: #999;
}

#model-collect .con a {
	text-decoration: underline;
	color: #999;
}

#model-collect .success {
	top: 20px;
	left: 10px;
	width: 34px;
	height: 30px;
	background-position: 0 0;
}

#model-collect .failed {
	top: 20px;
	left: 10px;
	width: 34px;
	height: 30px;
	background-position: 0 -32px;
}

#css-error {
	display: none;
}

.root61 .w {
	width: 1210px;
}

.root61 #logo {
	width: 350px;
}

.root61 #shortcut .fl span {
	display: inline;
}

.root61 #navitems {
	background-position: 990px -273px;
}

.root61 #search {
	width: 510px;
	padding-right: 96px;
}

.root61 #search .i-search {
	width: 494px;
}

.root61 #search .text {
	width: 406px;
}

.root61 #shelper {
	width: 414px;
}

.root61 #shelper div {
	width: 300px;
}

.root61 #service dl {
	width: 252px;
}

.root61 #service ul {
	width: 1166px;
}

.root61 #service li {
	padding: 0 50px;
}

.root61 #service dl.fore5 {
	width: 160px;
}

#ruyitao-price-curve,#ruyitao-controller-bar,#ruyitao-products-wrapper,#ruyitao-price-comparation-wrapper,#ruyitao-fast-compare,#ruyitao-fc-list,*[class
	*=-market-],*[id *=-market-],*[class *=-fast-],*[id *=-fast-],*[class *=-products-],*[id
	*=-products-],*[class *=-price-],*[id *=-price-],*[class *=-controller-],*[id
	*=-controller-],*[class *=-stylesheet] {
	position: absolute;
	top: -2000px;
	left: -3000px;
	z-index: -1000;
	visibility: hidden;
	display: none;
	font-size: 0;
	line-height: 0;
	color: #fff;
}

#logo a b {
	display: none;
}

#categorys .mt b {
	display: none;
}

#categorys .mc {
	display: block;
}

#service {
	padding-left: 10px;
	padding-right: 10px;
}

#service dl {
	width: 130px;
}

#service dl.fore1 {
	width: 160px;
}

#service dl.fore2 {
	width: 194px;
}

#service dl.fore5 {
	width: 150px;
}

.root61 #service {
	padding-left: 20px;
	padding-right: 20px;
}

.root61 #service dl {
	width: 192px;
}

#branch-office {
	background-image:
		url(http://misc.360buyimg.com/product/skin/2012/i/20120814A.png);
	background-repeat: no-repeat;
	margin-bottom: 0;
}

#branch-office {
	width: 200px;
	padding-top: 6px;
}

#branch-office .smt {
	margin-bottom: 6px;
}

#branch-office {
	height: 150px;
	background-position: -1px -673px;
}

#branch-office p {
	margin-bottom: 14px;
	line-height: 1.8em;
}

#branch-office a {
	color: #005EA7;
}

.m1 .mt,.sm1 .smt,.m2 .mt,.sm2 .smt {
	padding: 0 8px;
	background: #F3F3F3;
	border: solid #ddd;
	border-width: 1px 1px 0;
	border-radius: 5px 5px 0 0;
	-moz-border-radius: 5px 5px 0 0;
	-webkit-border-radius: 5px 5px 0 0;
}

.m1 .mt h2,.sm1 .smt h3,.m2 .mt h2,.sm2 .smt h3 {
	float: left;
}

.m1 .mt .extra,.sm1 .smt .extra,.m2 .mt .extra,.sm2 .smt .extra {
	float: right;
}

.m1 .mc,.sm1 .smc,.m2 .mc,.sm2 .smc,.m3 .mc,.sm3 .smc {
	border: solid #ddd;
	border-width: 0 1px 1px;
}

.m1 .mt,.sm1 .smt {
	height: 29px;
	line-height: 29px;
}

.m2 .mt,.sm2 .smt {
	height: 39px;
	line-height: 38px;
}

.m3 .mt,.sm3 .smt {
	position: absolute;
	top: 0;
	background: url(http://misc.360buyimg.com/lib/skin/2012/i/20111221C.png)
		#efefef repeat-x 0 -32px;
	border: 1px solid #ddd;
	text-align: center;
}

#slide {
	float: left;
	width: 560px;
	height: 420px;
	margin-left: 200px;
}

#slide .slide-itemswrap,#slide .slide-items,#slide .slide-items li {
	width: 550px;
	height: 390px;
	overflow: hidden;
}

#slide .slide-items {
	background: #F5F5F5;
}

#slide .slide-items div {
	float: left;
}

#slide .slide-controls {
	height: 22px;
	padding: 4px 10px;
	background: #EEE;
	text-align: right;
}

#slide .slide-controls span {
	width: 22px;
	height: 22px;
	line-height: 22px;
}

#slide .slide-controls a {
	font-size: 13px;
}

#slide .style1 .fore2,#slide .style1 .fore3,#slide .style1 .fore4 {
	margin-left: 1px;
}

* html #slide {
	margin-left: 110px;
}

.root61 #slide,.root61 #slide .slide-itemswrap,.root61 #slide .slide-items,.root61 #slide .slide-items li
	{
	width: 670px;
}

#slogens dt b,#slogens .close {
	background-image:
		url(http://misc.360buyimg.com/product/skin/2012/i/20120814A.png);
	background-repeat: no-repeat;
}

#slogens {
	position: relative;
	float: right;
	width: 210px;
	height: 80px;
	overflow: visible;
}

#slogens dt {
	position: absolute;
	top: 0;
	width: 69px;
	height: 78px;
	border: solid #ddd;
	border-width: 1px 0 1px 1px;
	text-align: center;
	font-weight: bold;
	font-family: "microsoft yahei";
}

#slogens dt a {
	display: block;
	width: 100%;
	height: 76px;
	padding: 2px 0 0;
	text-decoration: none;
}

#slogens dt strong {
	color: #666;
	display: block;
	line-height: 14px;
}

#slogens dt b {
	display: block;
	width: 45px;
	height: 40px;
	margin: 0 auto 2px;
	overflow: hidden;
	cursor: pointer;
}

#slogens-fore1 dt {
	left: 0;
	border-radius: 5px 0 0 5px;
	-moz-border-radius: 5px 0 0 5px;
	-webkit-border-radius: 5px 0 0 5px;
}

#slogens-fore2 dt {
	left: 70px;
	border-left: 1px solid #f3f3f3;
}

#slogens-fore3 dt {
	left: 140px;
	width: 68px;
	border-left: 1px solid #f3f3f3;
	border-right: 1px solid #ddd;
	border-radius: 0 5px 5px 0;
	-moz-border-radius: 0 5px 5px 0;
	-webkit-border-radius: 0 5px 5px 0;
}

#slogens-fore1 b {
	background-position: -216px -492px;
}

#slogens-fore2 b {
	background-position: -265px -492px;
}

#slogens-fore3 b {
	background-position: -216px -536px;
}

#slogens dd {
	display: none;
	position: absolute;
	top: 79px;
	left: 0;
	width: 208px;
	height: 159px;
	background: #fff;
	border: 1px solid #ddd;
	overflow: hidden;
}

#slogens dd strong {
	display: block;
	margin: 15px 10px;
	font-family: "microsoft yahei";
	font-size: 18px;
}

#slogens dd em {
	font-weight: bold;
}

#slogens dd p {
	padding: 0 10px;
}

#slogens dd .extra {
	position: absolute;
	bottom: 0;
	left: 0;
	width: 188px;
	padding: 6px 10px;
	background: #F3F3F3;
	text-align: right;
}

#slogens dd a {
	color: #005EA7;
}

#slogens .close {
	position: absolute;
	top: 5px;
	right: -21px;
	background-position: -285px -346px;
	width: 21px;
	height: 21px;
	cursor: pointer;
}

#slogens:hover #slogens-fore1 dt {
	border-radius: 5px 0 0;
	-moz-border-radius: 5px 0 0;
	-webkit-border-radius: 5px 0 0;
}

#slogens:hover #slogens-fore3 dt {
	border-radius: 0 5px 0 0;
	-moz-border-radius: 0 5px 0 0;
	-webkit-border-radius: 0 5px 0 0;
}

#slogens .hover dt {
	z-index: 1;
	padding-bottom: 1px;
	background: #fff;
	border-left: 1px solid #ddd;
	border-right: 1px solid #ddd;
	border-bottom: none;
	color: #C30;
}

#slogens .hover dd,#slogens.hover .close {
	display: block;
}

#slogens .hover b {
	width: 60px;
	height: 50px;
	margin-top: 12px;
}

#slogens .hover dt strong {
	display: none;
}

#slogens #slogens-fore1.hover b {
	background-position: -216px -342px;
}

#slogens #slogens-fore2.hover b {
	background-position: -216px -392px;
}

#slogens #slogens-fore3.hover b {
	background-position: -216px -442px;
}

.root61 #slogens {
	width: 310px;
}

.root61 #slogens dt {
	width: 102px;
}

.root61 #slogens dt a {
	height: 64px;
	padding: 9px 0 5px;
}

.root61 #slogens dt b {
	margin-bottom: 4px;
}

.root61 #slogens dt strong {
	display: inline;
	line-height: 18px;
}

.root61 #slogens-fore2 dt {
	left: 103px;
}

.root61 #slogens-fore3 dt {
	left: 206px;
	width: 102px;
}

.root61 #slogens dd {
	width: 308px;
}

.root61 #slogens dd .extra {
	width: 288px;
}

.root61 #slogens .hover dt b {
	margin-top: 6px;
}

.root61 #slogens .hover dt strong {
	display: none;
}

#jdnews {
	float: right;
	width: 210px;
}

#jdnews .mc {
	height: 300px;
	padding: 10px 0 9px;
}

#jdnews ul {
	width: 208px;
	height: 200px;
	overflow: hidden;
}

#jdnews li {
	float: left;
	width: 188px;
	height: 30px;
	padding: 0 10px;
	line-height: 25px;
	overflow: hidden;
}

.root61 #jdnews {
	width: 310px;
}

.root61 #jdnews ul {
	width: 308px;
}

.root61 #jdnews li {
	width: 133px;
}

.root61 #jdnews li.odd {
	border-right: 1px solid #eee;
}

#virtuals {
	position: relative;
	float: right;
	width: 210px;
	padding-top: 30px;
}

#virtuals .mt {
	width: 52px;
	height: 30px;
	line-height: 30px;
}

#virtuals .fore1 .mt {
	left: 0;
	border-radius: 5px 0 0 0;
	-moz-border-radius: 5px 0 0 0;
	-webkit-border-radius: 5px 0 0 0;
}

#virtuals .fore2 .mt {
	left: 53px;
	width: 51px;
}

#virtuals .fore3 .mt {
	left: 105px;
	width: 51px;
}

#virtuals .fore4 .mt {
	left: 157px;
	width: 51px;
	border-radius: 0 5px 0 0;
	-moz-border-radius: 0 5px 0 0;
	-webkit-border-radius: 0 5px 0 0;
}

#virtuals .mc {
	display: none;
	width: 208px;
	height: 139px;
}

#virtuals .curr .mt {
	height: 31px;
	background: #fff;
	border-bottom: none;
}

#virtuals .curr .mc {
	display: block;
}

#virtuals .loading-style1 {
	margin-top: 40px;
}

.root61 #virtuals {
	width: 310px;
}

.root61 #virtuals .fore1 .mt {
	width: 77px;
}

.root61 #virtuals .fore2 .mt {
	left: 78px;
	width: 76px;
}

.root61 #virtuals .fore3 .mt {
	left: 155px;
	width: 76px;
}

.root61 #virtuals .fore4 .mt {
	left: 232px;
	width: 76px;
}

.root61 #virtuals .mc {
	width: 308px;
}

#hot {
	position: relative;
	float: left;
	width: 770px;
	padding-top: 38px;
	border-top: 2px solid #C00;
}

#hot .mt {
	width: 153px;
	height: 37px;
	line-height: 37px;
	border-top: none;
}

#hot .fore1 .mt {
	left: 0;
	width: 152px;
}

#hot .fore2 .mt {
	left: 153px;
}

#hot .fore3 .mt {
	left: 307px;
}

#hot .fore4 .mt {
	left: 461px;
}

#hot .fore5 .mt {
	left: 615px;
}

#hot .mc {
	display: none;
	width: 768px;
	height: 230px;
}

#hot .mc ul {
	height: 230px;
}

#hot .mc li {
	width: 142px;
	padding: 0 6px;
}

#hot .mc .fore1 {
	width: 140px;
}

#hot .curr .mt {
	height: 38px;
	background: #fff;
	border-bottom: none;
	color: #C00;
}

#hot .curr .mc {
	display: block;
}

#hot .p-img {
	width: 130px;
	height: 132px;
	padding: 30px 0 6px;
	margin: 0 auto;
	text-align: center;
}

#hot .p-name {
	height: 3em;
}

#hot .p-price strong {
	font-size: 14px;
	font-family: verdana;
}

#hot .loading-style1 {
	margin-top: 90px;
}

.root61 #hot {
	width: 890px;
}

.root61 #hot .mt {
	width: 177px;
}

.root61 #hot .fore1 .mt {
	width: 176px;
}

.root61 #hot .fore2 .mt {
	left: 177px;
}

.root61 #hot .fore3 .mt {
	left: 355px;
}

.root61 #hot .fore4 .mt {
	left: 533px;
}

.root61 #hot .fore5 .mt {
	left: 711px;
}

.root61 #hot .mc {
	width: 888px;
}

.root61 #hot .mc li {
	width: 158px;
	padding: 0 10px;
}

.root61 #hot .mc .fore1 {
	width: 156px;
}

.root61 #hot .p-img {
	padding-left: 13px;
	padding-right: 13px;
}

#first {
	float: right;
	width: 210px;
}

#first .mc {
	height: 230px;
	padding: 0 5px;
}

#first .item {
	height: 110px;
	padding: 2px 0;
	overflow: hidden;
}

#first .fore1 {
	border-bottom: 1px dotted #ccc;
}

#first .fore1 .p-img {
	float: left;
	margin-right: 5px;
}

#first .fore2 .p-img {
	float: right;
	margin-left: 5px;
}

#first .p-name {
	height: 36px;
	padding-top: 5px;
	margin-bottom: 8px;
	line-height: 18px;
}

#first .p-name a {
	font-weight: bold;
	font-size: 14px;
}

#first .p-name span {
	display: inline-block;
	width: 28px;
	height: 16px;
	padding-left: 9px;
	overflow: hidden;
	background:
		url(http://misc.360buyimg.com/product/skin/2012/i/20120814A.png)
		no-repeat -265px -536px;
	line-height: 16px;
	color: #fff;
}

#first .p-detail {
	height: 4.5em;
	color: #999;
}

* html #first .p-name span {
	position: relative;
	top: -3px;
}

.root61 #first {
	width: 310px;
}

.root61 #first .mc {
	padding: 0 10px;
}

.root61 #first .p-name {
	height: 18px;
}

.root61 #first .p-detail {
	height: 6em;
}

.root61 #first .fore1 .p-img {
	margin-right: 10px;
}

.root61 #first .fore2 .p-img {
	margin-left: 10px;
}

#timed {
	float: left;
	width: 770px;
	background:
		url(http://misc.360buyimg.com/product/skin/2012/i/20120814A.png)
		#F3F3F3 no-repeat -90px -886px;
}

#timed .mt {
	background: none;
}

#timed .mc {
	width: 761px;
	padding: 0 0 7px 7px;
}

#timed .mc li {
	width: 144px;
	height: 253px;
	border: 1px solid #ddd;
	margin-right: 6px;
	background: #fff;
}

#timed .mc .fore5 {
	margin-right: 0;
}

#timed .p-img {
	width: 130px;
	height: 138px;
	padding: 10px 4px 0;
	margin: 0 auto;
	text-align: center;
}

#timed .p-img .pix1 {
	height: 38px;
	padding-top: 3px;
}

#timed .p-img .pix1 {
	line-height: 16px;
	font-size: 12px;
}

#timed .p-img .pix1 span {
	line-height: 20px;
	font-size: 20px;
}

#timed .p-name {
	height: 3em;
	padding: 0 8px;
	margin: 5px 0;
}

#timed .p-price {
	height: 1.5em;
	padding: 5px 0 0 8px;
	border-top: 1px dotted #ccc;
}

#timed .p-price span {
	display: none;
}

#timed .p-price strong {
	font-size: 14px;
	font-family: verdana;
}

#timed .countdown {
	height: 30px;
	margin: 0 auto;
	overflow: hidden;
	border-bottom: 1px dotted #ccc;
	text-align: center;
	line-height: 30px;
	color: #999;
}

#timed .countdown b {
	padding: 0 2px;
	font-size: 16px;
}

#timed .countdown a {
	color: #005EA7;
}

#timed .loading-style1 {
	margin-top: 110px;
}

.root61 #timed {
	width: 890px;
}

.root61 #timed .mc {
	width: 881px;
}

.root61 #timed .mc li {
	width: 168px;
}

.root61 #timed .p-price span {
	display: inline;
}

#group .p-detail,#group .btn-tuan {
	background-image:
		url(http://misc.360buyimg.com/product/skin/2012/i/20120814A.png);
	background-repeat: no-repeat;
}

#group {
	float: right;
	width: 210px;
}

#group .mc {
	height: 140px;
	padding: 8px 5px 3px 0;
}

#group .p-img {
	float: right;
	padding: 0;
}

#group .p-name {
	float: left;
	width: 92px;
	padding-left: 5px;
	height: 6em;
	margin-bottom: 4px;
}

#group .p-market {
	float: left;
	width: 92px;
	padding-left: 10px;
	color: #999;
}

#group .p-detail {
	float: right;
	width: 176px;
	height: 33px;
	padding: 5px 5px 2px 20px;
	background-color: #F83C3C;
	background-position: 0 -594px;
	overflow: hidden;
	zoom: 1;
}

#group .p-detail span,#group .p-detail strong {
	float: left;
	color: #fff;
	line-height: 30px;
}

#group .p-detail span {
	display: none;
}

#group .p-detail strong {
	font-size: 20px;
}

#group .btn-tuan {
	float: right;
	width: 71px;
	height: 33px;
	overflow: hidden;
	background-color: #FFCF13;
	background-position: 0 -636px;
	line-height: 100px;
}

.root61 #group {
	width: 310px;
}

.root61 #group .mc {
	padding-right: 10px;
}

.root61 #group .p-name,.root61 #group .p-market {
	width: 180px;
	padding-left: 10px;
}

.root61 #group .p-detail {
	width: 271px;
}

.root61 #group .p-detail span {
	display: inline;
}

.root61 #group .btn-tuan {
	width: 91px;
	background-position: -74px -636px;
}

.catalogue {
	float: left;
	width: 210px;
}

.catalogue .mt,.catalogue h2,.catalogue .mt b {
	width: 210px;
	height: 40px;
}

.catalogue h2 {
	text-align: center;
	font-size: 16px;
	line-height: 40px;
	color: #fff;
}

.catalogue .mt b {
	background-image:
		url(http://misc.360buyimg.com/product/skin/2012/i/20120814A.png);
	background-repeat: no-repeat;
}

.catalogue .mc {
	position: relative;
	height: 392px;
	border-width: 0 1px 1px;
}

.catalogue span {
	position: absolute;
	z-index: 1;
	line-height: 0;
	font-size: 0;
}

.catalogue ul {
	position: absolute;
	top: 0;
	left: 0;
	z-index: 2;
	padding: 5px;
}

.catalogue li {
	height: 27px;
	line-height: 27px;
	overflow: hidden;
	vertical-align: bottom;
}

.catalogue li a:link,.catalogue li a:visited {
	display: block;
	padding-left: 4px;
	text-decoration: none;
	color: #005EA7;
}

.catalogue li a:hover,.catalogue li a:active {
	background: #005EA7;
	color: #fff;
}

.catalogue li b {
	margin-right: 4px;
	vertical-align: middle;
}

.catalogue .style1 span {
	bottom: 0;
	left: 0;
}

.catalogue .style1 ul {
	width: 198px;
}

.catalogue .style1 li {
	width: 99px;
}

.catalogue .style2 span {
	top: 0;
	right: 0;
}

.catalogue .style2 ul {
	width: 72px;
}

.catalogue .style2 li {
	line-height: 2.2em;
}

* html .catalogue li b {
	font-size: 8px;
}

.plist {
	position: relative;
	float: left;
	width: 780px;
	padding-top: 38px;
	border-top-width: 2px;
	border-top-style: solid;
}

.plist .sm {
	margin-bottom: 0;
}

.plist .smt {
	position: absolute;
	top: 0;
	width: 155px;
	height: 37px;
	background: url(http://misc.360buyimg.com/lib/skin/2012/i/20111221C.png)
		#efefef repeat-x 0 -32px;
	border-right: 1px solid #ddd;
	border-bottom: 1px solid #ddd;
	border-left: 1px solid #ddd;
	text-align: center;
	line-height: 37px;
}

.plist .fore1 .smt {
	left: 0;
	border-left: none;
}

.plist .fore2 .smt {
	left: 155px;
}

.plist .fore3 .smt {
	left: 311px;
}

.plist .fore4 .smt {
	left: 467px;
}

.plist .fore5 .smt {
	left: 623px;
}

.plist .smc {
	display: none;
	position: relative;
	width: 779px;
	height: 392px;
	border: solid #ddd;
	border-width: 0 1px 1px 0;
}

.plist .curr .smt {
	height: 38px;
	background: #fff;
	border-bottom: none;
}

.plist .curr .smc {
	display: block;
}

.plist .slide {
	position: absolute;
	top: 0;
	left: 276px;
	width: 225px;
	height: 261px;
	border-left: 1px solid #eee;
	border-bottom: 1px solid #eee;
}

.plist .slide-itemswrap,.plist .slide-items div {
	width: 225px;
	height: 261px;
	overflow: hidden;
}

.plist .slide-items {
	height: 261px;
}

.plist .slide-items div {
	float: left;
}

.plist .slide-controls,.plist .slide-crystal {
	position: absolute;
	bottom: 0;
	left: 0;
	width: 225px;
}

.plist .slide-controls {
	z-index: 3;
	height: 18px;
	padding: 8px 0;
	text-align: center;
}

.plist .slide-controls span {
	width: 18px;
	height: 18px;
	line-height: 18px;
}

.plist .slide-controls a {
	font-size: 12px;
}

.plist .slide-crystal {
	z-index: 2;
	height: 34px;
	background: #fff;
	opacity: .5;
	filter: alpha(opacity =   50);
}

.plist .smc ul {
	width: 785px;
}

.plist .smc li {
	border-left: 1px solid #eee;
	border-bottom: 1px solid #eee;
	overflow: hidden;
}

.plist .style1 li {
	position: relative;
	width: 275px;
	height: 130px;
}

.plist .style1 .fore1,.plist .style1 .fore3 {
	border-left: 1px solid #fff;
	margin-right: 226px;
}

.plist .style1 .fore5 {
	border-bottom: none;
	border-left: 1px solid #fff;
}

.plist .style1 .fore6,.plist .style1 .fore7 {
	border-bottom: none;
}

.plist .style1 .p-img {
	position: absolute;
	top: 0;
	right: 0;
	z-index: 1;
	padding: 0;
}

.plist .style1 .p-img img {
	padding-left: 50px;
}

.plist .style1 .p-detail {
	position: absolute;
	top: 10px;
	left: 25px;
	z-index: 2;
	width: 120px;
}

.plist .style1 .p-price {
	padding-right: 10px;
	color: #C00;
	font: bold 12px "microsoft yahei";
}

.plist .style1 .p-price {
	color: #C00;
}

.plist .style1 .p-price span {
	font-size: 14px;
	font-family: Verdana;
}

.plist .style1 .p-img-sys img {
	padding-left: 145px;
	background: #fff;
}

.plist .style1 .fore6 {
	width: 225px;
}

.plist .style1 .fore6 .p-img {
	right: 0;
}

.plist .style1 .fore6 .p-img img {
	padding-left: 0;
}

.plist .style1 .fore6 .p-detail {
	left: 10px;
}

.plist .style1 .fore6 .p-img-sys img {
	padding-left: 95px;
}

.plist .style2 li {
	width: 174px;
	height: 186px;
	padding: 5px 10px;
}

.plist .style2 .fore1,.plist .style2 .fore5 {
	border-left: none;
}

.plist .style2 .fore5,.plist .style2 .fore6,.plist .style2 .fore7,.plist .style2 .fore8
	{
	border-bottom: none;
}

.plist .style2 .p-img {
	text-align: center;
}

.plist .style2 .p-name {
	height: 1.5em;
	margin: 3px 0;
}

.plist .style2 .pi {
	top: 5px;
}

.plist .style2 .link {
	width: 389px;
	height: 32px;
	padding: 0;
}

.plist .style2 .link5,.plist .style2 .link7 {
	border-left: none;
}

.plist .style2 .link a:link,.plist .style2 .link a:visited {
	display: block;
	height: 32px;
	padding: 0 10px;
	line-height: 32px;
}

.plist .style2 .link a:hover,.plist .style2 .link a:active {
	background: #005EA7;
	color: #fff;
}

.plist .style3 li {
	position: relative;
	width: 258px;
	height: 130px;
}

.plist .style3 .fore1,.plist .style3 .fore4 {
	border-left: 1px solid #fff;
}

.plist .style3 .fore4,.plist .style3 .fore5,.plist .style3 .fore6 {
	border-bottom: none;
}

.plist .style3 .p-img {
	position: absolute;
	top: 0;
	right: 0;
	z-index: 1;
	padding: 0;
}

.plist .style3 .p-img img {
	padding: 15px 5px 15px 153px;
}

.plist .style3 .p-detail {
	position: absolute;
	top: 10px;
	left: 25px;
	z-index: 2;
	width: 120px;
}

.plist .style3 .p-name {
	height: 3em;
	line-height: 1.5em;
}

.plist .style3 .p-price {
	padding-right: 10px;
	color: #C00;
	font: bold 12px "microsoft yahei";
}

.plist .style3 .p-price {
	color: #C00;
}

.plist .style3 .p-price span {
	font-size: 14px;
	font-family: Verdana;
}

.plist .loading-style1 {
	margin-top: 150px;
}

* html .plist .slide-crystal {
	bottom: -1px;
}

.root61 .plist {
	width: 680px;
}

.root61 .plist .smt {
	width: 135px;
}

.root61 .plist .fore2 .smt {
	left: 135px;
}

.root61 .plist .fore3 .smt {
	left: 271px;
}

.root61 .plist .fore4 .smt {
	left: 407px;
}

.root61 .plist .fore5 .smt {
	left: 543px;
}

.root61 .plist .smc {
	width: 679px;
}

.root61 .plist .slide {
	left: 226px;
}

.root61 .plist .smc ul {
	width: 685px;
}

.root61 .plist .style1 li {
	width: 225px;
}

.root61 .plist .style1 .p-img img {
	padding: 0;
}

.root61 .plist .style1 .p-detail {
	left: 10px;
}

.root61 .plist .style1 .p-img-sys img {
	padding-left: 95px;
}

.root61 .plist .style2 li {
	width: 149px;
}

.root61 .plist .style2 .link {
	width: 339px;
}

.root61 .plist .style3 li {
	width: 225px;
}

.root61 .plist .style3 .p-detail {
	left: 10px;
}

.root61 .plist .style3 .p-img img {
	padding-left: 120px;
}

.dam {
	display: none;
	margin-bottom: 3px;
}

.root61 .dam {
	display: block;
}

.brands {
	float: right;
	width: 990px;
}

.brands .smt {
	display: none;
}

.brands .smc {
	width: 972px;
	height: 35px;
	padding: 9px;
	background: #F3F3F3;
	border-width: 0;
}

.brands .smc ul {
	width: 972px;
}

.brands .smc li {
	width: 98px;
	height: 35px;
	border: solid #F3F3F3;
	border-width: 0 5px;
}

.root61 .brands {
	width: 310px;
}

.root61 .brands .smt {
	display: block;
}

.root61 .brands .smc {
	width: 297px;
	height: 108px;
	padding: 0 6px 6px 5px;
	border-width: 0 1px 1px;
}

.root61 .brands .smc ul {
	width: 297px;
	background: #fff;
}

.root61 .brands .smc li {
	border-width: 1px 0 0 1px;
}

.subjects {
	display: none;
	float: right;
	width: 310px;
}

.subjects a {
	display: block;
	height: 55px;
	overflow: hidden;
	background-image:
		url(http://misc.360buyimg.com/product/skin/2012/i/20120814A.png);
	background-repeat: no-repeat;
	line-height: 200px;
}

.root61 .subjects {
	display: block;
}

.infomation {
	display: none;
	float: right;
	width: 310px;
}

.infomation .smc {
	width: 292px;
	padding: 3px 8px;
}

.infomation li {
	height: 22px;
	line-height: 22px;
	overflow: hidden;
}

.infomation li a:link,.infomation li a:visited {
	color: #005EA7;
}

.infomation li b {
	margin-right: 4px;
}

* html .infomation li b {
	font-size: 8px;
}

.root61 .infomation {
	display: block;
}

.ranking {
	display: none;
	position: relative;
	float: right;
	width: 310px;
	padding-top: 40px;
}

.ranking .sm {
	margin-bottom: 0;
}

.ranking .smt {
	width: 70px;
	height: 38px;
	line-height: 38px;
}

.ranking .fore1 .smt {
	left: 0;
	border-radius: 5px 0 0 0;
	-moz-border-radius: 5px 0 0 0;
	-webkit-border-radius: 5px 0 0 0;
}

.ranking .fore2 .smt {
	left: 71px;
}

.ranking .fore3 .smt {
	left: 142px;
}

.ranking .fore4 .smt {
	left: 213px;
	width: 95px;
	border-radius: 0 5px 0 0;
	-moz-border-radius: 0 5px 0 0;
	-webkit-border-radius: 0 5px 0 0;
}

.ranking .smc {
	display: none;
	width: 298px;
	height: 261px;
	padding: 0 5px;
}

.ranking .smc li {
	padding: 2px 0 1px;
	overflow: hidden;
	border-top: 1px dotted #ccc;
}

.ranking .smc span {
	float: left;
	width: 20px;
	height: 22px;
	margin-right: 6px;
	background: url(http://misc.360buyimg.com/lib/skin/2012/i/20120112B.png)
		#aaa no-repeat -202px -220px;
	text-align: center;
	line-height: 22px;
	color: #fff;
}

.ranking .p-img {
	display: none;
	float: left;
}

.ranking .p-name,.ranking .p-market,.ranking .p-price {
	float: left;
	height: 22px;
	line-height: 22px;
	overflow: hidden;
}

.ranking .p-name {
	width: 150px;
}

.ranking .p-market,.ranking .p-price {
	width: 60px;
	text-align: right;
}

.ranking .p-market {
	text-decoration: line-through;
	color: #999;
}

.ranking .p-price strong {
	font-weight: normal;
}

.ranking li.fore1 {
	border-top: none;
}

.ranking li.fore1 span,.ranking li.fore2 span,.ranking li.fore3 span {
	background-position: -202px -244px;
	background-color: #C00;
}

.ranking .curr .smt {
	height: 39px;
	background: #fff;
	border-bottom: none;
}

.ranking .curr .smc {
	display: block;
}

.root61 .ranking {
	display: block;
}

#digitals .catalogue .mt {
	background: #2E82D0;
}

#digitals .catalogue .mt b {
	background-position: 0 -342px;
}

#digitals .catalogue .mc {
	border-style: solid;
	border-color: #2E82D0;
}

#digitals .plist {
	border-top-color: #2E82D0;
}

#digitals .curr h3 {
	color: #2E82D0;
}

#digitals .subjects a {
	width: 150px;
}

#digitals .subjects .fl:link,#digitals .subjects .fl:visited {
	background-position: 0 -285px;
}

#digitals .subjects .fl:hover,#digitals .subjects .fl:active {
	background-position: 0 -228px;
}

#digitals .subjects .fr:link,#digitals .subjects .fr:visited {
	background-position: -160px -285px;
}

#digitals .subjects .fr:hover,#digitals .subjects .fr:active {
	background-position: -160px -228px;
}

#electronics .catalogue .mt {
	background: #2E82D0;
}

#electronics .catalogue .mt b {
	background-position: 0 -384px;
}

#electronics .catalogue .mc {
	border-style: solid;
	border-color: #2E82D0;
}

#electronics .plist {
	border-top-color: #2E82D0;
}

#electronics .curr h3 {
	color: #2E82D0;
}

#electronics .subjects a {
	width: 150px;
}

#electronics .subjects .fl:link,#electronics .subjects .fl:visited {
	background-position: 0 -171px;
}

#electronics .subjects .fl:hover,#electronics .subjects .fl:active {
	background-position: 0 -114px;
}

#electronics .subjects .fr:link,#electronics .subjects .fr:visited {
	background-position: -160px -171px;
}

#electronics .subjects .fr:hover,#electronics .subjects .fr:active {
	background-position: -160px -114px;
}

#women .catalogue .mt {
	background: #C00;
}

#women .catalogue .mt b {
	background-position: 0 -426px;
}

#women .catalogue .mc {
	border-style: solid;
	border-color: #C00;
}

#women .plist {
	border-top-color: #C00;
}

#women .curr h3 {
	color: #C00;
}

#men .catalogue .mt {
	background: #C00;
}

#men .catalogue .mt b {
	background-position: 0 -468px;
}

#men .catalogue .mc {
	border-style: solid;
	border-color: #C00;
}

#men .plist {
	border-top-color: #C00;
}

#men .curr h3 {
	color: #C00;
}

#men .infomation .smc {
	padding-top: 4px;
	padding-bottom: 4px;
	border-top-width: 1px;
}

#life .catalogue .mt {
	background: #F28300;
}

#life .catalogue .mt b {
	background-position: 0 -510px;
}

#life .catalogue .mc {
	border-style: solid;
	border-color: #F28300;
}

#life .plist {
	border-top-color: #F28300;
}

#life .curr h3 {
	color: #F28300;
}

#life .subjects a {
	width: 310px;
}

#life .subjects a:link,#life .subjects a:visited {
	background-position: 0 -57px;
}

#life .subjects a:hover,#life .subjects a:active {
	background-position: 0 0;
}

#books .catalogue .mt {
	background: #F28300;
}

#books .catalogue .mt b {
	background-position: 0 -552px;
}

#books .catalogue .mc {
	height: 261px;
	border-style: solid;
	border-color: #F28300;
}

#books .plist {
	border-top-color: #F28300;
}

#books .plist .smc {
	height: 261px;
}

#books .plist .curr h3 {
	color: #F28300;
}

#foods .catalogue .mt {
	background: #F28300;
}

#foods .catalogue .mt b {
	background-position: 0 -843px;
}

#foods .catalogue .mc {
	height: 261px;
	border-style: solid;
	border-color: #F28300;
}

#foods .plist {
	border-top-color: #F28300;
}

#foods .plist .smc {
	height: 261px;
}

#foods .plist .curr h3 {
	color: #F28300;
}

#foods .infomation .smc {
	padding-top: 4px;
	padding-bottom: 4px;
}

.club .mc {
	height: 161px;
	padding: 0 10px;
}

.club li {
	height: 60px;
	padding: 10px 0 10px 15px;
	border-bottom: 1px dotted #ccc;
	overflow: hidden;
}

.club .p-img {
	float: left;
	margin-right: 15px;
	overflow: visible;
}

.club .p-name {
	height: 1.5em;
	padding: 3px 0;
}

.club .p-name a:link,.club .p-name a:visited {
	color: #005EA7;
}

.club .vi {
	display: inline-block;
	position: relative;
	top: 1px;
	left: 3px;
}

.club .ci {
	top: 0;
	right: -10px;
}

.club .p-detail {
	width: 225px;
	height: 3em;
	padding-right: 50px;
	background: url(http://misc.360buyimg.com/lib/skin/2012/i/20120112B.png)
		no-repeat 240px -342px;
	color: #999;
}

.club .p-detail a:link,.club .p-detail a:visited {
	color: #999;
}

.club .loading-style1 {
	margin-top: 100px;
}

.club .mc { *
	position: relative;
}

* html .club .vi {
	top: -2px;
}

.root61 .club .p-detail {
	width: 285px;
	background-position: 300px -342px;
}

#share {
	float: left;
	width: 386px;
}

#share .mt {
	border-radius: 5px 0 0 0;
	-moz-border-radius: 5px 0 0 0;
	-webkit-border-radius: 5px 0 0 0;
}

.root61 #share {
	width: 446px;
}

#comment {
	float: left;
	width: 384px;
}

#comment .mt {
	border-left: none;
	border-radius: 0 5px 0 0;
	-moz-border-radius: 0 5px 0 0;
	-webkit-border-radius: 0 5px 0 0;
}

#comment .mc {
	border-left: none;
}

.root61 #comment {
	width: 444px;
}

#reading {
	float: right;
	width: 210px;
	margin-bottom: 6px;
}

#reading .mc {
	padding: 5px 10px;
}

#reading .p-img {
	display: none;
	float: left;
	width: 100px;
	padding: 0;
}

#reading ul {
	width: auto;
}

#reading li {
	height: 25px;
	overflow: hidden;
	line-height: 25px;
}

#reading .mc a {
	color: #005EA7;
}

#reading .mc b {
	margin-right: 4px;
}

* html #reading .mc b {
	font-size: 8px;
}

.root61 #reading {
	width: 310px;
}

.root61 #reading .p-img {
	display: block;
}

.root61 #reading ul {
	float: right;
	width: 180px;
}

#subscription .text,#subscription .button {
	background-image:
		url(http://misc.360buyimg.com/lib/skin/2012/i/20120112B.png);
	background-repeat: no-repeat;
}

#subscription {
	float: right;
	width: 210px;
	overflow: visible;
}

#subscription .mt {
	margin-bottom: 2px;
}

#subscription .mc {
	overflow: visible;
}

#subscription .form {
	position: relative;
	width: 210px;
}

#subscription .text {
	width: 115px;
	height: 21px;
	padding: 1px 0 1px 25px;
	background-position: -210px -30px;
	border: 1px inset #bbb;
	line-height: 21px;
	color: #999;
}

#subscription .button {
	float: right;
	width: 63px;
	height: 25px;
	background-position: -168px 0;
	line-height: 25px;
	font-weight: bold;
}

#subscription .correct {
	border: 1px solid #D9D3BB;
	background: #FFFDEE;
	color: #34772A;
}

#subscription .incorrect {
	border: 1px solid #C2A4A4;
	background: #FEE9E8;
	color: #A31112;
}

#subscription-prompt {
	position: absolute;
	top: 26px;
	width: 118px;
	padding: 2px 0;
	text-align: center;
}

.root61 #subscription {
	width: 310px;
}

.root61 #subscription .form {
	width: 310px;
}

.root61 #subscription .text {
	width: 215px;
}

.root61 #subscription-prompt {
	width: 240px;
}

#treasure .research b,#guidelayer .close,#guidelayer .corner {
	background-image:
		url(http://misc.360buyimg.com/product/skin/2012/i/20120209D.png);
	background-repeat: no-repeat;
}

#treasure .guide {
	float: right;
	padding: 0 10px;
	line-height: 40px;
	color: #fff;
}

#treasure .guide span {
	color: #fff;
	text-decoration: underline;
	cursor: pointer;
}

#treasure .research {
	float: right;
	position: relative;
	height: 40px;
	padding: 0 10px;
	line-height: 40px;
}

#treasure .research b {
	position: absolute;
	top: 10px;
	left: 0;
	width: 16px;
	height: 20px;
	background-position: -219px -50px;
}

#treasure .research a {
	color: #fff;
	text-decoration: underline;
}

#guidelayer {
	position: absolute;
	z-index: 1000;
	width: 300px;
	height: 130px;
	border: 3px solid #F79A00;
	-moz-box-shadow: 1px 1px 5px #999;
	-webkit-box-shadow: 1px 1px 5px #999;
	box-shadow: 1px 1px 5px #999;
	background: #FFFDEE;
	overflow: visible;
	zoom: 1;
}

#guidelayer b,#guidelayer .inner {
	position: absolute;
}

#guidelayer .close {
	z-index: 999;
	top: 8px;
	right: 8px;
	width: 11px;
	height: 11px;
	background-position: -238px -50px;
	cursor: pointer;
}

#guidelayer .corner {
	z-index: 997;
	top: -12px;
	left: 140px;
	width: 27px;
	height: 12px;
	background-position: -521px 0;
	color: #EDD28B;
}

#guidelayer .inner {
	z-index: 998;
	top: 0;
	left: 0;
	width: 280px;
	height: 110px;
	padding: 10px 10px 0;
	background: #FFFDEE;
}

#guidelayer ul {
	height: 86px;
	padding-bottom: 10px;
}

#guidelayer strong {
	display: block;
	margin-bottom: 10px;
	font-size: 18px;
	font-family: "microsoft yahei";
	color: #F60;
}

#guidelayer a {
	margin-left: 10px;
	font-weight: bold;
	color: #005EA7;
}

#guidelayer.style1 .corner {
	left: 235px;
}

#guidelayer.style2 .corner {
	left: 40px;
	top: auto;
	bottom: -12px;
	background-position: -521px -13px;
}

.da0x150 {
	width: 210px;
	height: 150px;
	background: #F8F8F8;
}

.da0x100 {
	width: 210px;
	height: 100px;
	background: #F8F8F8;
}

.da0x90 {
	width: 210px;
	height: 90px;
	background: #F8F8F8;
}

.root61 .da0x150 {
	width: 310px;
}

.root61 .da0x100 {
	width: 310px;
}

.root61 .da0x90 {
	width: 310px;
}
</style>
<script type="text/javascript">
window.pageConfig={
	compatible:true,
	navId:"home"
};
function check(){
	var key = document.getElementById("key").value;
	if(key == null || key == ""){
		alert("请输入要查询的内容");
		return false;
	}
}
</script>

</head>

<script type="text/javascript" src="./index_files/base-v1.js"></script>
<div id="shortcut">
	<div class="w">
		<ul class="fl lh">
			<li class="fore1 ld" clstag="homepage|keycount|home2012|01a"><b></b><a href="javascript:addToFavorite()">收藏91<span>商城</span></a></li>
		</ul>
<ul class="fr lh">
				<c:if test="${memberName == null}">
					<li class="fore1 ld" id="loginbar" clstag="homepage|keycount|home2012|01e">您好，欢迎来到91商城！<span>
						<a href="<%=path%>/member/login.jsp">[登录]</a> 
						<a href="<%=path%>/member/regedit.jsp" class="link-regist">[免费注册]</a></span></li>
				</c:if>
				<c:if test="${memberName != null}">
					<li class="fore1 ld" id="loginbar" clstag="homepage|keycount|home2012|01e"><a href="<%=path%>/member/memberEditInfo?memberID=${memberID }">${memberName }</a>，欢迎您！<span>
						<a href="<%=path%>/member/memberLogout" class="link-regist">[退出]</a></span></li>
				</c:if>
			
			<li class="fore2" clstag="homepage|keycount|home2012|01f"><a href="<%=path%>/orderQueryAll">我的订单</a></li>
			<li class="fore3 menu" data-widget="dropdown" clstag="homepage|keycount|home2012|01g">
				<dl>
					<dt class="ld">特色栏目<b></b></dt>
					<dd>
						<div><a href="">校园频道</a></div>
						<div><a href="" target="_blank">在线读书</a></div>
						<div><a href="" target="_blank">装机大师</a></div>
						<div><a href="" target="_blank">礼品卡</a></div>
					</dd>
				</dl>
			</li>
			<li class="fore4" clstag="homepage|keycount|home2012|01h"><a href="" target="_blank">手机91</a></li>
			<li class="fore5 menu" data-widget="dropdown" clstag="homepage|keycount|home2012|01i">
				<dl>
					<dt class="ld">企业服务<b></b></dt>
					<dd>
						<div><a href="" target="_blank">企业客户</a></div>
						<div><a href="">办公直通车</a></div>
					</dd>
				</dl>
			</li>
			<li class="fore6 menu" data-widget="dropdown" clstag="homepage|keycount|home2012|01j">
				<dl>
					<dt class="ld"><a href="" target="_blank">客户服务<b></b></a></dt>
					<dd>
						<div><a href="" target="_blank">常见问题</a></div>
						<div><a href="" target="_blank">售后服务</a></div>
						<div><a href="" target="_blank">在线客服</a></div>
						<div><a href="" target="_blank">投诉中心</a></div>
						<div><a href="" target="_blank">客服邮箱</a></div>
					</dd>
				</dl>
			</li>
		</ul>
		<span class="clr"></span>
	</div>
</div><!--shortcut end--><!-- shortcut end -->


<div id="o-header">
  <div class="w" id="header">
    <div id="logo" class="ld"><a href="<%=path%>/index.jsp" hidefocus="true" clstag="homepage|keycount|home2012|02a"><b></b><img src="./index_files/images/91logo.png" width="259" height="50" alt="91商城"></a></div>
    <!--logo end-->
    <div id="search">
      <div class="i-search ld">
        <b></b><s></s>
        <ul id="shelper" class="hide"></ul>
        <div class="form">
        <form action="goods/goodsSerch" method="post" onsubmit="return check()">
          <input type="text" class="text" accesskey="s" id="key" name="key" autocomplete="off" onkeydown="javascript:if(event.keyCode==13) search(&#39;key&#39;);">
          <input type="submit" value="搜索"  class="button" onclick="" clstag="homepage|keycount|home2012|03a" />
          
        
        </form>
        </div>
      </div>
      </div>
    <!--search end-->
    <div id="my360buy">
      <dl>
        <dt class="ld"><s></s><img src="./index_files/blank.gif" width="24" height="24" alt="头像"><a href="" clstag="homepage|keycount|home2012|04k">我的91</a><b></b></dt>
        <dd><div class="loading-style1"><b></b>加载中，请稍候...</div></dd>
      </dl>
    </div><!--my360buy end-->
    <div id="settleup" clstag="homepage|keycount|home2012|05a">
      <dl>
        <dt class="ld">
          <s><span id="shopping-amount"></span></s>
          <a href="trolleyDetail">去购物车结算</a>
          <b></b>
        </dt>
        <dd>
          <div class="prompt">

            <div class="loading-style1"><b></b>加载中，请稍候...</div>
          </div>
        </dd>
      </dl>
    </div><!--settleup end-->
  </div><!--header end-->


  <div class="w">
    <div id="nav">
      <div id="categorys" class="">
<div class=menuNav>
      <H2>所有商品分类</H2>
      <DIV id=SNmenuNav class=navlist>
        <c:forEach items="${goodsType1_former }" var="li1">
        <DL>
          <DT class="icon03"><A href="#"  target=_blank>${li1.typeName }</A></DT>
          <DD class="menv03">
            <UL class=sideleft>
              <H3>${li1.typeName }</H3>
              <c:forEach items="${goodsType2_former }" var="li2">
              <c:if test="${li1.typeID == li2.parentID }">
              <LI class=noline><B>${li2.typeName }</B>
                <DIV><c:forEach items="${goodsType3_former }" var="li3">
                	<c:if test="${li2.typeID == li3.parentID }">
                	 <A title=GSM手机 href="goods/goodsMenuSerch?typeID=${li3.typeID }&typeID1=${li1.typeID }&typeID2=${li2.typeID }" target=_blank>${li3.typeName }</A>
                	 </c:if>
                	  </c:forEach>
                </DIV>
                <SPAN class=clear></SPAN>
              </LI>
              </c:if>
              </c:forEach>
            </UL>
            <UL class=sideright>
              <H3>品牌推荐</H3>
              <LI><A href="" target=_blank>佳能</A></LI>
              <LI><A  href="" target=_blank>索尼</A></LI>
              <LI><A href="" target=_blank>尼康</A></LI>
              <LI><A href="" target=_blank>三星</A></LI>
              <LI><A href="l" target=_blank>卡西欧</A></LI>
              <LI><A href="" target=_blank>奥林巴斯</A></LI>
              <LI><A href="" target=_blank>富士</A></LI>
            </UL>
            </DD>
        </DL>
       </c:forEach>
                
            
          
        
        <H4><A 
href="" 
target=_blank>查看所有商品分类&gt;&gt;</A></H4>
      </DIV>
    </div>


      </div>
      <div id="treasure" clstag="homepage|keycount|home2012|07f"><a style="float:right;width:141px;height:40px;background:url(http://img12.360buyimg.com/da/g9/M03/05/1D/rBEHalBQXwIIAAAAAAAiLPzFif8AABJ3QPUQw4AACJE874.gif) no-repeat 0 0;" href="http://sale.360buy.com/act/i5tF6qd07y4u8fCm.html" target="_blank" title="">&nbsp;</a></div>
      <ul id="navitems">
        <li class="fore1 curr" id="nav-home" clstag="homepage|keycount|home2012|07a"><a href="">首页</a></li>
        <li class="fore2" id="nav-mall" clstag="homepage|keycount|home2012|07b"><a href="">服装城</a></li>
        <li class="fore4" id="nav-tuan" clstag="homepage|keycount|home2012|07c"><a href="">团购</a></li>
      </ul>
    </div>
  </div>
</div>
<script type="text/javascript">
(function(){if(pageConfig.navId){var object=document.getElementById("nav-"+pageConfig.navId);if(object)object.className+=" curr";}})();
</script><!-- header end --><!-- header end -->



<style type="text/css">
* {margin:0; padding:0;}
body {font-size:12px; color:#222; font-family:Verdana,Arial,Helvetica,sans-serif; background:#f0f0f0;}
.clearfix:after {content: "."; display: block; height: 0; clear: both; visibility: hidden;}
.clearfix {zoom:1;}
ul,li {list-style:none;}
img {border:0;}

.wrapper {width:600px; margin:0 auto; padding-bottom:50px;}
.ad {width:468px; margin:10px auto 0;}
.ad li {padding-top:5px;}

h1 {height:50px; line-height:50px; font-size:22px; font-weight:normal; font-family:"Microsoft YaHei",SimHei;}

.shuoming {margin-top:20px; border:1px solid #ccc; padding-bottom:10px;}
.shuoming dt {height:30px; line-height:30px; font-weight:bold; text-indent:10px;}
.shuoming dd {line-height:20px; padding:5px 20px;}

.wrapper {width:780px;}
/* tmall focus1 */
#focus1 {width:780px; height:380px; overflow:hidden; position:relative;}
#focus1 ul {height:380px; position:absolute;}
#focus1 ul li {float:left; width:780px; height:380px; overflow:hidden; position:relative; background:#000;}
#focus1 ul li div {position:absolute; overflow:hidden;}
#focus1 .btnBg {position:absolute; width:780px; height:40px; left:0; bottom:0; background:#000;}
#focus1 .btn {position:absolute; width:770px; height:24px; left:0; bottom:8px; padding-left:10px;}
#focus1 .btn span {display:inline-block; _display:inline; _zoom:1; width:24px; height:24px; line-height:24px; text-align:center; font-size:20px; font-family:"Microsoft YaHei",SimHei; margin-right:10px; cursor:pointer; color:#fff;}
#focus1 .btn span.on {background:#000; color:#fcc;}
</style>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	var sWidth = $("#focus1").width(); //获取焦点图的宽度（显示面积）
	var len = $("#focus1 ul li").length; //获取焦点图个数
	var index = 0;
	var picTimer;
	
	//以下代码添加数字按钮和按钮后的半透明长条
	var btn = "<div class='btnBg'></div><div class='btn'>";
	for(var i=0; i < len; i++) {
		btn += "<span>" + (i+1) + "</span>";
	}
	btn += "</div>"
	$("#focus1").append(btn);
	$("#focus1 .btnBg").css("opacity",0.5);
	
	//为数字按钮添加鼠标滑入事件，以显示相应的内容
	$("#focus1 .btn span").mouseover(function() {
		index = $("#focus1 .btn span").index(this);
		showPics(index);
	}).eq(0).trigger("mouseenter");
	
	//本例为左右滚动，即所有li元素都是在同一排向左浮动，所以这里需要计算出外围ul元素的宽度
	$("#focus1 ul").css("width",sWidth * (len + 1));
	
	//鼠标滑入某li中的某div里，调整其同辈div元素的透明度，由于li的背景为黑色，所以会有变暗的效果
	$("#focus1 ul li div").hover(function() {
		$(this).siblings().css("opacity",0.7);
	},function() {
		$("#focus1 ul li div").css("opacity",1);
	});
	
	//鼠标滑上焦点图时停止自动播放，滑出时开始自动播放
	$("#focus1").hover(function() {
		clearInterval(picTimer);
	},function() {
		picTimer = setInterval(function() {
			if(index == len) { //如果索引值等于li元素个数，说明最后一张图播放完毕，接下来要显示第一张图，即调用showFirPic()，然后将索引值清零
				showFirPic();
				index = 0;
			} else { //如果索引值不等于li元素个数，按普通状态切换，调用showPics()
				showPics(index);
			}
			index++;
		},3000); //此3000代表自动播放的间隔，单位：毫秒
	}).trigger("mouseleave");
	
	//显示图片函数，根据接收的index值显示相应的内容
	function showPics(index) { //普通切换
		var nowLeft = -index*sWidth; //根据index值计算ul元素的left值
		$("#focus1 ul").stop(true,false).animate({"left":nowLeft},500); //通过animate()调整ul元素滚动到计算出的position
		$("#focus1 .btn span").removeClass("on").eq(index).addClass("on"); //为当前的按钮切换到选中的效果
	}
	
	function showFirPic() { //最后一张图自动切换到第一张图时专用
		$("#focus1 ul").append($("#focus1 ul li:first").clone());
		var nowLeft = -len*sWidth; //通过li元素个数计算ul元素的left值，也就是最后一个li元素的右边
		$("#focus1 ul").stop(true,false).animate({"left":nowLeft},500,function() {
			//通过callback，在动画结束后把ul元素重新定位到起点，然后删除最后一个复制过去的元素
			$("#focus1 ul").css("left","0");
			$("#focus1 ul li:last").remove();
		}); 
		$("#focus1 .btn span").removeClass("on").eq(0).addClass("on"); //为第一个按钮添加选中的效果
	}
});

</script>



<div class="w w1">

	<div id="slide" class="slide m">
	
	<div id="focus1">
		<ul>
			<c:forEach items="${sessionScope.lad}" var="lad">
			<li>
				<div style="left:0; top:0; width:560px; height:380px;"><a href="${lad.address }" target="_blank"><img src="${lad.adsPicture }" alt="" /></a></div>
			</li>
			</c:forEach>
			</ul>
	</div>
	
  </div>
  <!--slide end-->
  <!--slogens-->  

	<div id="jdnews" class="m m1">
		<div class="mt">
			<h2>京东快报</h2>
			<div class="extra" clstag="homepage|keycount|home2012|11a">
			<a href="noticeAllPro" target="_blank">更多快报&nbsp;&gt;</a>
			</div>
		</div>
		<div class="mc">
			<ul>
			<c:forEach items="${sessionScope.lno }" var="notice">
      		<li class="odd" >
      			<a href="oneNotice?placardTitle=${notice.placardTitle }&placardContent=${notice.placardContent }&updateDate=${notice.updateDate }" title="${notice.placardTitle }">${notice.placardTitle }</a>
   			</li>
   			</c:forEach>
   			</ul>
		</div>
	</div>

	<!--jdnews-->
  <!--virtuals end-->
<span class="clr"></span></div>
<!-- 幻灯片, 公信力, 91快报, 虚拟产品 end -->

<div class="w w1">
	<div class="m m3" id="hot" data-widget="tabs">
  <div class="fore1 curr" data-widget="tab-item">
  <div class="mt" clstag="homepage|keycount|home2012|13a">
    <h2>特价商品</h2>
  </div>
  <div class="mc" data-widget="tab-content">
    <ul class="lh">
    <c:forEach items="${goodsRebatePrice }" var="li4">
    <li class="fore1" onclick="reClick2012(&#39;fengkuang2012&#39;,&#39;1007619011#89.00&#39;,0);">
  <div class="p-img ld">
        <a href="<%=path%>/goods/goodsDetail?goodsID=${li4.goodsID }" title="${li6.goodsIntroduce }" target="_blank"><b class="pi pix1">直降</b><img src="${li4.goodsPicture1 }" width="130" height="130" alt="${li4.goodsIntroduce }" data-img="1"></a>  </div>
  <div class="p-name"><a href="<%=path%>/goods/goodsDetail?goodsID=${li4.goodsID }" title="${li4.goodsIntroduce }" target="_blank">${li4.goodsName }&nbsp; ${li4.goodsIntroduce }</a></div>
  <div class="p-price">91价：<strong>￥${li4.goodsMemberPrice }</strong></div>
</li>
</c:forEach>
<li class="fore2" onclick="reClick2012(&#39;fengkuang2012&#39;,&#39;523771#89.00&#39;,1);"></li>
<li class="fore3" onclick="reClick2012(&#39;fengkuang2012&#39;,&#39;376581#199.00&#39;,2);"></li>
</ul>
  </div>
</div>
<div class="fore2 " data-widget="tab-item">
  <div class="mt" clstag="homepage|keycount|home2012|13b">
    <h2>热卖商品</h2>
  </div>
  <div class="mc" data-widget="tab-content">
    <ul class="lh">
    <li class="fore1" onclick="reClick2012(&#39;remai2012&#39;,&#39;1002301543#168.00&#39;,0);">
  <div class="p-img ld">
        <a href="" target="_blank"><b class="pi pix1">直降</b><img data-src="http://img13.360buyimg.com/n3/6970/30a55078-10d6-4939-93b5-bfe468ff0e05.jpg" width="130" height="130" alt="百特高端理发器买送吹风机" data-img="1"></a>  </div>
  <div class="p-name"><a href="<%=path%>/goods/goodsDetail?goodsID=${li5.goodsID }" title="百特高端理发器买送吹风机" target="_blank">百特高端理发器买送吹风机</a></div>
  <div class="p-price">91价：<strong>￥168.00</strong></div>
</li>
<li class="fore2" onclick="reClick2012(&#39;remai2012&#39;,&#39;292712#288.00&#39;,1);"></li>
<li class="fore3" onclick="reClick2012(&#39;remai2012&#39;,&#39;609522#2799.00&#39;,2);"></li>
<li class="fore4" onclick="reClick2012(&#39;remai2012&#39;,&#39;682165#1299.00&#39;,3);"></li>
</ul>
  </div>
</div>
<div class="fore3" data-widget="tab-item">
  <div class="mt" clstag="homepage|keycount|home2012|13c">
    <h2>热评商品</h2>
  </div>
  <div class="mc" data-widget="tab-content">
    <ul class="lh">
    <li class="fore1" onclick="reClick2012(&#39;reping2012&#39;,&#39;1000023352#398.00&#39;,0);">
  <div class="p-img ld">
        <a href="http://www.360buy.com/product/1000023352.html" target="_blank"><b class="pi pix1">直降</b><img data-src="http://img12.360buyimg.com/n3/7812/33a7a0ac-f524-43c5-b435-28f381a56cbb.jpg" width="130" height="130" alt="小狗多级旋风吸尘器D-928" data-img="1"></a>  </div>
  <div class="p-name"><a href="http://www.360buy.com/product/1000023352.html" title="小狗多级旋风吸尘器D-928" target="_blank">小狗多级旋风吸尘器D-928</a></div>
  <div class="p-price">91价：<strong>￥398.00</strong></div>
</li>
<li class="fore2" onclick="reClick2012(&#39;reping2012&#39;,&#39;340260#199.00&#39;,1);"></li>
<li class="fore3" onclick="reClick2012(&#39;reping2012&#39;,&#39;481392#5399.00&#39;,2);"></li>
<li class="fore4" onclick="reClick2012(&#39;reping2012&#39;,&#39;30111678#9.90&#39;,3);"></li>
</ul>
  </div>
</div>
<div class="fore4" data-widget="tab-item">
  <div class="mt" clstag="homepage|keycount|home2012|13d">
    <h2>新品上架</h2>
  </div>
  <div class="mc" data-widget="tab-content">
    <ul class="lh">
    <c:forEach items="${goodsNew }" var="li5">
    <li class="fore1" onclick="reClick2012(&#39;xinpin2012&#39;,&#39;1006752531#149.00&#39;,0);">
  <div class="p-img ld">
        <a href="<%=path%>/goods/goodsDetail?goodsID=${li5.goodsID }" title="${li6.goodsIntroduce }" target="_blank"><img data-src="${li5.goodsPicture1 }" width="130" height="130" alt="${li5.goodsIntroduce }" data-img="1"></a>  </div>
  <div class="p-name"><a href="<%=path%>/goods/goodsDetail?goodsID=${li5.goodsID }" title="${li5.goodsIntroduce }" target="_blank">${li5.goodsName }&nbsp; ${li5.goodsIntroduce }</a></div>
  <div class="p-price">91价：<strong>￥${li5.goodsMemberPrice }</strong></div>
</li>
</c:forEach>
<li class="fore2" onclick="reClick2012(&#39;xinpin2012&#39;,&#39;232803#99.00&#39;,1);"></li>
<li class="fore3" onclick="reClick2012(&#39;xinpin2012&#39;,&#39;702986#999.00&#39;,2);"></li>
<li class="fore4" onclick="reClick2012(&#39;xinpin2012&#39;,&#39;30099515#6.00&#39;,3);"></li>
<li class="fore5" onclick="reClick2012(&#39;xinpin2012&#39;,&#39;707044#4899.00&#39;,4);"></li>
    </ul>
  </div>
</div>
		<div class="fore5" data-widget="tab-item">
			<div class="mt" clstag="homepage|keycount|home2012|13e">
				<h2>猜您喜欢</h2>
			</div>
			<div class="mc" data-widget="tab-content"><ul class="lh">        
				<c:forEach items="${goodsHot }" var="li6">
    				<li class="fore1" onclick="reClick2012(&#39;xinpin2012&#39;,&#39;1006752531#149.00&#39;,0);">
  					<div class="p-img ld">
       				 <a href="<%=path%>/goods/goodsDetail?goodsID=${li6.goodsID }" title="${li6.goodsIntroduce }" target="_blank"><img src="${li6.goodsPicture1 }" width="130" height="130" alt="${li6.goodsIntroduce }" data-img="1"></a>  </div>
  					<div class="p-name"><a href="<%=path%>/goods/goodsDetail?goodsID=${li6.goodsID }" title="${li6.goodsIntroduce }" target="_blank">${li6.goodsName }&nbsp; ${li6.goodsIntroduce }</a></div>
  					<div class="p-price">91价：<strong>￥${li6.goodsMemberPrice }</strong></div>
					</li>
				</c:forEach>  
			      <li class="fore3" onclick="reClick2012(&#39;cai2012&#39;,&#39;203424#12.90&#39;,2)"></li>        
			</ul>
		  </div>
		</div>
	</div><!--hot end-->


	<div id="first" class="m m2">
		<div class="mt">
			<h2>91首发</h2>
			<div class="extra"></div>
		</div>
		<div class="mc">
    <div class="item fore1" clstag="homepage|keycount|home2012|14a">
<div class="p-img"><a href="" target="_blank" title="神舟超极本"><img width="100" height="100" alt="神舟超极本" data-img="1" src="./index_files/bcce42c8-e937-4699-b15a-0da7f261256b.jpg" class="err-product"></a></div>
<div class="p-name"><a href="" target="_blank" title="神舟超极本">神舟超极本</a><span>首发</span></div>
<div class="p-detail">性价比的代名词——神舟电脑一直致力于采用最先进技术，为广大网友提供最强劲性能的产品！UI47是首款迈入5000价位的第三代i7处理器超极本。来91，尖端技术，轻松拥有！</div>
</div>
<div class="item fore2" clstag="homepage|keycount|home2012|14b">
<div class="p-img"><a href="" target="_blank" title="联想A690双卡双待"><img width="100" height="100" alt="联想A690双卡双待" data-img="1" src="./index_files/rBEHalBGvuMIAAAAAAGWZoW-jzIAABCFQFTvecAAZZ-926.jpg" class="err-product"></a></div>
<div class="p-name"><a href="" target="_blank" title="联想A690双卡双待">联想A690双卡双待</a><span>首发</span></div>
<div class="p-detail">1GHz A9内核处理器 至极提速！4.0英寸炫彩大屏
！纳米音腔、Non-clip防破音技术！双卡双卡让您轻松切换网络，尽享网络便利！</div>
</div>
		</div>
	</div><!--first-->
	<span class="clr"></span>
</div>
<!-- 单品促销 栏 end -->


<div class="w w1">
	<div class="m m2" id="timed">
		<div class="mt">
			<h2>限时抢购</h2>
			<div class="extra"></div>
		</div>
		<div class="mc">
			<ul class="lh"><li class="fore4" id="timed4" clstag="homepage|keycount|home2012|15d"><div class="countdown" id="timer37">剩余<b>08</b>小时<b>16</b>分<b>16</b>秒</div>             <div class="p-img ld"><a href="http://www.360buy.com/product/679042.html" target="_blank" title="补贴价1449！32英寸蓝光节能LED电视，限量！"><b class="pi pix1" id="icon37"><span>6.8</span><br>折</b><img src="./index_files/rBEHZ1AsjrYIAAAAAAI7qEktMzoAAABYQI_xS0AAjvA821.jpg" width="130" height="130" data-img="1" alt="补贴价1449！32英寸蓝光节能LED电视，限量！"></a></div>            <div class="p-name"><a href="http://www.360buy.com/product/679042.html" title="补贴价1449！32英寸蓝光节能LED电视，限量！" target="_blank">补贴价1449！32英寸蓝光节能LED电视，限量！</a></div>            <div class="p-price"><span>抢购价：</span><strong>￥1699.00</strong></div> </li>
		    </ul>
		</div>
	</div><!--timed end-->
	<!--group end-->
    <span class="clr"></span> </div>
<!-- 限时抢购 栏 end -->







<div class="w">
	<div id="footer">
	  <div class="copyright">北京市公安局朝阳分局备案编号110105014669&nbsp;&nbsp;|&nbsp;&nbsp;京ICP证070359号&nbsp;&nbsp;|&nbsp;&nbsp;
		<a target="_blank" href="http://help.360buy.com/help/question-310.html">互联网药品信息服务资格证编号(京)-非经营性-2011-0034</a><br><a target="_blank" href="http://misc.360buyimg.com/skin/df/i/com/f_music.jpg">音像制品经营许可证苏宿批005号</a>&nbsp;&nbsp;|&nbsp;&nbsp;出版物经营许可证编号新出发(苏)批字第N-012号&nbsp;&nbsp;|&nbsp;&nbsp;互联网出版许可证编号新出网证(京)字150号<br>Copyright&#169;2004-2012&nbsp;&nbsp;360buy91商城&nbsp;版权所有</div>
  </div>
</div><!-- footer end --><!-- footer end -->


<script type="text/javascript" src="./index_files/jquery-1.2.6.pack.js"></script>
<script type="text/javascript" src="./index_files/lib-v1.js"></script>
<script type="text/javascript" src="./index_files/home.js"></script>


<!--  script type='text/javascript' src='http://ado.360buy.com/allocator/execute/360Buy/HomePage'></script-->
<script type="text/javascript" src="./index_files/wl.js"></script>
<script type="text/javascript">
(function () {
    createCookie("np100", "n01", "", "/;domain=.360buy.com");
    log("np100", "n001");
    var hrf=document.location.href,rfr=document.referrer,rfrlp=!rfr||rfr.split('/')[2].indexOf('360buy.com')<=0;
    if(hrf.indexOf('utm_source')>=0||rfrlp){
        createCookie("np000", "n00", "", "/;domain=.360buy.com");
        log("np000", "n100");
   }
})();
</script>

<script type="text/javascript">
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-2176661-1']);
_gaq.push(['_setDomainName', '360buy.com']);
_gaq.push(['_addOrganic', 'soso', 'w']);
_gaq.push(['_addOrganic', 'sogou', 'query']);
_gaq.push(['_addOrganic', 'youdao', 'q']);
_gaq.push(['_addOrganic', 'baidu', 'word']);
_gaq.push(['_addOrganic', 'baidu', 'q1']);
_gaq.push(['_addOrganic', 'ucweb', 'keyword']);
_gaq.push(['_addOrganic', 'ucweb', 'word']);
_gaq.push(['_addOrganic', '114so', 'kw']);
_gaq.push(['_trackPageview','/newindex2012']);
_gaq.push(['_trackPageLoadTime']);
(function() {
	var ga = document.createElement('script');
	ga.type = 'text/javascript';
	ga.async = true;
	ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
	var s = document.getElementsByTagName('script')[0];
	s.parentNode.insertBefore(ga, s);
})();
</script>



<!--index_ok-->
</body></html>