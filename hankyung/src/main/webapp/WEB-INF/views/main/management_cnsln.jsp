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
.info_line i{
	font-size: 20px;
	line-height: 38px;
}
#yes_cnsln{
	color: green;
}
#no_cnsln{
	color : tomato;
}
.cnsln_box{
	cursor: pointer;
}
</style>
</head>
<body>
	<div class="list_box">
		<div class="list_box_header list_box_title">
			<div class="num">No.</div>
			<div class="name info_line flex_line2">이름</div>
			<div class="id info_line flex_line2">아이디</div>
			<div class="info_line flex_line3">1회차</div>
			<div class="info_line flex_line3">2회차</div>
			<div class="info_line flex_line3">3회차</div>
			<div class="info_line flex_line3">4회차</div>
			<div class="info_line flex_line3">5회차</div>
			<div class="info_line flex_line3">6회차</div>
		</div>	
		
		<c:forEach items="${list}" var="cDto" varStatus="status">
			<div class="list_box_header">
				<div class="num">
					<input id="input_num" name="num" class="info_box" value="${status.index+1}" readonly="readonly">
				</div>
				<div class="name info_line flex_line2">
					<input id="input_name" name="name" class="info_box" value="${cDto.name}" readonly="readonly">
				</div>
				<div class="id info_line flex_line2">
					<input id="input_id" name="id" class="info_box" value="${cDto.id}" readonly="readonly">
				</div>
				<div class="info_line flex_line3 cnsln_box" id="<c:out value="${empty cDto.cnsln1 ? 'no_cnsln':'yes_cnsln'}"/>">
					<c:choose>
						<c:when test="${empty cDto.cnsln1}">
							미상담
						</c:when>
						<c:otherwise>
							상담
						</c:otherwise>
					</c:choose>
				</div>
				<div class="info_line flex_line3 cnsln_box" id="<c:out value="${empty cDto.cnsln2 ? 'no_cnsln':'yes_cnsln'}"/>">
					<c:choose>
						<c:when test="${empty cDto.cnsln2}">
							미상담
						</c:when>
						<c:otherwise>
							상담
						</c:otherwise>
					</c:choose>
				</div>
				<div class="info_line flex_line3 cnsln_box" id="<c:out value="${empty cDto.cnsln3 ? 'no_cnsln':'yes_cnsln'}"/>">
					<c:choose>
						<c:when test="${empty cDto.cnsln3}">
							미상담
						</c:when>
						<c:otherwise>
							상담
						</c:otherwise>
					</c:choose>
				</div>
				<div class="info_line flex_line3 cnsln_box" id="<c:out value="${empty cDto.cnsln4 ? 'no_cnsln':'yes_cnsln'}"/>">
					<c:choose>
						<c:when test="${empty cDto.cnsln4}">
							미상담
						</c:when>
						<c:otherwise>
							상담
						</c:otherwise>
					</c:choose>
				</div>
				<div class="info_line flex_line3 cnsln_box" id="<c:out value="${empty cDto.cnsln5 ? 'no_cnsln':'yes_cnsln'}"/>">
					<c:choose>
						<c:when test="${empty cDto.cnsln5}">
							미상담
						</c:when>
						<c:otherwise>
							상담
						</c:otherwise>
					</c:choose>
				</div>
				<div class="info_line flex_line3 cnsln_box"  id="<c:out value="${empty cDto.cnsln6 ? 'no_cnsln':'yes_cnsln'}"/>">
					<c:choose>
						<c:when test="${empty cDto.cnsln6}">
							미상담
						</c:when>
						<c:otherwise>
							상담
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</c:forEach>	
	</div>		
	<script type="text/javascript">
		$(function(){		
			$('.cnsln_box').click(function(event) {
				$(this).parent().children("div").eq(0).children("input").val();
				
			});
		});
		
	</script>
</body>
</html>
