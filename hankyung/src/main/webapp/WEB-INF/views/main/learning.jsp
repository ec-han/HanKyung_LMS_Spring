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
<title>학습방</title>
<style type="text/css">

.list_box{
	background-color:white;
	margin : 0 auto;
	width: 90%;
	height: 150px;
	display: flex;
	border-bottom:1px solid #c7c7c7;
}
.list_left_box{
	padding:10px;
	border-right:1px solid #c7c7c7;
	flex:8;
}
.list_right_box{
	flex:2;
}

.list_title{
	font-size: 20px;
	font-weight: 500;

}
.time_box{
	margin: 10px 0;
	display: inline-block;
	width: 80px;
	color: #ababab;
}
.time_text{
	width: 130px;
	display: inline-block;
}
.list_num{
	font-size : 25px; 
	text-align: center;
	margin : 20px 0;
}
.study_btn{
	margin : 0 auto;
	width : 80%; 
	height : 50px;
	line-height : 50px;
	font-size : 15px;
	text-align : center;
	background-color : #505050;
	color: white;
}

</style>
</head>
<body>

	<div class="content_area_wrapper">
		<%@ include file="../include/main_aside.jsp" %>
		<div class="nav_content_footer">
			<%@ include file="../include/main_nav.jsp" %>
			<div class="content_area">
				
	          	<div class="list_box">
	          		<div class="list_left_box">
	          			<div class="list_title">명함 활용능력을 높이는 4가지 비결</div>
	          			<div class="list_time">
	          			<span class="time_box">수업시간 : </span><span class="study_time time_text">50분</span>
	          			<span class="time_box">수업기간 : </span><span class="study_day  time_text">03/04 ~ 02/21</span>
	          			<span class="time_box">복습기간 : </span><span class="study_review  time_text"> ~ </span>
	          				
	          			</div>
	          			<div class="list_content">
	          				수업내용 : 
	          			</div>
	          			<div class="list_goal">
	          				수업목표 : 
	          			</div>
	          		</div>
	          		<div class="list_right_box">
	          			<div class="list_num">1강</div>
	          			<div class="study_btn">수업보기</div>
	          		</div>
	          	</div>
	          	
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
