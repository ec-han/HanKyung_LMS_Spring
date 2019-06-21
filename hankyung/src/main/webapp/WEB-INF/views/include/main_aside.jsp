<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<div class="aside_wrap">
		<!-- Sidebar -->
		<ul class="navbar_nav" id="accordionSidebar">
			 <!-- Sidebar - Brand -->
            <div class="sidebar_brand d_flex">
	            <a class="sidebar_brand-icon" href="${path}/">
	            	<img alt="로고 이미지" src="${path}/resources/img/logo_02_white.png">
	            </a>
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
					<a class="collapse_item" href="#">QnA</a>
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
				</div>  
			</li>
			<li class="nav_item active">
				<a class="nav_link" id="collapseAdmin_parent" href="#">
				  <i class="fas fa-fw fa-folder"></i>
				  <span>관리자</span>
				</a>
				<div class="collapse_inner rounded collapse show" id="collapseAdmin">
				  <a class="collapse_item" id="notice_link_a">공지사항</a>
				  <a class="collapse_item" id="qna_link_a"">QnA</a>
				  <h6 class="collapse_header">등록</h6>
				  <a class="collapse_item" href="#">선생님 등록</a>
				  <a class="collapse_item" href="#">과정 등록</a>
				  <h6 class="collapse_header">조회</h6>
				  <a class="collapse_item" href="#">선생님 조회</a>
				  <a class="collapse_item" href="#">학생 조회</a>
				  <a class="collapse_item" href="#">과정 조회</a>
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
	</div>
	<script type="text/javascript">
	$(function(){
		// 사이드 바 열고 닫힘
		var state = false;
		$('#sidebarToggle').click(function(){
//			alert("클릭됨");
//			alert(state);
			if(!state){
				$('.aside_wrap').animate({left:'-120px'},300);
				$('.aside_wrap').addClass('toggled');
				$('#accordionSidebar').addClass('toggled');
				$('.nav_content_footer').css('padding-left','0');
				$('.sidebar_brand-text').text("");
				$('.sidebar_brand-icon').css('margin-left','1.8rem');
				$('.sidebar_brand-icon').css('margin-right','1.8rem');
				$('.collapse_inner').addClass('collapse_inner_toggled');
				$('#accordionSidebar .nav_item').css('height','50px');
			    $('#sidebarToggle').html('<i class="fas fa-angle-right"></i>');
			    
				state=true;
			} else {
//				alert("else문"+state);
				$('.aside_wrap').animate({left:'0px'},300);
				$('#accordionSidebar').removeClass('toggled');
				$('.aside_wrap').removeClass('toggled');
				$('.nav_content_footer').css('padding-left','0');
				$('.sidebar_brand-icon').css('margin-left','0px');
				$('.sidebar_brand-icon').css('margin-right','0px');
				$('.sidebar_brand-text').html("HanKyung LMS <sup>ver 1.2</sup>");
				$('.collapse_inner').removeClass('collapse_inner_toggled');
				$('#accordionSidebar .nav_item').css('height','auto');
				$('#sidebarToggle').html('<i class="fas fa-angle-left"></i>');
				state=false;
			}
		});
		
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
			
        
		$('.sidebar_brand').click(function(){
			location.href="${path}/";
		});
		
		$('#notice_link_a').click(function(){
			var btype = 0;
			location.href="${path}/main/list?btype="+btype;
		});
		$('#qna_link_a').click(function(){
			var btype = 1;
			location.href="${path}/main/list?btype="+btype;
		});
	});	
	</script>
</body>
</html>