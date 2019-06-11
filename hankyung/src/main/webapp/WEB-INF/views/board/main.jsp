<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${path}/resources/css/common.css?v=1">
<meta charset="UTF-8">
<title>한은체: LMS 메인</title>
<style type="text/css">
*,
*::before,
*::after {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}
.text_center{
	text-align: center;
}
sup { /* 첨자 텍스트 */
    vertical-align: super;
    font-size: smaller;
    text-transform: lowercase;
}
.fa, .fab, .fal, .far, .fas {
    -moz-osx-font-smoothing: grayscale;
    -webkit-font-smoothing: antialiased;
    display: inline-block;
    font-style: normal;
    font-variant: normal;
    text-rendering: auto;
    line-height: 1;
}
.d_flex{
	display: flex;
}

.page_container {
    
}
#big_wrapper {
width: 100%;
    height: auto;
    margin: 0px auto;
    background-color: #F8F9FC;
    position: absolute;
    top: 0;
    left: 0;
}
#content_wrapper {
    flex-direction: column;
   /*  width: 1279.2px;
    height: auto;
    overflow-x: hidden!important;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    flex-direction: column!important; */
   /*  width: 1296px;
    height: 100%;
    position: absolute;
    top: 0;
    left: 240px; */
}
#content {
    order: 2;
    position: absolute;
    top: 4.375rem;
    left: 15rem;
    min-width: 1296px;
    padding: 24px 24px;
    min-height: auto;
}
/* sidebar */
.navbar_nav {
    padding-left: 0;
    margin-bottom: 0;
    list-style: none;
}
#accordionSidebar {
    display: inline-block;
    background-color: #404988;
    background-image: linear-gradient(180deg,#404988 10%,#2D314F 100%);
    background-size: cover;
    color: white;
    width: 240px;
    position: relative;
    left: 0;
    top: 0;
    min-height: 100vh;
    font-size: 14px;
    justify-content: center;
    align-items: center;
}
.sidebar_divider{
    border-top: 1px solid rgba(255,255,255,.15);
    margin: 0 1rem 1rem;
}
#sidebar_divider_0{
    margin-bottom: 0;
}
.sidebar_heading{
    padding: 0 1rem;
    font-weight: 800;
    font-size: .75rem;
    color: white;
}
.sidebar_brand {
    height: 4.375rem;
    text-decoration: none;
    font-size: 1rem;
    font-weight: 800;
    padding: 1.5rem 1rem;
    text-align: center;
    text-transform: uppercase;
    letter-spacing: .05rem;
    z-index: 1;
}
.sidebar_brand-text {
    display: inline;
    color: white;
    margin-left: 1rem;
    margin-right: 1rem;
}
.sidebar_brand-icon{
    font-size: 2rem;
}
.sidebar_brand-icon > i {
    color: white;
}
#accordionSidebar .nav_link {
    display: block;
    width: 100%;
    text-align: left;
    padding: 1rem;
    width: 14rem;
}
#accordionSidebar .nav_link > span{
    color: rgba(255,255,255,.8);
}
#accordionSidebar .nav_link > span: hover{
    color: #fff;
}
#accordionSidebar .nav_link > i {
    color: rgba(255,255,255,.3);
    font-size: .75rem;
    margin-right: .25rem;
}
.collapse{
    display: none;
}
.collapse_inner{
    padding: .5rem 0;
    min-width: 10rem;
    font-size: .85rem;
    margin: 0 auto 1rem;
    background-color: #fff;
    padding-top: .5rem;
    padding-bottom: .5rem;
    width: 225px;
    height: auto;
}
.collapse_header {
    margin: 0;
    white-space: nowrap;
    padding: .5rem 1.5rem;
    text-transform: uppercase;
    font-weight: 800;
    font-size: .65rem;
    color: #b7b9cc;
}
.collapse_item {
    padding: .5rem 1rem;
    margin: 0 .5rem;
    display: block;
    color: #3a3b45;
    text-decoration: none;
    border-radius: .35rem;
    white-space: nowrap;
}
.collapse_item:hover {
    background-color: #f4f7ff;
    /* #eaecf4 */
}
.rounded{
    border-radius: .35rem;
}
#sidebarToggle{
    background-color: rgba(255,255,255,.2);
    width: 30px;
    height: 30px;
    text-align: center;
    margin-bottom: 1rem;
    cursor: pointer;
    border-radius: 50%;
    border: none;
    outline: none;
}
#sidebarToggle:hover {
    background-color: #79CDCF;
}
#sidebarToggle:after {
    color: rgba(255,255,255,.5);
    font-weight: 900;
    content: '\f104';
    font-family: 'Font Awesome 5 Free';
    margin-right: .1rem;
}
/* footer */
#sticky_footer{
    order: 3;
    position: absolute;
    left: 240px;
    bottom: 0;
    padding: 2rem 0;
    border-top: 1px solid #b1b0c4;
    background-color: #fff;
    min-width: 1296px;
}
.footer_sns {
    text-align: center;
}
.footer_sns > a {
    font-weight: bold;
}
/* nav */
#topNav {
	order: 1;
    position: absolute;
    display: inline-block;
    top: 0;
    left: 15rem;
    min-width: 1296px;
    height: 4.375rem;
    background-color: #fff;
    background-size: cover;
    border-bottom: 1px solid #b1b0c4;
} 
.navbar_expand {
    -webkit-box-orient: horizontal;
    -webkit-box-direction: normal;
    -ms-flex-flow: row nowrap;
    flex-flow: row nowrap;
    -webkit-box-pack: start;
    -ms-flex-pack: start;
    justify-content: flex-start;
}
.navbar{
    position: relative;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    padding: .5rem 1rem;
}
#searchArea{
    width: 200px;
    height: auto;
    font-size: 20px;
    color: black;
    position: absolute;
    top: 0;
}
#searchBar {
    width: 250px;
    height: 40px;
    font-weight: 400;
    line-height: 1.5;
    color: #6e707e;
    background-color: #f8f9fc;
    border: 1px solid #555;
    position: relative;
    top: 15px;
    outline: none;
} 
#searchbtnArea{
    width: 40px;
    height: 40px;
    background-color: #404988;
    display: inline-block;
    border: 1px solid #555;
    position: absolute;
    top: 15px;
    left: 250px;
    cursor: pointer;
    outline: none;
}
#search_btn{
    color: #d1d3e2;
}
#topNav .navbar_nav{
    -webkit-box-orient: horizontal;
    -webkit-box-direction: normal;
}
#topNav .navbar_nav .nav_item {
    display: inline-block;
    position: relative;
    top: -8px;
    left: 1050px;
}
#topNav i {
    font-size: 18px;
}
#usersDropdown span {
    color: #858796;
}
#usersDropdown > .fa-user {
    padding-left: 10px;
}
.dropdown{
    position: relative;
}
#topNav .navbar_nav .nav_item .nav_link {
    color: #d1d3e2;
    white-space: nowrap;
    position: relative;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
	padding: 0px .75rem 0px;
    height: 4.375rem;
}
#topNav .dropdown_menu {
    position: absolute;
    top: 100%;
    right: -15%;
    z-index: 1000;
    min-width: 10rem;
    margin: .125rem 0 0;
    color: #858796;
    text-align: left;
    list-style: none;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #e3e6f0;
    border-radius: .35rem;
    overflow: hidden;
    display: none;
}
.alert_border{
    border-bottom: 1px solid #e3e6f0;
}
.message_border{
    border-bottom: 1px solid #e3e6f0;
}
#dropdown_menu_right {
    left: -60px;
}
#dropdown_menu_right a {
    display: block;
    font-size: 12px;
    color: #333;
}
#dropdown_menu_right > a > i {
    padding-right: 20px;
    color: #d1d3e2;
}
.dropdown {
    position: relative;
    margin-left: .25rem;
    margin-right: .25rem;
}
.dropdown_menu {
    position: relative;
    right: 0;
    font-size: .85rem;
    float: none;
}
.dropdown_list {
    padding: 0;
    border: none;
    width: 20rem;
}
.dropdown_header {
    background-color: #404988;
    border: 1px solid #404988;
    border-radius: .35rem .35rem 0 0;
    padding-top: .75rem;
    padding-bottom: .75rem;
    color: #fff;
    font-weight: 800;
    font-size: .65rem;
    margin: 0;
    padding-left: 10px;
}
.dropdown_item {
    white-space: normal;
    padding-top: .5rem;
    padding-bottom: .5rem;
    line-height: 1.3rem;
    width: 100%;
    padding: .25rem 1.5rem;
    clear: both;
    font-weight: 400;
    color: #3a3b45;
    text-align: inherit;
    background-color: transparent;
    transition: background-color 0.3s;
}
.dropdown_item:hover {
    color: #2e2f37;
    text-decoration: none;
    background-color: #f4f7ff;
    /* #e9eeff #f8f9fc */
}
.font_weight_bold {
    font-weight: 600;
}
.text_truncate {
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    max-width: 13.375rem;
}
.small {
    font-size: 11px;
    font-weight: 300;
    color: #333333;
}
.icon_circle > i {
    font-size: 18px;
    color: white;
}
.icon_circle {
    height: 2.5rem;
    width: 2.5rem;
    border-radius: 100%;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
}
.bg_primary {
    background-color: #2D314F;
}
.bg_success {
    background-color: #FFC000;
}
.item_area{
    padding-left: 15px;
    padding-top: 10px;
    padding-bottom: 10px;
}
#topNav .dropdown_item i {
    font-size: 13px;
}
.align_items_center {
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
}
.more_info {
    display: block;
}
.d_flex {
    display: flex;
}
.topbar_divider {
    display: inline-block;
    width: 0;
    border-right: 1px solid #e3e6f0;
    height: calc(4.375rem - 2rem);
    margin: 7px 0 7px;
    position: absolute;
    left: 1170px;    
}
.dropdown_divider {
    height: 0;
    margin: .1rem 0;
    overflow: hidden;
    border-top: 1px solid #eaecf4;
}
.badge {
    position: absolute;
    transform-origin: top right;
    left: 25px;
    margin-top: -.55rem;
    color: #fff;
    background-color: #79CDCF; /*#e74a3b*/
    display: inline-block;
    /*padding: .20em .2em;*/
    padding: 3px;
    font-size: 75%;
    font-weight: 700;
    line-height: 1;
    text-align: center;
    white-space: nowrap;
    vertical-align: baseline;
    border-radius: .35rem;
}
/* top 버튼 */
#topBtn {
	position: fixed;
    bottom: -113px;
    right: -90px;
    font-size: 25px;
    width: 180px;
    height: 180px;
    /* background: #404988; */
    /*background: linear-gradient(20deg, #217dfd 0%, #404988 100%);*/
    background-image: linear-gradient(180deg,#404988 10%,#2D314F 100%);
    opacity: 0.7;
    color: white;
	border: 3px dashed #eaecf4;	
    cursor: pointer;
    outline: none;
    display: none;
    text-align: center;
    transition: 0.5s;
    transform: rotate(315deg);
}
#topBtn span {
    position: relative;
    left: 17.5px;
}
#topBtn:hover {
	opacity: 1;
}
#topBtn:hover span {
	transform: scale(1.3);
	font-weight: bold;
}
</style>
</head>
<body>
	<!-- Page Wrapper -->
	<div id="big_wrapper">
		<!-- Sidebar -->
		<ul class="navbar_nav" id="accordionSidebar">
			 <!-- Sidebar - Brand -->
            <div class="sidebar_brand d_flex">
	            <a class="sidebar_brand-icon" href="#">
	              <i class="fas fa-laugh-wink"></i>
	            </a>
            	<div class="sidebar_brand-text">HanKyung LMS <sup>ver.1</sup></div>
          	</div>
          	<!-- Divider -->
          	<hr class="sidebar_divider" id="sidebar_divider_0">
          	<!-- Nav Item - Dashboard -->
            <li class="nav_item">
            	<a class="nav_link" href="#">
              	<i class="fas fa-fw fa-tachometer-alt"></i>
             	 <span>HOME</span></a>
            </li>
	        <!-- Divider -->
	        <hr class="sidebar_divider">
	        <!-- Heading -->
	        <div class="sidebar_heading">
	            선생님
	        </div>
            <!-- Nav Item - Pages Collapse Menu -->
			<li class="nav_item">
				<a class="nav_link collapsed" id="collapseTwo_parent" href="#">
				  <i class="fas fa-fw fa-cog"></i>
				  <span>강의 관리</span>
				</a>
				<div id="collapseTwo" class="collapse">
				  <div class="collapse_inner rounded">
				    <h6 class="collapse_header">강의 정보</h6>
				    <a class="collapse_item" href="#">공지사항</a>
				    <a class="collapse_item" href="#">수업 계획표</a>
				    <a class="collapse_item" href="#">Q&A</a>
				  </div>
				</div>
			</li>
			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav_item">
				<a class="nav_link collapsed" id="collapseUtilities_parent" href="#">
				  <i class="fas fa-fw fa-wrench"></i>
				  <span>학생 관리</span>
				</a>
				<div id="collapseUtilities" class="collapse">
				  <div class="collapse_inner rounded">
				    <h6 class="collapse_header">학생 조회</h6>
				    <a class="collapse_item" href="#">학생정보</a>
				    <a class="collapse_item" href="#">출결조회</a>
				    <a class="collapse_item" href="#">성적조회</a>
				    <a class="collapse_item" href="#">상담일지</a>
				    <h6 class="collapse_header">성적 관리</h6>
				    <a class="collapse_item" href="#">성적입력</a>
				    <a class="collapse_item" href="#">성적정정</a>
				    <a class="collapse_item" href="#">피드백</a>
				  </div>
				</div>
			</li>
			<!-- Divider -->
			<hr class="sidebar_divider">
			<!-- Heading -->
			<div class="sidebar_heading">
			   시스템 
			</div>
			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav_item active">
				<a class="nav_link" id="collapsePages_parent" href="#">
				  <i class="fas fa-fw fa-folder"></i>
				  <span>환경설정</span>
				</a>
				<div id="collapsePages" class="collapse show">
				  <!--<div class="collapse_inner rounded">
				    <h6 class="collapse_header">Login Screens:</h6>
				    <a class="collapse_item" href="#">Login</a>
				    <a class="collapse_item" href="#">Register</a>
				    <a class="collapse_item" href="#">Forgot Password</a>
				    <div class="collapse_divider"></div>
				    <h6 class="collapse_header">Other Pages:</h6>
				    <a class="collapse_item" href="#">404 Page</a>
				  </div>  -->
				</div>
			</li>
			<!-- Divider -->
			<hr class="sidebar_divider">
			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text_center">
				<button id="sidebarToggle"></button>
			</div>
		</ul>
		<!-- End of Sidebar -->
		<!-- Content Wrapper -->
		<div id="content_wrapper" class="d_flex">
		    <!-- Topbar Navbar -->
		    <nav id="topNav" class="navbar topbar navbar_expand">
		        <ul class="navbar_nav">
		        <!-- Nav Item - Alerts -->
			        <li class="nav_item">
				        <a class="nav_link" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				           <i class="fas fa-bell fa-fw"></i>
				           <!-- Counter - Alerts -->
				           <span class="badge">3+</span>
				        </a>
				        <!-- Dropdown - Alerts -->
				        <div class="dropdown_list dropdown_menu" id="dropbox_alert" aria-labelledby="alertsDropdown">
					        <h6 class="dropdown_header">
					            알림
					        </h6>
				            <a class="dropdown_item d_flex align_items_center alert_border" href="#">
					            <div class="mr_3">
					              <div class="icon_circle bg_primary">
					                <i class="fas fa-file-alt text_white"></i>
					              </div>
					            </div>
					            <div class="item_area">
					              <div class="small">December 12, 2019</div>
					              <span class="font_weight_bold">다음주 시험이 있습니다.</span>
					            </div>
				            </a>
				            <a class="dropdown_item d_flex align_items_center alert_border" href="#">
					            <div class="mr_3">
					              <div class="icon_circle bg_success">
					                <i class="fas fa-donate text_white"></i>
					              </div>
					            </div>
					            <div class="item_area">
					              <div class="small">December 7, 2019</div>
					                  자동결제를 원하시면 계좌를 연동해주세요.
					            </div>
				            </a>
				            <a class="dropdown_item text_center small more_info" href="#">알림 더 읽어오기</a>
				        </div>
			        </li>
		    
					<!-- Nav Item - Messages -->
					<li class="nav_item">
						<a class="nav_link" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						  <i class="fas fa-envelope fa-fw"></i>
						  <!-- Counter - Messages -->
						  <span class="badge">7</span>
						</a>
						<!-- Dropdown - Messages -->
						<div class="dropdown_list dropdown_menu" id="dropbox_msg" aria-labelledby="messagesDropdown">
						  <h6 class="dropdown_header">
						           쪽지
						  </h6>
						  <a class="dropdown_item d_flex align_items_center message_border" href="#">
						    <div class="dropdown_list-image mr_3">
						      <div class="status-indicator bg_success"></div>
						    </div>
						    <div class="font_weight_bold">
						      <div class="text_truncate">수업을 듣다 이해가 어려운 부분이 있으면 언제든지 물어보세요 ^^</div>
						      <div class="small">최철웅 선생님 · 58m</div>
						    </div>
						  </a>
						  <a class="dropdown_item text_center small more_info" href="#">쪽지 더 읽어오기</a>
						</div>
					</li>
		      		<div class="topbar_divider d-none d-sm-block"></div>
					<!-- Nav Item - User Information -->
					<li class="nav_item dropdown no-arrow">
						<a class="nav_link" href="#" id="usersDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						    <span>한은체</span>
						     <i class="fas fa-user"></i>
						</a>
						<!-- Dropdown - User Information -->
						<div class="dropdown_menu" id="dropdown_menu_right" aria-labelledby="userDropdown">
						    <a class="dropdown_item" href="#">
						    	<i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
						             내 프로필
						    </a>
						  	<a class="dropdown_item" href="#">
						    	<i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
						            설정 
						  	</a>
						  	<a class="dropdown_item" href="#">
						    	<i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
						            활동기록
						  	</a>
						  	<div class="dropdown_divider"></div>
						  	<a class="dropdown_item" href="#" data-toggle="modal" data-target="#logoutModal">
						    	<i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
						            로그아웃
						  	</a>
						</div>
					</li>
			        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
					<li>
					    <div id="searchArea">
						    <form class="search_form" id="search_frm" name="search_frm" method="GET" action="">
						        <input type="search" id="searchBar" name="searchBar" placeholder="검색">
						        <button type="button" id="searchbtnArea"><i class="fas fa-search" id="search_btn"></i></button>
						    </form>
						</div>
					</li>
		        </ul>
		    </nav>
		    <!-- End of Topbar -->
		  
			<div id="content">
				<div class="page_container">
					<h1 class="">Blank Page</h1>
				</div>
			</div>
			<div class="footer"  id="sticky_footer">
				<div class="copyright text_center">
					<span>Copyright &copy; HanKyung LMS 2019</span>
				</div>
				<div class="footer_sns">
					<a href="https://www.instagram.com/" target="_blank" class="sns_btn">
						<i class="fab fa-instagram"></i>
					</a>
					<a href="https://www.facebook.com/" target="_blank" class="sns_btn">
						<i class="fab fa-facebook"></i>
					</a>
					<a href="https://twitter.com/?lang=ko" class="sns_btn"><i class="fab fa-twitter"></i></a>
					<a href="https://www.google.com/" class="sns_btn"><i class="fab fa-google"></i></a>
					<a href="https://line.me/ko/" class="sns_btn"><i class="fab fa-line"></i></a>
				</div>
			</div>
		</div>
	</div>
 	<!-- Scroll to Top Button-->
	<a id="topBtn" href="#">
		<span>TOP</span>
	  <!-- <i class="fas fa-caret-up"></i> -->
	</a>
	
	<script type="text/javascript">
	    $(function(){
			$(window).scroll(function(){
				var scrollValue = $(this).scrollTop();
				if(scrollValue > 40){
					$('#topBtn').fadeIn();
				} else {
					$('#topBtn').fadeOut();
				}
			});
			$('#topBtn').click(function(){
				$('html,body').animate({scrollTop:0},150);
			});
			// 사이드 바 열고 닫힘
			var state = false;
			$('#sidebarToggle').click(function(){
				if(!state){
					$('#accordionSidebar').animate({left:'-240px'},240);
					$('#big_wrapper').animate({left:'-240px'},240); 
					// nav content footer 크게 싸는 div
				//	$('.close_btn').html('<i class="fas fa-angle-right"></i>'); 확장하면 아이콘 바꾸기 
					state=true;
				} else {
					$('#accordionSidebar').animate({left:'0px'},240);
				//	$('.content_wrap').css('padding-left','300px');
				//	$('.close_btn').html('<i class="fas fa-angle-left"></i>');
					state=false;
				}
			});
	        /*$('#sidebarToggle').click(function(){
	            $('#accordionSidebar').css('width','6.5rem').css('overflow','visible');
	            $('.collapse_item').text('');
	            $('.collapse_header').text('');
	            $('.sidebar_brand-text').css('display','none');
	            $('#accordionSidebar .nav_link > span').css('display','none');
	            $('.sidebar_heading').css('display','none');
	        });*/
	
			// nav dropdown
	        $('#messagesDropdown').click(function(){
	            $('#dropbox_msg').slideToggle('fast');                
	        });
	        $('#alertsDropdown').click(function(){
	            $('#dropbox_alert').slideToggle('fast');           
	        });
	        $('#usersDropdown').click(function(){
	            $('#dropdown_menu_right').slideToggle('fast');               
	        });
 			$('#alertsDropdown').focusout(function(){
	            $('#dropbox_alert').css('display','none');                
	        });
			$('#messagesDropdown').focusout(function(){
				$('#dropbox_msg').css('display','none');            
		    });
	        $('#usersDropdown').focusout(function(){
	            $('#dropdown_menu_right').css('display','none');                
	        }); 
	        // aside dropdown
	        $('#collapseTwo_parent').click(function(){
	            $('#collapseTwo').slideToggle(500);   
	        });
	        $('#collapseUtilities_parent').click(function(){
	            $('#collapseUtilities').slideToggle(500);   
	        });
	        $('#collapsePages_parent').click(function(){
	            $('#collapsePages').slideToggle(500); 
	        });
	       /*  $('#collapseTwo_parent').focusout(function(){
	            $('#collapseTwo').css('display','none');            
	        });
	        $('#collapseUtilities_parent').focusout(function(){
	            $('#collapseUtilities').css('display','none');            
	        });
	        $('#collapsePages_parent').focusout(function(){
	            $('#collapsePages').css('display','none');            
	        }); */
	        
	        
	    });
	    
	</script>
</body>
</html>
