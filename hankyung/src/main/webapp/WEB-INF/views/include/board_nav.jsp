<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="topNav" class="nav">
	<nav class="navbar topbar navbar_expand">
        <ul class="navbar_nav">
        <!-- Nav Item - Alerts -->
	        <li class="nav_item" id="alert_item">
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
			<li class="nav_item" id="message_item">
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
      		<!-- <div class="topbar_divider d-none d-sm-block"></div> -->
			<!-- Nav Item - User Information -->
			<li class="nav_item dropdown no-arrow" id="user_item">
				<a class="nav_link" href="#" id="usersDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				    <span>${sessionScope.name}</span>
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
			<form class="search_form" id="search_frm" name="search_frm" method="GET" action="">
		   		<div id="searchArea">
			        <input type="search" id="searchBar" name="searchBar" placeholder="검색">
			        <button type="button" id="searchbtnArea"><i class="fas fa-search" id="search_btn"></i></button>
				</div>
			</form>
        </ul>
    </nav>
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
	        
	        
	    });
     </script>
</body>
</html>