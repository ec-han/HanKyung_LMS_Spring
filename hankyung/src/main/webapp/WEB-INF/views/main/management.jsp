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
.content_area{
	background-color: #F8F9FC;
}
.container_box{
	border:1px solid black;
	height: 500px;
}
.container_header{
	margin: 0 auto;
	width: 80%;
	height: 64px;
	border: 2px solid lightgray;
	border-bottom:0px;
	padding: 16px 20px;
	font-size: 20px;
}
.student{
	display:inline-block;
	width: 100px;
	border-right:1px dashed gray;
	text-align: center;
}
.list_box{
	margin: 0 auto;
	width: 80%;
	border: 2px solid lightgray;
	border-bottom: 0px;
}
.list_box_header{
	display: flex;
	background-color: white;
}
.list_box_header > div{
	text-align: center;
	height: 40px;
	line-height: 40px;
	color: gray;
	font-size: 15px;
	font-weight: 800px;
}
.info_line{
	border-left: 2px solid lightgray;
	border-bottom: 2px solid lightgray;
	flex:3
}
.num{
	flex:1;
	border-bottom: 2px solid lightgray;
}
.info_box{
	border: none;
	outline: none;
	padding: 10px;
	width: 100%;
	height: 100%;
}
</style>
</head>
<body>
	<div class="content_area_wrapper">
		<%@ include file="../include/main_aside.jsp" %>
		<div class="nav_content_footer">
			<%@ include file="../include/main_nav.jsp" %>
			<div class="content_area">
				<div class="container_box">
					<div class="container_header">
						<span class="student">전체학생</span>
						<span class="student">담당 학생</span>
					</div>
					<div class="search_box">
						
					</div>
					<div class="list_box">
						<div class="list_box_header">
							<div class="num">No.</div>
							<div class="name info_line">이름</div>
							<div class="email info_line">이메일</div>
							<div class="phone info_line">전화번호</div>
							<div class="id info_line">아이디</div>
							<div class="pw info_line">비밀번호</div>
						</div>
						
						<div class="list_box_header">
							<div class="num">
								<input class="info_box" value="1">
							</div>
							<div class="name info_line">
								<input class="info_box" value="관리자">
							</div>
							<div class="email info_line">
								<input class="info_box" value="admin@naver.com">
							</div>
							<div class="phone info_line">
								<input class="info_box" value="01012341234">
							</div>
							<div class="id info_line">
								<input class="info_box" value="admin">
							</div>
							<div class="pw info_line">
								<input type="password" class="info_box" value="1234">
							</div>
						</div>						
					</div>
					
				</div>
			</div>
			<%@ include file="../include/main_footer.jsp" %>
		</div>
	</div>


	<script type="text/javascript">
		$(function(){
		   
		});
	</script>
</body>
</html>
