<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



 <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="_csrf_parameter" content="_csrf"><meta name="_csrf_header" content="X-CSRF-TOKEN"><meta name="_csrf" content="5557377e-0013-402c-90e5-0dad4d61305f">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="p3p" content="CP=&quot;CAO DSP AND SO &quot; policyref=&quot;/w3c/p3p.xml&quot;">
  <meta http-equiv="imagetoolbar" content="no">
  <meta name="robots" content="noindex,nofollow,noarchive">
  <meta name="subject" content="#">
  <meta name="author" content="#">
  <meta name="keywords" content="#">
  <meta name="selected-menu" content="0, 0, 0, 0">
  <link rel="shortcut icon" href="/images/common/ico/w_favicon.ico" type="image/x-icon">
  <!-- TO_BE CSS.. -->
  <link rel="stylesheet" href="static/css/import.css" media="all">
  <!-- 링크!  -->
	<link href="csss/common.css" rel="stylesheet" type="text/css">
	<link href="csss/reset.css" rel="stylesheet" type="text/css">
	<title>Insert title here</title>
	<link href="csss/common1.css" rel="stylesheet" type="text/css">
	<link href="csss/gnb.css" rel="stylesheet" type="text/css">
	<link href="csss/view.css" rel="stylesheet" type="text/css">
	<link href="csss/side_navigation.css" rel="stylesheet" type="text/css">
	<link href="csss/star_style.css" rel="stylesheet" type="text/css">
	<!-- 링크!  -->


  <!-- JQuery -->
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="./jquery/jquery.twbsPagination.min.js"></script>

  <!-- jQuery Modal -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />


  <!-- 검색 부트스트랩 -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">


 <!-- 전체 css -->

<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<script type="text/javascript" src="layout/scripts/featured_slide.js"></script>
 <!-- 부트스트랩 -->
<!-- 링크!  -->
<link href="csss/common.css" rel="stylesheet" type="text/css">
<link href="csss/reset.css" rel="stylesheet" type="text/css">
<link href="csss/tables.css" rel="stylesheet" type="text/css">
<!-- 링크!  -->


  <style type="text/css">
/* 네비바 배경색 */
.bg-dark {
    background-color: white!important;
}
/* 네비바 글자색 */
.navbar-dark .navbar-nav .nav-link {
    color: black;
}
/* 네비바 hover색 */
.navbar-dark .navbar-nav .nav-link:focus, .navbar-dark .navbar-nav .nav-link:hover {
    color: #eee!important;
}
/* 네비바 가운데 정렬 */
.navbar-expand-sm {
    justify-content:center!important;
}


dl, ol, ul {
    margin-top: 0;
    margin-bottom: 0;
}

.navbar-nav2 dl, ol, ul {
    margin-left: 200px;
}

.bg-dark {
    background-color: #2186eb!important;
}


.dropdown-item {
    display: block;
    width: 100%;
    padding: .25rem 1.5rem;
    clear: both;
    font-weight: 400;
    color: #212529!important;
    text-align: inherit;
    white-space: nowrap;
    background-color: transparent;
    border: 0;
}

td._hover_tr:hover {

  background-color: #f0f5ff;
  }


/* 메인css */

nav { width:100%;height:80px; text-align:center;top:0;left:0;}
.all {display:block; flex-flow: row wrap; min-width:100px;}
header {flex:1 1 100%; height:120px; background:white; }
main {flex: 1 1 100%;height:1500px; background:gray;}
footer{flex: 1 1 100%;height:200px;text-align:center;background:white;}



/* 제목아래 라인 */
#homecontent h5 {
    border-bottom: 2px solid #eee;
    font-size: 14pt;
    text-align: center;
    padding: 5px 0 5px 0;
    font-family: inherit;
}

#homecontent .fl_right p.readmore {

}

.readmore{
	color: #747580
}

@media (min-width: 768px)
.col-md-4 {
    -webkit-box-flex: 0;
    -ms-flex: 0 0 30%;
    /* flex: 30%; */
    max-width: 30%;
}

#homecontent h5 {
    background-color: #eee;
    border-bottom: 1px solid #eee;
    text-align: center;
}

p{
	font-size: 9pt;
}

body{
	padding-top: 100px;
}

#homecontent .fl_right img {
    float: left;
    width: 150px;
    height: 75px;
    margin: 0 10px 0 0;
}

#homecontent img {
    padding: 0px;
}

/* 검색css */
.form-control-borderless {
        border: none;
      }

 .form-control-borderless:hover, .form-control-borderless:active, .form-control-borderless:focus {
   border: none;
   outline: none;
   box-shadow: none;
 }

 .card-body1 {
   padding-bottom: 12px;
   padding-top: 12px;
   padding-right: 12px;
   padding-left: 12px;
   background: #2186eb!important;
 }

 .src_fild {
   border-radius: 0;
 }

 .src_btn {
   line-height: 0.5;
   height: 38px;
   border-radius: 0;
 }

 .btn-success {
color: #fff;
background-color: #2186eb;
border-color: #2186eb;
}

.navbar-brand {
    display: flex;
}

.container {
    width: 100%;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
    /* padding-top: 30px; */
    margin-bottom: 10px;
}

.logoarea {
	clear: both;
}

.navbar-nav{
	background-color: #2186eb;
}

.bgc{
 color: white;
 background-color: #2186eb;

}

/* 검색 top margin */
form, fieldset, legend {
    margin-top: 20px;
    padding: 0;
    border: none;
}

/* 부트스트랩css */
@import url('https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
#team {
    background: #fff !important;
}

.btn-primary:hover,
.btn-primary:focus {
    background-color: #fff!important;
    border-color: #000;
    box-shadow: none;
    outline: none;
}

.btn-primary {
    color: #000;
    background-color: #eee;
    border-color: #eee;
}

section {
    padding: 60px 0;
}

section .section-title {
    text-align: center;
    color: #000;
    margin-bottom: 50px;
    text-transform: uppercase;
}

#team .card {
    border: none;
    background: #eee;
}

.image-flip:hover .backside,
.image-flip.hover .backside {
    -webkit-transform: rotateY(0deg);
    -moz-transform: rotateY(0deg);
    -o-transform: rotateY(0deg);
    -ms-transform: rotateY(0deg);
    transform: rotateY(0deg);
    border-radius: .25rem;
}

.image-flip:hover .frontside,
.image-flip.hover .frontside {
    -webkit-transform: rotateY(180deg);
    -moz-transform: rotateY(180deg);
    -o-transform: rotateY(180deg);
    transform: rotateY(180deg);
}

.mainflip {
    -webkit-transition: 1s;
    -webkit-transform-style: preserve-3d;
    -ms-transition: 1s;
    -moz-transition: 1s;
    -moz-transform: perspective(1000px);
    -moz-transform-style: preserve-3d;
    -ms-transform-style: preserve-3d;
    transition: 1s;
    transform-style: preserve-3d;
    position: relative;
}

.frontside {
    position: relative;
    -webkit-transform: rotateY(0deg);
    -ms-transform: rotateY(0deg);
    z-index: 2;
    margin-bottom: 30px;
}

.backside {
    position: absolute;
    top: 0;
    left: 0;
    background: white;
    -webkit-transform: rotateY(-180deg);
    -moz-transform: rotateY(-180deg);
    -o-transform: rotateY(-180deg);
    -ms-transform: rotateY(-180deg);
    transform: rotateY(-180deg);
    -webkit-box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);
    -moz-box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);
    box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);
}

.frontside,
.backside {
    -webkit-backface-visibility: hidden;
    -moz-backface-visibility: hidden;
    -ms-backface-visibility: hidden;
    backface-visibility: hidden;
    -webkit-transition: 1s;
    -webkit-transform-style: preserve-3d;
    -moz-transition: 1s;
    -moz-transform-style: preserve-3d;
    -o-transition: 1s;
    -o-transform-style: preserve-3d;
    -ms-transition: 1s;
    -ms-transform-style: preserve-3d;
    transition: 1s;
    transform-style: preserve-3d;
}

.frontside .card,
.backside .card {
    min-height: 312px;
}

.backside .card a {
    font-size: 18px;
    color: #000 !important;
}

.frontside .card .card-title,
.backside .card .card-title {
    color: #000 !important;
}

.frontside .card .card-body img {
    width: 100%;
    height: 120px;

}

.card-body {
    padding-bottom: 12px;
    padding-top: 12px;
    padding-right: 12px;
    padding-left: 12px;
    background: #eee;
     color: #000 !important;
}

/* 드롭다운 추가 */
.dropbtn {
  background-color: #2186eb;
  color: white;
  padding: 8px;
  font-size: 16px;
  border: none;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #2186eb;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #2186eb;}


<style type="text/css">

/* 네비바 배경색 */
.bg-dark {
    background-color: white!important;
}
/* 네비바 글자색 */
.navbar-dark .navbar-nav .nav-link {
    color: black;
}
/* 네비바 hover색 */
.navbar-dark .navbar-nav .nav-link:focus, .navbar-dark .navbar-nav .nav-link:hover {
    color: #eee!important;
}
/* 네비바 가운데 정렬 */
.navbar-expand-sm {
    justify-content:center!important;
}


dl, ol, ul {
    margin-top: 0;
    margin-bottom: 0;
}

.navbar-nav2 dl, ol, ul {
    margin-left: 200px;
}

.bg-dark {
    background-color: #fff!important;
}


.dropdown-item {
    display: block;
    width: 100%;
    padding: .25rem 1.5rem;
    clear: both;
    font-weight: 400;
    color: #212529!important;
    text-align: inherit;
    white-space: nowrap;
    background-color: transparent;
    border: 0;
}

.fixed-top {
    position: fixed;
    top: 0;
    right: 0;
    left: 0;
    z-index: 1030;
}



/* 메인css */

nav { width:100%;height:100px; text-align:center;top:0;left:0;}
header {height:auto; background:white; padding-top: 0;}
main {flex: 1 1 100%;height:auto; background:white;}
footer{flex: 1 1 100%;height:auto;text-align:center;background:white;}
.all {
    display: flex;
    flex-flow: row wrap;
    min-width: 100px;
    flex-direction: column;
}


/* 제목아래 라인 */
#homecontent h5 {
    border-bottom: 2px solid #eee;
    font-size: 14pt;
    text-align: center;
    padding: 5px 0 5px 0;
    font-family: inherit;
    background-color: #eee;
}

.readmore{
	color: #747580
}

@media (min-width: 768px)
.col-md-4 {
    -webkit-box-flex: 0;
    -ms-flex: 0 0 30%;
    /* flex: 30%; */
    max-width: 30%;
}


p{
	font-size: 11pt;
    padding-top: 15px;
}

#homecontent .fl_right {
    display: contents;
    float: right;
    width: 500px;
}

#homecontent .fl_right img {
    float: left;
    width: 200px;
    height: 100px;
    margin: 0 10px 0 0;
}

#homecontent .fl_right li {
    display: block;
    width: 500px;
    margin: 0;
    padding: 0;
    margin-bottom: 10px;
}

#homecontent img {
    padding: 0px;
}

/* 검색css */
.form-control-borderless {
        border: none;
      }

 .form-control-borderless:hover, .form-control-borderless:active, .form-control-borderless:focus {
   border: none;
   outline: none;
   box-shadow: none;
 }

 .card-body1 {
   padding-bottom: 12px;
   padding-top: 12px;
   padding-right: 12px;
   padding-left: 12px;
   background: #2186eb!important;
 }

 .src_fild {
   border-radius: 0;
 }

 .src_btn {
   line-height: 0.5;
   height: 38px;
   border-radius: 0;
 }

 .btn-success {
color: #fff;
background-color: #2186eb;
border-color: #2186eb;
}

.navbar-brand {
    display: flex;
}

.container {
    width: 100%;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}

.containerpagenumber {
	width : 920px;
	height : 50px;
}

.logoarea {
	clear: both;
}

.navbar-nav{
	background-color: #fff;
}

.bgc{
 color: #2186eb;
 background-color: #fff;
 font-size: 12pt;

}

/* 검색 top margin */
form, fieldset, legend {
    margin-top: 20px;
    padding: 0;
    border: none;
}

/* 부트스트랩css */
@import url('https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
#team {
    background: #fff !important;
}

.btn-primary:hover,
.btn-primary:focus {
    background-color: #fff!important;
    border-color: #000;
    box-shadow: none;
    outline: none;
}

.btn-primary {
    color: #000;
    background-color: #eee;
    border-color: #eee;
}

section {
    padding: 60px 0;
}

section .section-title {
    text-align: center;
    color: #000;
    margin-bottom: 50px;
    text-transform: uppercase;
}

#team .card {
    border: none;
    background: #eee;
}

.image-flip:hover .backside,
.image-flip.hover .backside {
    -webkit-transform: rotateY(0deg);
    -moz-transform: rotateY(0deg);
    -o-transform: rotateY(0deg);
    -ms-transform: rotateY(0deg);
    transform: rotateY(0deg);
    border-radius: .25rem;
}

.image-flip:hover .frontside,
.image-flip.hover .frontside {
    -webkit-transform: rotateY(180deg);
    -moz-transform: rotateY(180deg);
    -o-transform: rotateY(180deg);
    transform: rotateY(180deg);
}

.mainflip {
    -webkit-transition: 1s;
    -webkit-transform-style: preserve-3d;
    -ms-transition: 1s;
    -moz-transition: 1s;
    -moz-transform: perspective(1000px);
    -moz-transform-style: preserve-3d;
    -ms-transform-style: preserve-3d;
    transition: 1s;
    transform-style: preserve-3d;
    position: relative;
}

.frontside {
    position: relative;
    -webkit-transform: rotateY(0deg);
    -ms-transform: rotateY(0deg);
    z-index: 2;
    margin-bottom: 30px;
}

.backside {
    position: absolute;
    top: 0;
    left: 0;
    background: white;
    -webkit-transform: rotateY(-180deg);
    -moz-transform: rotateY(-180deg);
    -o-transform: rotateY(-180deg);
    -ms-transform: rotateY(-180deg);
    transform: rotateY(-180deg);
    -webkit-box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);
    -moz-box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);
    box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);
}

.frontside,
.backside {
    -webkit-backface-visibility: hidden;
    -moz-backface-visibility: hidden;
    -ms-backface-visibility: hidden;
    backface-visibility: hidden;
    -webkit-transition: 1s;
    -webkit-transform-style: preserve-3d;
    -moz-transition: 1s;
    -moz-transform-style: preserve-3d;
    -o-transition: 1s;
    -o-transform-style: preserve-3d;
    -ms-transition: 1s;
    -ms-transform-style: preserve-3d;
    transition: 1s;
    transform-style: preserve-3d;
}

.frontside .card,
.backside .card {
    min-height: 312px;
}

.backside .card a {
    font-size: 18px;
    color: #000 !important;
}

.frontside .card .card-title,
.backside .card .card-title {
    color: #000 !important;
}

.frontside .card .card-body img {
    width: 100%;
    height: 120px;

}

.card-body {
    padding-bottom: 12px;
    padding-top: 12px;
    padding-right: 12px;
    padding-left: 12px;
    background: #eee;
     color: #000 !important;
}

/* 드롭다운 추가 */
.dropbtn {
  background-color: #2186eb;
  color: white;
  padding: 8px;
  font-size: 16px;
  border: none;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #2186eb;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #2186eb;}

/* 퀵메뉴 */
body { padding-top:20px; }
.panel-body .btn:not(.btn-block) { width:120px;margin-bottom:10px; }

.row {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    margin-right: -15px;
    margin-left: -15px;
    justify-content: center;
}

.panel-primary>.panel-heading {
    color: #fff;
    background-color: #2186EB;
    border-color: #2186EB;
}

#header, #topbar, #featured_slide, #homecontent, #breadcrumb, #container, #copyright {
    position: relative;
    margin: 0 auto;
    align-items: flex-start;
}

.panel-primary {
    border-color: #eee;
}

/* 랭킹css */
.content {
    width: 450px;
    margin: 0px auto;
}

body{
	padding-top: 100px;
}

.panel {
    margin-bottom: 20px;
    background-color: #eee;
    border: 1px solid transparent;
    border-radius: 4px;
    -webkit-box-shadow: 0 1px 1px rgb(0 0 0 / 5%);
    box-shadow: 0 1px 1px rgb(0 0 0 / 5%);
}

/* 모달 */

#login-modal {
margin-right : 450px;
}

/* 검색 */
/*search box css start here*/
.search-sec{
    padding: 2rem;
    height: 0px;
}
.search-slt{
    display: block;
    width: 100%;
    font-size: 0.875rem;
    line-height: 1.5;
    color: #55595c;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    height: calc(3rem + 2px) !important;
    border-radius:0;
}
.wrn-btn{
    width: 100%;
    font-size: 16px;
    font-weight: 400;
    text-transform: capitalize;
    height: calc(3rem + 2px) !important;
    border-radius:0;
}
@media (min-width: 992px){
    .search-sec{
        position: relative;
        top: -200px;
        background: rgb(255 255 255 / 0%);
    }
}

@media (max-width: 992px){
    .search-sec{
        background: #1A4668;
    }
}


</style>
</head>
<body>


<c:import url="../header2.jsp" charEncoding="utf-8"/>




<div style="width:1500px;height:800px;margin-top: 50px;margin-left: auto;margin-right: 0px;">

<div class="side-navigation" style="width: 200px;">
	<h2 class="skip">선배에게 질문하기 세부메뉴</h2>
	<div class="navi-top-area">
		<a href="Jobtalkwrite.do" class="btn-question qnaSpB devLoginLayer" devalert="1">질문하기</a>
			<div class="myInfoSec">
				<a href="/User/Qstn/MainProfile" class="myInfo">
					<!-- [Dev] 프로필 랜덤 이미지 파일명 : random_1 ~ random_20, 이미지 없음 : random_default -->
					<span class="proThumb">
						<img onerror="this.src='https://i.jobkorea.kr/content/images/m/ver_2/user/qna/profile_thumb/random_default.jpg'" src="https://i.jobkorea.kr/content/images/m/ver_2/user/qna/profile_thumb/random_8.jpg" alt="프로필 이미지">
					</span>
					<dl class="infoBx">
						<dt class="qnaSpA">
							<span class="nickname">${login.name }</span>
						</dt>
					</dl>
				</a>
			</div>
		</div>
	</div>


<div>

<section id="contents" style="width: 1200px;height:800px;margin-top: 0px;padding-top: 0px;padding-left: 30px;">

	<div class="tit-util">
		<h2 class="tit">취업톡톡</h2>
		<div class="page-util">
			<span class="hide-location" id="navi_1">고객센터</span>
		    <span class="hide-location" id="navi_2">고객센터 게시판</span>
		    <span class="hide-location" id="navi_3">공지사항</span>
			<!-- 기능 버튼 들어갈 예정 -->
		</div>
	</div>

	<div class="sub-visual-noline">
		<p class="img-area"><img src="static/images/img-UI-EWP-W02A01L.png" alt=""></p>
		<dl class="ml20">
			<dt><span class="font-blue2">1hara</span>의 새로운 소식!</dt>
			<dd>1hara의 새로운 소식을 알려드립니다.</dd>
		</dl>
	</div>
		<div>
			<input type="hidden" name="_csrf" value="f9429a24-06a6-4e86-9fb8-413ddf249c96">
		</div>

		<form id="empBoardSrchVO1" name="listRangeForm" action="/ntNewsData/ntMatter/retrieveNtMatterListPost.do" method="post">
			<input type="hidden" name="regDtm" value="">
			<input type="hidden" name="srch" value="">
			<input type="hidden" name="startDt" value="20200522">
			<input type="hidden" name="endDt" value="20210521">
			<input type="hidden" name="searchText" value="">
			<input type="hidden" name="jobyoung" value="">
			<input type="hidden" name="pageIndex" id="pageIndex" value="1">
			<div>
				<input type="hidden" name="_csrf" value="f9429a24-06a6-4e86-9fb8-413ddf249c96">
			</div>
		</form>

<div class="table-wrap">
	<table class="board-list" id="table" summary="이 표는 번호, 제목, 자료출처, 등록일, 조회 등 공지사항 목록에 대한 정보를 제공합니다.">
		<caption>전체질문</caption>
		<colgroup>
			<col style="width:80px;">
			<col>
			<col style="width:120px;">
			<col style="width:120px;">
			<col style="width:100px;">
		</colgroup>
		<thead>
			<tr>
				<th scope="col" style="color: black;">번호</th>
				<th scope="col" style="color: black;">제목</th>
				<th scope="col" style="color: black;">작성자</th>
				<th scope="col" style="color: black;">등록일</th>
				<th scope="col" style="color: black;">조회수</th>
			</tr>
		</thead>
	</table>
	<!-- <tr class="list_col"><th>1</th><td class="a-1"><a href="Jobtalkdetail.do?jobtalkseq=31">페이징이 될까요??안됄까요??</a></td><td>jacob</td><td>2021-06-09</td><td>5</td></tr><tr class="list_col"><th>2</th><td class="a-1"><a href="Jobtalkdetail.do?jobtalkseq=30">사장이랑 뭐하고 놀아요?/</a></td><td>jacob</td><td>2021-06-09</td><td>2</td></tr><tr class="list_col"><th>3</th><td class="a-1"><a href="Jobtalkdetail.do?jobtalkseq=29">공부가 뭐죠??</a></td><td>jacob</td><td>2021-06-09</td><td>1</td></tr><tr class="list_col"><th>4</th><td class="a-1"><a href="Jobtalkdetail.do?jobtalkseq=28">ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ</a></td><td>jacob</td><td>2021-06-09</td><td>2</td></tr><tr class="list_col"><th>5</th><td class="a-1"><a href="Jobtalkdetail.do?jobtalkseq=27">후후후후후후후후후후</a></td><td>jacob</td><td>2021-06-09</td><td>1</td></tr><tr class="list_col"><th>6</th><td class="a-1"><a href="Jobtalkdetail.do?jobtalkseq=26">돈벌고싶은데 어떤 기업이 돈제일 많이 벌어요??</a></td><td>jacob</td><td>2021-06-09</td><td>3</td></tr><tr class="list_col"><th>7</th><td class="a-1"><a href="Jobtalkdetail.do?jobtalkseq=25">쿠우쿠우</a></td><td>jacob</td><td>2021-06-09</td><td>2</td></tr><tr class="list_col"><th>8</th><td class="a-1"><a href="Jobtalkdetail.do?jobtalkseq=24">여기에 욕쓰지 말아주세요!!</a></td><td>jacob</td><td>2021-06-09</td><td>2</td></tr><tr class="list_col"><th>9</th><td class="a-1"><a href="Jobtalkdetail.do?jobtalkseq=23">뭐가좋을까요?</a></td><td>jacob</td><td>2021-06-09</td><td>1</td></tr><tr class="list_col"><th>10</th><td class="a-1"><a href="Jobtalkdetail.do?jobtalkseq=22">장난치지 마세요</a></td><td>jacob</td><td>2021-06-09</td><td>1</td></tr></table>
!-->
</div>
	<div class="btn-group center">
		<a href="Jobtalkwrite.do" class="button navy">
			질문하기
		</a>
	</div>
	<div class="containernumber">
 		<nav aria-label="Page navigation">
			<ul class="pagination" id="pagination" style="justify-content:center;"><li class="page-item first disabled"><a href="#" class="page-link"><span sria-hidden="true">«</span></a></li><li class="page-item prev disabled"><a href="#" class="page-link">이전</a></li><li class="page-item active"><a href="#" class="page-link">1</a></li><li class="page-item"><a href="#" class="page-link">2</a></li><li class="page-item next"><a href="#" class="page-link">다음</a></li><li class="page-item last"><a href="#" class="page-link"><span sria-hidden="true">»</span></a></li></ul>
		</nav>
	</div>


</section>
</div>

</div>

<c:import url="../footer.jsp" charEncoding="utf-8"/>

<script>

getJobtalkListData(0);
getJobtalkListCount();

//검색
$("#btnSearch").click(function(){
	getJobtalkListData(0);
	getJobtalkListCount();
});

function getJobtalkListData(pNumber) {
	$.ajax({
		url:"./JobtalkListData.do",
		type:"get",
		data:{ page:pNumber, choice:$("#_choice").val(), search:$("#_searchWord").val() },
		success:function( list ){
			//alert('success');
			//alert(list);
			//loadPage(count);

			$(".list_col").remove();

			$.each(list, function(i, val){

				let app ="<tr class='list_col'>"
							+ "<th>" + val.rnum  + "</th>";

							if(val.del == 0){
								app +="<td class='a-1'>"
									+"<a href='Jobtalkdetail.do?jobtalkseq=" + val.jobtalkseq +"'>" + val.jobtalk_title + "</a>"
									+"</td>"
									+"<td style='text-align:center'>" + val.memberid + "</td>"
									+"<td style='text-align:center'>" + val.wdate.substring(0,10) + "</td>"
									+"<td style='text-align:center'>" + val.jobtalk_readcount + "</td>";

							} else {
								app += "<td style='text-align:left' colspan='6'>"
										+"<font color='#ff0000'>********* 이 글은 작성자에 의해서 삭제되었습니다</font>"
										+"</td>";
							  }
							app +=  "</tr>";
							$("#table").append(app);
				});

			},
			error:function(){
				alert('error');
			}
	});
}


// 글의 총수를 취득
function getJobtalkListCount() {

	$.ajax({
		url:"./JobtalklistCount.do",
		type:"get",
		data:{ page:0, choice:$("#_choice").val(), search:$("#_searchWord").val() },
		success:function( count ){
		//	alert('success');
		//	alert(count);
			loadPage(count);
		},
		error:function(){
			alert('error');
		}
	});
}




// paging 처리
function loadPage( totalCount ) {

	let pageSize = 10;
	let nowPage = 1;

	let _totalPages = totalCount / pageSize;
	if(totalCount % pageSize > 0){
		_totalPages++;
	}

	//$("#pagination").twbsPagination('destroy'); 	// 페이지 갱신 : 페이징을 갱신해 줘야 번호가 재설정된다.

	$("#pagination").twbsPagination({
		startPage: 1,
		totalPages: _totalPages,
		visiblePages: 10,
		first:'<span sria-hidden="true">«</span>',
		prev:"이전",
		next:"다음",
		last:'<span sria-hidden="true">»</span>',
		initiateStartPageClick:false,		// onPageClick 자동 실행되지 않도록 한다
		onPageClick:function(event, page){
			nowPage = page;
			//alert('nowPage:' + page);
		  getJobtalkListData( page - 1 );
		}
	});
}

</script>

</body>
