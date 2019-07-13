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

</style>
</head>
<body>
	<div class="content_area_wrapper">
		<%@ include file="../include/main_aside.jsp" %>
		<div class="nav_content_footer">
			<%@ include file="../include/main_nav.jsp" %>
			<div class="content_area">
				<table class="table table-bordered" id="classTable" width="100%" cellspacing="0">
					<tbody>
						<c:forEach items="${list}" var="list">
						<tr>
							<td>
								<ul class="result-list">
									<li>
										<div class="result-info">
											<h4 class="title">
												${list.class_title}
											</h4>
											<p class="location">
												수업시간: <span id="study-time">${list.class_time}분</span>
											</p>
											<p class="desc">
												수업내용: <span id="lecture-info">${list.class_content}</span><br> 
												수업목표: <span id="lecture-goal">${list.class_target}</span>
											</p>
										</div>
										<div class="result-price">
											<span id="lecture-no">${list.class_no}</span>강
											<a href="${path}/lecturelesson/lessonview?lno=${list.lno}&class_no=${list.class_no}" class="lecture-view-btn">
												<i class="fas fa-headphones"></i>
												<span id="lecture-view-span">수업보기</span>
											</a>
										</div>
									</li>
								</ul>
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
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
