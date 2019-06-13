<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="aside_wrapper">
		<!-- Sidebar -->
		<ul class="navbar_nav" id="accordionSidebar">
			 <!-- Sidebar - Brand -->
            <div class="sidebar_brand d_flex">
	            <a class="sidebar_brand-icon" href="#">
	              <i class="fas fa-laugh-wink"></i>
	            </a>
            	<div class="sidebar_brand-text">HanKyung LMS <sup>ver 1.2</sup></div>
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
				    <!-- <h6 class="collapse_header">성적 관리</h6>
				    <a class="collapse_item" href="#">성적입력</a>
				    <a class="collapse_item" href="#">성적정정</a>
				    <a class="collapse_item" href="#">피드백</a> -->
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
	</div>
	<script type="text/javascript">
     	 $(function(){
			
			// 사이드 바 열고 닫힘
			var state = false;
			$('#sidebarToggle').click(function(){
				if(!state){
					$('.aside_wrapper').animate({left:'-240px'},300);
					$('.content_wrapper').css('padding-left','0');
					state=true;
				} else {
					$('.aside_wrapper').animate({left:'0px'},240);
					$('.content_wrapper').css('padding-left','240px');
				//  $('#sidebarToggle:after').css('content','\f105');
					state=false;
				}
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
	        $('#collapseTwo_parent').focusout(function(){
	            $('#collapseTwo').css('display','none');            
	        });
	        $('#collapseUtilities_parent').focusout(function(){
	            $('#collapseUtilities').css('display','none');            
	        });
	        $('#collapsePages_parent').focusout(function(){
	            $('#collapsePages').css('display','none');            
	        });
	        
	        
	    });
     </script>
</body>
</html>