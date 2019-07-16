<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${path}/resources/css/common.css?v=1">
<link rel="stylesheet" href="${path}/resources/css/main_common.css?v=1">
<meta charset="UTF-8">
<title>학생관리</title>
<style type="text/css">
.section_list {
	min-width: 1200px;
	width: 80%;
	margin: 0px auto;
}
.section_title {
	font-size: 20px;
	padding-left: 12px;
	position: relative;
	margin-bottom: 30px;
}
.section_bar {
	display: inline-block;
	position: absolute;
	width: 6px;
	height: 20px;
	background: #444;
	left: 0;
	top: 5px;
}
.list_box_title {
	display: flex;
	background-color: #efefef;
	border-top: 2px solid #dadada;
	border-bottom: 2px solid #dadada;
	font-weight: 600;
}
.info_line {
	text-align: center;
	border-left: 1px solid #dadada;
	padding: 8px 10px;
}
.info_line:last-child {
	border-right: 1px solid #dadada;
}
.info_num {
	flex: 1;
}
.info_lname {
	flex: 8;
}
.info_tname {
	flex: 2;
}
.info_date {
	flex: 4;
}
.info_btn {
	flex: 1.5;
}
#info_btn {
	padding: 8px 1px;
}
.list_wrap {
	position: relative;
}
.list_box_lecture {
	display: flex;
	border-bottom: 1px solid #dadada;
	background: white;
}
.list_box_lecture:last-child {
	border-bottom: 2px solid #dadada;
}
.list_box_content {
	border: 1px solid #dadada;
	border-top: 0px;
	padding: 30px;
	background: white;
	display: none;
}
.lecture_line {
	text-align: center;
	line-height: 40px;
	border-left: 1px solid #dadada;
	padding: 0px 10px;
	height: 40px;
}
.lecture_line:last-child {
	border-right: 1px solid #dadada;
}
#lecture_lname {
	text-align: left;
	box-sizing: border-box;
	transition: .2s;
}
.lecture_tname_position {
	position: absolute;
	width: 560px;
	height: 40px;
	z-index: -1;
	cursor: pointer;
	left: 89px;
	top: 0;
	display: none;
}
#lecture_lname:hover {
	cursor: pointer;
	color: #79CDCF;
}







#list_btn {
	padding: 1px;
}
#list_btn a span {
	display: inline-block;
	width: 47.5%;
	height: 37px;
	line-height: 38px;
	text-align: center;
	color: white;
	border-radius: 5px;
	transition: .2s;
}
#update_btn {
	background: #FFC000;
}
#delete_btn {
	background: #79CDCF;
}
#list_btn a span:hover {
	background: #2D314F;
}





.section_btn {
	height: 50px;
}
.insert_btn {
	float: right;
	width: 100px;
	background: #79CDCF;
	border-radius: 20px;
	padding: 7px 0px;
	text-align: center;
	color: white;
	transition: .2s;
}
.insert_btn:hover {
	background: #2D314F;
}
</style>
</head>
<body>
	<div class="content_area_wrapper">
		<%@ include file="../include/main_aside.jsp" %>
		<div class="nav_content_footer">
			<%@ include file="../include/main_nav.jsp" %>
			<div class="content_area">
				<div class="section_list">
					<div class="section_title">
						과정관리
						<span class="section_bar"></span>
					</div>
					<div class="section_btn">
						<a href="${path}/mainlecture/insert">
							<div class="insert_btn">강좌등록</div>
						</a>
					</div>
					<div class="list_box">
						<div class="list_box_title">
							<div class="info_line info_num">No.</div>
							<div class="info_line info_lname">강좌명</div>
							<div class="info_line info_tname">담당 선생님</div>
							<div class="info_line info_date">강좌기간</div>
							<div class="info_line info_btn" id="info_btn">비고</div>
						</div>
						<c:forEach items="${list}" var="list" varStatus="status">
						<div class="list_wrap">
							<div class="list_box_lecture" id="list_box_lecture" data-index="${status.index}">
								<div class="lecture_line info_num lecture_num">${list.lno}</div>
								<a class="lecture_line info_lname lecture_lname" id="lecture_lname">${list.lname}</a>
								<div class="lecture_line info_tname lecture_tname">${list.tname}</div>
								<div class="lecture_line info_date lecture_date">${list.startdate}~</div>
								<div class="lecture_line info_btn" id="list_btn">
									<a><span id="update_btn">수정</span></a>
									<a><span id="delete_btn">삭제</span></a>
								</div>
							</div>
							<div class="list_box_content">
								efsdfsadfsdaf
							</div>
							<div class="lecture_tname_position"></div>
						</div>
						</c:forEach>
					</div>
				</div>
			</div>
			
		<%@ include file="../include/main_footer.jsp" %>
		</div>
	</div>
	<script type="text/javascript">
		$(function(){
			$('.list_box_lecture').click(function(){
				$(this).next().css("display", "block");
				$(this).css("background", "#efefef");
				$(this).next().next().css("display", "block")
										.css("z-index", "5");
			});
			$('.lecture_tname_position').click(function(){
				$(this).prev().css("display", "none");
				$(this).prev().prev().css("background", "white");
				$(this).css("display", "block")
						.css("z-index", "-1");
			});
			
			
			$('#searchbtnArea').click(function(){
				var search_option = $('#selsearch').val();
				var keyword = $.trim($('#search_board').val());
				
				if(keyword == null || keyword.length == 0){
					$('#search_board').focus();
					$('#search_board').css('border','2px solid #79CDCF');
					 // 검색 시 페이지네이션이 밑으로 밀리는 현상 방지 
					$('#dataTable_paginate').css('bottom','1rem');
					return false;
				}
			});
		});
		
	</script>
</body>
</html>
