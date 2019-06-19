<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${path}/resources/css/common.css?v=1">
<link rel="stylesheet" href="${path}/resources/css/board_common.css?v=1">
<meta charset="UTF-8">
<title>샘플페이지</title>
<style type="text/css">
#test { /* 복사할 필요 없음  */
	display: flex;
	flex-direction: column;
}

</style>
</head>
<body>
	<div class="big_wrapper">
		<%@ include file="../include/main_aside.jsp" %>
		<div class="content_wrapper">
			<%@ include file="../include/main_nav.jsp" %>
			<div class="container">
				<div class="container_box" id="test">
			<!-- 본문 내용에 따라 바뀔 곳 시작 : body라 생각하면 됨  -->
					<h1 class="">내용이 들어올 곳</h1>
					<div class="flex_test">1</div>
					<div class="flex_test">2</div>
					<div class="flex_test">3</div>
					<div class="flex_test">4</div>
					<div class="flex_test">5</div>
					<div class="flex_test">6</div>
					<div class="flex_test">7</div>
					<div class="flex_test">8</div>
					<div class="flex_test">9</div>
					<div class="flex_test">10</div>
					<div class="flex_test">11</div>
			<!-- 본문 내용에 따라 바뀔 곳 끝   -->
				</div>
			</div>
			
			<%@ include file="../include/main_footer.jsp" %>
		</div>
	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(function(){
		  
		});
	</script>
</body>
</html>
