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
            	<a class="nav_link" href="${path}/main/">
              	<i class="fas fa-fw fa-tachometer-alt"></i>
             	 <span>HOME</span></a>
            </li>
	        <!-- Divider -->
	        <hr class="sidebar_divider">
	        <!-- Heading -->
			<div class="sidebar_heading">
				시스템 
			</div>
			<li class="nav_item active">
				<a class="nav_link" id="collapseAdmin_parent">
				  <i class="fas fa-lock"></i>
				  <span>관리자</span>
				</a>
				<div class="collapse_inner rounded collapse show" id="collapseAdmin">
				  <h6 class="collapse_header">서비스데스크</h6>
				  <a class="collapse_item" id="notice_link_a">공지사항</a>
				  <a class="collapse_item" id="qna_link_a"">묻고 답하기</a>
				  <h6 class="collapse_header">관리</h6>
				  <a class="collapse_item" href="#">선생님 관리</a>
				  <a class="collapse_item" href="#">과정 관리</a>
				  <h6 class="collapse_header">조회</h6>
				  <a class="collapse_item" href="#">선생님 조회</a>
				  <a class="collapse_item" href="#">학생 조회</a>
				  <a class="collapse_item" href="#">과정 조회</a>
				  <a class="collapse_item" href="#">전체 정보 조회</a>
				</div>  
			</li>
			<li class="nav_item active">
				<a class="nav_link" id="collapseUsers_parent">
				  <i class="fas fa-assistive-listening-systems"></i>
				  <span>서비스데스크</span>
				</a>
				<div class="collapse_inner rounded collapse show" id="collapseUsers">
				  <a class="collapse_item" id="#">공지사항</a>
				  <a class="collapse_item" id="#"">묻고 답하기</a>	
				  <a class="collapse_item" href="${path}/member/update">회원정보 수정</a>
				  <a class="collapse_item" href="${path}/member/loss_info">아이디 및 비밀번호 찾기</a>
				</div>  
			</li>
	        <!-- Heading -->
	        <div class="sidebar_heading">
				선생님
	        </div>
			<li class="nav_item">
				<a class="nav_link collapsed" id="collapseCourse_parent">
				  <i class="fas fa-fw fa-cog"></i>
				  <span>과정 관리</span>
				</a>
				<div class="collapse_inner rounded collapse" id="collapseCourse">
					<h6 class="collapse_header">과정 정보</h6>
					<a class="collapse_item" href="#">공지사항</a>
					<a class="collapse_item" href="#">수업 계획표</a>
					<a class="collapse_item" href="#">묻고 답하기</a>
				</div>
			</li>
			<li class="nav_item">
				<a class="nav_link collapsed" id="collapseTeacher_parent">
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
				<a class="nav_link collapsed" id="collapseLectureReady_parent">
				  <i class="fas fa-power-off"></i>
				  <span>수업준비</span>
				</a>
				<div class="collapse_inner rounded collapse" id="collapseLectureReady">
					<a class="collapse_item" href="#">선생님 소개</a>
					<a class="collapse_item" href="#">수업 계획표</a>
				</div>
			</li>
			<li class="nav_item">
				<a class="nav_link collapsed" href="#">
				  <i class="fa fa-bullhorn"></i>
				  <span>공지사항</span>
				</a>
				<a class="nav_link collapsed" href="#">
				  <i class="fas fa-headphones"></i>
				  <span>학습방</span>
				</a>
				<a class="nav_link collapsed" href="#">
				  <i class="fa fa-coffee"></i>
				  <span>자유게시판</span>
				</a>
				<a class="nav_link collapsed" href="#">
				  <i class="fas fa-chart-bar"></i>
				  <span>학습현황</span>
				</a>
				<!-- Divider -->
				<hr class="sidebar_divider">
				<!-- Sidebar Toggler (Sidebar) -->
				<div class="text_center toggleBtn_div">
					<button id="sidebarToggle">
						<i class="fas fa-angle-left"></i>
					</button>
				</div>
			</li>
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
				$('.sidebar_brand-icon').css('margin-left','1rem');
				$('.sidebar_brand-icon').css('margin-right','1rem');
				$('.collapse_inner').addClass('collapse_inner_toggled');
				$('#accordionSidebar .nav_item').css('height','50px');
			    $('#sidebarToggle').html('<i class="fas fa-angle-right"></i>');
			    $('.sidebar_brand-icon').html('<img alt="파비콘 이미지" src="${path}/resources/img/pavicon02_white.png">');
				state=true;
			} else {
//				alert("else문"+state);
				$('.aside_wrap').animate({left:'0px'},300);
				$('#accordionSidebar').removeClass('toggled');
				$('.aside_wrap').removeClass('toggled');
				$('.sidebar_brand-icon').css('margin-left','0px');
				$('.sidebar_brand-icon').css('margin-right','0px');
				$('.collapse_inner').removeClass('collapse_inner_toggled');
				$('#accordionSidebar .nav_item').css('height','auto');
				$('#sidebarToggle').html('<i class="fas fa-angle-left"></i>');
				$('.sidebar_brand-icon').html('<img alt="로고 이미지" src="${path}/resources/img/logo_02_white.png">');
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
			 $('#collapseLectureReady_parent').click(function(){
	            $('#collapseLectureReady').slideToggle('fast'); 
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