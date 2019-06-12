<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>
<%@ include file="../include/board.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${path}/resources/css/common.css?v=1">
<%-- <link rel="stylesheet" href="${path}/resources/css/board_common.css?v=1"> --%>
<meta charset="UTF-8">
<title>한은체: LMS 메인</title>
<style type="text/css">
.page_container {
    position: absolute;
    top: 4.325rem;
    left: 240px;
    margin: 10px 20px 10px 30px;
}


</style>
</head>
<body>
	<div class="page_container">
		<h1 class="">내용이 들어올 곳</h1>
		<div>ONE</div>
		<div>TWO</div>
		<div>THREE</div>
		<div>FOUR</div>
		<div>FIVE</div>
		<div>SIX</div>
	</div>
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
					$('#accordionSidebar').animate({left:'-240px'},300);
					$('#big_wrapper').animate({left:'-240px'},300); 
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
