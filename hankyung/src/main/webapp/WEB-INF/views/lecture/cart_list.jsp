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
	<div class="container_all">
        <div class="lecture_container">
    		<c:choose>
    		<c:when test="${empty sessionScope.list}">
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
			<c:forEach items="${sessionScope.list}" var="list" varStatus="status">
			<div class="lecture_box">
				<div class="lecture_img_box">
					<a href="${path}/lecture/view?lno=${list.lno}">
						<img class="lecture_img" src="${path}/resources/img/${list.limg}">
					</a>
				</div>
				<div class="lecture_text">
					<div class="lecture_title"><a href="${path}/lecture/view?lno=${list.lno}">${list.lname}</a></div>
					<div class="lecture_bottom">
						<div>
						과정기간ㅣ<fmt:formatDate value="${list.startdate}" pattern="yyyy.MM.dd" />
	                    ~ <fmt:formatDate value="${list.enddate}" pattern="yyyy.MM.dd" />
	                    </div>
	                    <div>강사명ㅣ${list.tname}</div>
                    </div>								
				</div>
				<div class="lecture_paytext">
					<div class="paytext_top">
						강좌 금액
					</div>
					<div class="paytext_price">
						<fmt:formatNumber value="${list.price}" pattern="#,###원" />
					</div>
					<a><span class="delete_btn" data-src="${list.lno}" data-index="${status.index}">장바구니 삭제</span></a>
				</div>
			</div>
		</c:forEach>
		</c:otherwise>
		</c:choose>
		</div>
		<c:if test="${!empty sessionScope.list}">
		<div class="pay_container">
	   		<div class="pay_box">
		        <div class="price_title_box">
		            <span class="price_title">총계</span>
		            <span class="price_num"><fmt:formatNumber value="${sessionScope.totalPrice}" pattern="#,###원"/></span>
		        </div>
		        <div class="pay_info_box">
		            <div class="pay_info_title">이름</div>
		            <input type="text" id="input_name" name="name" class="input_box">
		        </div>
		        <div class="pay_info_box">
		            <div class="pay_info_title">전화번호(숫자만)</div>
		            <input type="text" id="input_phone" name="name" class="input_box">
		        </div>
		        <div class="pay_info_box">
					<div class="pay_info_title">이메일</div>
					<input type="text" id="input_email" name="name" class="input_box">
					<span class="pay_check">
					    <input type="checkbox" id="onecheck">
					    <label for="onecheck">[필수] 구매조건 및 결제대항 서비스 약관 동의</label>
					    <span class="pay_view">(보기)</span>
					</span>
		        </div>
		        <div class="o_btn">결 제 하 기</div>
	        </div>
       	</div>
       	</c:if>
 	</div>
</body>
</html>