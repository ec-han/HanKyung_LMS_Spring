<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${path}/resources/css/board_common.css?v=1">
<meta charset="UTF-8">
<title>Insert title here</title>
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

</body>
</html>