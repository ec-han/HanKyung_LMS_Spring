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
				<div class="collapse_inner rounded collapse" id="collapseTwo">
					<h6 class="collapse_header">강의 정보</h6>
					<a class="collapse_item" href="#">공지사항</a>
					<a class="collapse_item" href="#">수업 계획표</a>
					<a class="collapse_item" href="#">Q&A</a>
				</div>
				<!-- <div id="collapseTwo" class="collapse">
				  <div class="collapse_inner rounded">
				    <h6 class="collapse_header">강의 정보</h6>
				    <a class="collapse_item" href="#">공지사항</a>
				    <a class="collapse_item" href="#">수업 계획표</a>
				    <a class="collapse_item" href="#">Q&A</a>
				  </div>
				</div> -->
			</li>
			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav_item">
				<a class="nav_link collapsed" id="collapseUtilities_parent" href="#">
				  <i class="fas fa-fw fa-wrench"></i>
				  <span>학생 관리</span>
				</a>
				<div class="collapse_inner rounded collapse" id="collapseUtilities">
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
				<div class="collapse_inner rounded collapse show" id="collapsePages">
				  <h6 class="collapse_header">Login Screens:</h6>
				  <a class="collapse_item" href="#">Login</a>
				  <a class="collapse_item" href="#">Register</a>
				  <a class="collapse_item" href="#">Forgot Password</a>
				  <!-- <div class="collapse_divider"></div>
					<h6 class="collapse_header">Other Pages:</h6>
					<a class="collapse_item" href="#">404 Page</a> -->
				</div>  
			</li>
			<!-- Divider -->
			<hr class="sidebar_divider">
			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text_center">
				<button id="sidebarToggle">
					<i class="fas fa-angle-left"></i>
				</button>
			</div>
		</ul>
		<!-- End of Sidebar -->
	</div>
	<script type="text/javascript">
     	 $(function(){
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
			// 사이드 바 열고 닫힘
			var state = false;
			$('#sidebarToggle').click(function(){
				if(!state){
					$('.aside_wrapper').animate({left:'0px'},300);
					$('.aside_wrapper').css('width','120px');
					$('.navbar_nav').addClass('toggled');
					$('.content_wrapper').css('padding-left','120px');
					$('.sidebar_brand-text').text("");
					$('.sidebar_brand-icon').css('margin-left','30px');
					$('.collapse_inner').addClass('collapse_inner_toggled');
					$('#accordionSidebar .nav_item').css('height','50px');
				    $('#sidebarToggle').html('<i class="fas fa-angle-right"></i>');
				    
					state=true;
				} else {
					$('.navbar_nav').removeClass('toggled');
					$('.aside_wrapper').css('width','240px');
					$('.aside_wrapper').animate({left:'0px'},300);
					$('.content_wrapper').css('padding-left','240px');
					$('.sidebar_brand-icon').css('margin-left','0px');
					$('.sidebar_brand-text').html("HanKyung LMS <sup>ver 1.2</sup>");
					$('.collapse_inner').removeClass('collapse_inner_toggled');
					$('#accordionSidebar .nav_item').css('height','auto');
					$('#sidebarToggle').html('<i class="fas fa-angle-left"></i>');
					state=false;
				}
			});
	        
	
	       
	        
	        
	    });
     </script>
</body>
</html>