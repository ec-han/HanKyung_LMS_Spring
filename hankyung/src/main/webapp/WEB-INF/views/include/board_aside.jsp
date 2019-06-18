<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
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
			<li class="nav_item">
				<a class="nav_link collapsed" id="collapseCourse_parent" href="#">
				  <i class="fas fa-fw fa-cog"></i>
				  <span>과정 관리</span>
				</a>
				<div class="collapse_inner rounded collapse" id="collapseCourse">
					<h6 class="collapse_header">과정 정보</h6>
					<a class="collapse_item" href="#">공지사항</a>
					<a class="collapse_item" href="#">수업 계획표</a>
					<a class="collapse_item" href="#">Q&A</a>
				</div>
			</li>
			<li class="nav_item">
				<a class="nav_link collapsed" id="collapseTeacher_parent" href="#">
				  <i class="fas fa-fw fa-wrench"></i>
				  <span>학생 관리</span>
				</a>
				<div class="collapse_inner rounded collapse" id="collapseTeacher">
					<h6 class="collapse_header">학생 조회</h6>
					<a class="collapse_item" href="#">과정조회</a>
					<a class="collapse_item" href="#">학생조회</a>
					<a class="collapse_item" href="#">성적관리</a>
					<a class="collapse_item" href="#">상담일지</a>
				</div>
			</li>
			<!-- Divider -->
	        <hr class="sidebar_divider">
	        <!-- Heading -->
	        <div class="sidebar_heading">
				학생
	        </div>
			<li class="nav_item">
				<a class="nav_link collapsed" id="collapseStudents_parent" href="#">
				  <i class="fas fa-fw fa-cog"></i>
				  <span>수강 과정</span>
				</a>
				<div class="collapse_inner rounded collapse" id="collapseStudents">
					<h6 class="collapse_header">학습방</h6>
					<a class="collapse_item" href="#">출결 조회</a>
					<a class="collapse_item" href="#">성적 조회</a>
				</div>
			</li>
			<!-- Divider -->
			<hr class="sidebar_divider">
			<!-- Heading -->
			<div class="sidebar_heading">
				시스템 
			</div>
			<li class="nav_item active">
				<a class="nav_link" id="collapseUsers_parent" href="#">
				  <i class="fas fa-fw fa-folder"></i>
				  <span>환경설정</span>
				</a>
				<div class="collapse_inner rounded collapse show" id="collapseUsers">
				  <h6 class="collapse_header">회원정보 관리</h6>
				  <a class="collapse_item" href="#">회원정보 수정</a>
				  <a class="collapse_item" href="${path}/member/loss_info">아이디 및 비밀번호 찾기</a>
				  <a class="collapse_item" href="#">회원탈퇴</a>
				  <!-- <div class="collapse_divider"></div>
					<h6 class="collapse_header">Other Pages:</h6>
					<a class="collapse_item" href="#">404 Page</a> -->
				</div>  
			</li>
			<li class="nav_item active">
				<a class="nav_link" id="collapseAdmin_parent" href="#">
				  <i class="fas fa-fw fa-folder"></i>
				  <span>관리자</span>
				</a>
				<div class="collapse_inner rounded collapse show" id="collapseAdmin">
				  <a class="collapse_item" href="#">선생님 등록</a>
				  <a class="collapse_item" href="#">선생님 조회</a>
				  <div class="collapse_divider"></div>
				  <a class="collapse_item" href="#">학생 등록</a>
				  <a class="collapse_item" href="#">학생 조회</a>
				  <div class="collapse_divider"></div>
				  <a class="collapse_item" href="#">과정 등록</a>
				  <a class="collapse_item" href="#">과정 조회</a>
				  <div class="collapse_divider"></div>
				  <a class="collapse_item" href="#">전체 정보 조회</a>
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
	<script type="text/javascript">
     	 $(function(){
     		 // aside dropdown
	        $('#collapseCourse_parent').click(function(){
	            $('#collapseCourse').slideToggle('fast');   
	        });
	        $('#collapseTeacher_parent').click(function(){
	            $('#collapseTeacher').slideToggle('fast');   
	        });
			 $('#collapseStudents_parent').click(function(){
	            $('#collapseStudents').slideToggle('fast'); 
	        });
			$('#collapseUsers_parent').click(function(){
	            $('#collapseUsers').slideToggle('fast'); 
		    });
			$('#collapseAdmin_parent').click(function(){
	            $('#collapseAdmin').slideToggle('fast'); 
		    });
			
	        $('#collapseCourse_parent').focusout(function(){
	            $('#collapseCourse').css('display','none');            
	        });
	 		$('#collapseTeacher_parent').focusout(function(){
	            $('#collapseTeacher').css('display','none');            
	        });
	        $('#collapseStudents_parent').focusout(function(){
	            $('#collapseStudents').css('display','none');            
	        });
	        $('#collapseUsers_parent').focusout(function(){
	            $('#collapseUsers').css('display','none');            
	        });
			$('#collapseAdmin_parent').focusout(function(){
	            $('#collapseAdmin').css('display','none');            
	        });
			// 사이드 바 열고 닫힘
			var state = false;
			$('#sidebarToggle').click(function(){
				if(!state){
					$('#accordionSidebar').animate({left:'-120px'},300);
					$('#accordionSidebar').addClass('toggled');
					$('.nav_content_footer').css('padding-left','0');
					$('.sidebar_brand-text').text("");
					$('.sidebar_brand-icon').css('margin-left','45px');
					$('.collapse_inner').addClass('collapse_inner_toggled');
					$('#accordionSidebar .nav_item').css('height','50px');
				    $('#sidebarToggle').html('<i class="fas fa-angle-right"></i>');
				    
					state=true;
				} else {
					$('#accordionSidebar').removeClass('toggled');
					$('#accordionSidebar').animate({left:'0px'},300);
					$('.nav_content_footer').css('padding-left','0');
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