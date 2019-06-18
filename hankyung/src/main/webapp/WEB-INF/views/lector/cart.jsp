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
		<%@ include file="../include/board_aside.jsp" %>
		<div class="content_wrapper">
			<%@ include file="../include/board_nav.jsp" %>
	
			<div class="container">
				<div class="container_box" id="test">
					<div></div>
				</div>
			</div>
			
			<%@ include file="../include/board_footer.jsp" %>
		</div>
	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(function(){
		  
		});
	</script>
</body>
</html>
