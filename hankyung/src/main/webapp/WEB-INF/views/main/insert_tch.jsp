<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${path}/resources/css/common.css?v=1">
<link rel="stylesheet" href="${path}/resources/css/main_common.css?v=1">
<link rel="stylesheet" href="${path}/resources/css/board_common.css?v=1">
<meta charset="UTF-8">
<title>선생님 등록</title>
<style type="text/css">
.info_container{
	margin: 100px auto;
	width: 60%;
	height: 1800px;
	border: 1px solid black;
	
}
</style>
</head>
<body>

	<div class="content_area_wrapper">
		<%@ include file="../include/main_aside.jsp" %>
		<div class="nav_content_footer">
		
			<%@ include file="../include/main_nav.jsp" %>
			<div class="content_area">
				<div class="info_container"></div>
	          
	          	
			</div>
			<%@ include file="../include/main_footer.jsp" %>
		</div>
	</div>



	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(function(){
		    $('.board_regi_btn').click(function(){
				var btype = 0;
				location.href="${path}/board/create?btype="+btype;
			});

		});
		
		$(document).on("click","#searchbtnArea", function(){
			var search_option = $('#selsearch').val();
			var keyword = $.trim($('#search_board').val());
			var btype = 0;
			
			if(keyword == null || keyword.length == 0){
				$('#search_board').focus();
				$('#search_board').css('border','1px solid rgb(183,46,154)');
				return false;
				
			}
			alert(search_option+","+keyword);
			location.href="${path}/board/list?btype="+btype+"&search_option="+search_option+"&keyword="+keyword;
		});
	</script>
</body>
</html>
