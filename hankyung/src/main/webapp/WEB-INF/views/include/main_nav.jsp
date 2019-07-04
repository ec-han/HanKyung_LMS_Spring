<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<div id="topNav" class="nav">
	<nav class="navbar topbar navbar_expand">
        <ul class="navbar_nav">
        <!-- Nav Item - Alerts -->
			<!-- <li class="nav_item" id="service_item">
				<a class="nav_link" id="serviceDropdown">
				  <i class="fas fa-assistive-listening-systems"></i>
				  <i class="fas fa-headset"></i>
				</a>
		        Dropdown - Alerts
		        <div class="dropdown_list dropdown_menu" id="dropbox_service">
		            <a class="dropdown_item d_flex align_items_center service_border" href="#">
						<div class="item_area" id="collapseUsers">
							<a class="collapse_item" id="#">공지사항</a>
							<a class="collapse_item" id="#"">묻고 답하기</a>	
						</div>
		            </a>
		        </div>
	        </li>	  --> 
	        <li class="nav_item" id="alert_item">
		        <a class="nav_link" href="#" id="alertsDropdown">
		           <i class="fas fa-bell fa-fw"></i>
		           <!-- Counter - Alerts -->
		           <span class="badge">3+</span>
		        </a>
		        <!-- Dropdown - Alerts -->
		        <div class="dropdown_list dropdown_menu" id="dropbox_alert">
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
				<a class="nav_link" href="#" id="messagesDropdown">
				  <i class="fas fa-envelope fa-fw"></i>
				  <!-- Counter - Messages -->
				  <span class="badge">7</span>
				</a>
				<!-- Dropdown - Messages -->
				<div class="dropdown_list dropdown_menu" id="dropbox_msg">
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
				<a class="nav_link" href="#" id="usersDropdown">
				     <span>${sessionScope.name}</span>
				     <i class="fas fa-user"></i>
				</a>
				<!-- Dropdown - User Information -->
				<div class="dropdown_menu" id="dropdown_menu_right">
					<c:if test="${!empty sessionScope.name}">
				    <a class="dropdown_item" href="#">
				    	<i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
				             내 프로필
				    </a>
				  	<a class="dropdown_item" href="${path}/member/update">
				    	<i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
				            개인 정보 수정 
				  	</a>
				  	<a class="dropdown_item" href="#">
				    	<i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
				            활동기록
				  	</a>
				  	</c:if>
				  	<c:if test="${!empty sessionScope.name}">
				  	<div class="dropdown_divider"></div>
				  	</c:if>
				  	<c:choose>
						<c:when test="${empty sessionScope.name}">
						  	<a class="dropdown_item" id="nav_login" href="${path}/member/login">
						    	<i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
						            로그인
						  	</a>
						</c:when>
						<c:otherwise>
							<a class="dropdown_item" id="nav_logout" href="#">
						    	<i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
						            로그아웃
						  	</a>
						</c:otherwise>
				  	</c:choose>
				</div>
			</li>
	        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
			<form class="search_form" id="search_frm" name="search_frm" method="GET" action="">
		   		<!-- <div id="searchArea">
			        <input type="search" id="searchBar" name="searchBar" placeholder="검색">
			        <button type="button" id="searchbtnArea"><i class="fas fa-search" id="search_btn"></i></button>
				</div> -->
				<div class="sub_lecture_name">
					<span>${sessionScope.lDto.lname}</span>
					<div class="sub_lecture_bar"></div>
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
	$(window).resize(function(){ 
		 if($(window).width() < 750) {
		 	$('#searchArea').css('display','none');
		 } else {
			$('#searchArea').css('display','inline-block');
		 }
	 });
	$(window).scroll(function(){
		var scrollValue = $(this).scrollTop();
		if(scrollValue > 40){
			$('#topBtn').fadeIn();
		} else {
			$('#topBtn').fadeOut();
		}
	});
	$("#nav_logout").click(function(){
//		alert("로그아웃버튼 클릭");
		$.ajax({
			url: "${path}/member/logout",
			type: "get",
			success: function() {
//				alert("로그아웃 성공!!");
				location.href="${path}/";
			},
			error:function(){
				alert("System Error!!");
			}
		});
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
        /* $('#usersDropdown').focusout(function(){
            $('#dropdown_menu_right').css('display','none');                
        }); */

        
});
</script>
</body>
</html>