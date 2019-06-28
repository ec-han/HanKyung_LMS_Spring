<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${path}/resources/css/common.css?v=1">
<link rel="stylesheet" href="${path}/resources/css/main_common.css?v=1">
<meta charset="UTF-8">
<title>샘플페이지</title>
<style type="text/css">
body{
	background-color: #fafafa;
}
.section_box {
	width: 100%;
	min-width: 1350px;
	padding: 150px 0px;
}
.info_title {
	width: 1350px;
    font-size: 35px;
    margin: 0px auto;
    padding: 0px 50px 30px;
    position: relative;
    box-sizing: border-box;
}
.info_title_bar {
	position: absolute;
	width: 7px;
	height: 32px;
	background-color: #444;
	top: 11.5px;
	left: 30px;
}
.lecture_box{
	margin:25px auto;
	width: 50%;
	padding: 20px;
	border-radius: 5px;
	background: white;
	display: flex;
	box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.15);
	box-sizing: border-box;
	position: relative;
	min-width: 870px;
}
.empty_box {
	width: 100%;
	text-align: center;
	padding: 10px;
	color: tomato;
}
.empty_icon {
	font-size: 22px;
	padding-bottom: 5px;
	color: tomato;
}
.lecture_img_box{
	width: 200px;
	height: 128.9px;
	overflow: hidden;
}
.lecture_img{
	width: 100%;
	height: 100%;
}
.lecture_text{
	margin: 3px 0px 3px 30px;
	width: 455px;
	height: 100%;
	box-sizing: border-box;
}
.lecture_title {
	font-size: 20px;
	font-weight: bold;
}
.lecture_bottom {
	position: absolute;
	width: 455px;
	bottom: 25px;
	padding-top: 11px;
	border-top: 1px solid #dadada;
}
.lecture_paytext{
	position: absolute;
	right: 28px;
	top: 21px;
	width: 130px;
}
.paytext_top {
	text-align: right;
}
.paytext_price{
	text-align: right;
	font-size: 20px;
	flex:1;
}
.wish_btn {
	display: block;
	width: 110px;
	text-align: center;
	padding: 5px 7px;
	font-size: 13px;
	box-sizing: border-box;
	border: 1px solid #ddd;
	color: #999;
	margin-top: 10px;
	margin-left: 20px;
	transition: .2s;
	border-radius: 15px;
}
.cart_btn {
	display: block;
	width: 110px;
	text-align: center;
	padding: 5px 7px;
	font-size: 13px;
	box-sizing: border-box;
	border: 1px solid #ddd;
	color: #999;
	margin-top: 5px;
	margin-left: 20px;
	transition: .2s;
	border-radius: 15px;
}
.wish_btn:hover {
	color: #FFC000;
	border: 1px solid #FFC000;
}
.cart_btn:hover {
	color: #79CDCF;
	border: 1px solid #79CDCF;
}
</style>
</head>
<body>
	<%@ include file="../include/home_header.jsp" %>
	<!-- 가장 큰 박스 -->
	<div class="section_box">
		<div class="lecture_container">
			<div class="info_title">위시리스트
	        	<div class="info_title_bar"></div>
	        </div>
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
			<c:forEach items="${lDto}" var="list">
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
						<a><span class="wish_btn" data-src="${list.lno}">위시리스트 삭제</span></a>
						<a><span class="cart_btn" data-src="${list.lno}">장바구니에 추가</span></a>
					</div>
				</div>
			</c:forEach>
			</c:otherwise>
			</c:choose>
		</div>
	</div>
	<%@ include file="../include/home_footer.jsp" %>
	<script type="text/javascript">
	$(document).ready(function(){
		$(".cart_btn").click(function(){
			var lno = $(this).attr("data-src");
			
			$.ajax({
				type: "GET",
				url: "${path}/lecture/cartAdd?lno="+lno,
				success: function(data){
					if (data>0) {
						alert("장바구니로 등록되었습니다.");
					} else {
						alert("이미 등록된 강좌입니다.");
					}
				}, error: function(){
					alert("cartAdd error!!");
				}
			});
		});
		
		/* $(".wish_btn").click(function(){
			var lno = $(this).attr("data-src");
			
			$.ajax({
				type: "POST",
				url: "${path}/lecture/wishDelete?lno="+lno,
				success: function(){
					
				}, error: function(){
					alert("wishDelete error!!");
				}
			});
		}); */
	});
	
	</script>
</body>
</html>
