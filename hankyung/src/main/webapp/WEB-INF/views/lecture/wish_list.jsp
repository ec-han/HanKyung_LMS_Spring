<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${path}/resources/css/common.css?v=1">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
    	<c:when test="${empty lDto}">
		<div class="lecture_box">
			<div class="empty_box">
			<div>
				<i class="fas fa-exclamation-circle empty_icon"></i>
			</div>
				추가된 강좌가 없습니다.
			</div>
		</div>
   		</c:when>
   		<c:otherwise>
		<c:forEach items="${lDto}" var="list">
			<div class="lecture_box">
				<div class="lecture_img_box">
					<a href="${path}/lecture/view?lno=${list.LNO}">
						<img class="lecture_img" src="${path}/resources/img/${list.LIMG}">
					</a>
				</div>
				<div class="lecture_text">
					<div class="lecture_title"><a href="${path}/lecture/view?lno=${list.LNO}">${list.LNAME}</a></div>
					<div class="lecture_bottom">
						<div>
						과정기간ㅣ<fmt:formatDate value="${list.STARTDATE}" pattern="yyyy.MM.dd" />
	                    ~ <fmt:formatDate value="${list.ENDDATE}" pattern="yyyy.MM.dd" />
	                    </div>
	                    <div>강사명ㅣ${list.TNAME}</div>
	                   </div>								
				</div>
				<div class="lecture_paytext">
					<div class="paytext_top">
						강좌 금액
					</div>
					<div class="paytext_price">
						<fmt:formatNumber value="${list.PRICE}" pattern="#,###원" />
					</div>
					<c:if test="${empty list.ISEMPTY}">
						<a><span class="cart_btn" data-src="${list.LNO}">장바구니에 추가</span></a>
					</c:if>
					<a><span class="<c:out value="${empty list.ISEMPTY ? 'wish_btn':'noempty_btn'}"/>" data-src="${list.LNO}">위시리스트 삭제</span></a>
				</div>
			</div>
		</c:forEach>
		</c:otherwise>
	</c:choose>
</body>
</html>