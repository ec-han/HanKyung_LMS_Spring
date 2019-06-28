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
.container_all {
	display: flex;
	justify-content: center;
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
	margin-top: 3px;
}
.paytext_price{
	text-align: right;
	font-size: 20px;
	flex:1;
}
.delete_btn {
	display: block;
	width: 110px;
	text-align: center;
	padding: 5px 7px;
	font-size: 13px;
	box-sizing: border-box;
	border: 1px solid #ddd;
	color: #999;
	margin-top: 38px;
	margin-left: 20px;
	transition: .2s;
	border-radius: 15px;
}
.delete_btn:hover {
	color: #FFC000;
	border: 1px solid #FFC000;
}






.pay_container {
	margin: 25px 0px 25px 40px;
	border: 1px solid red;
	width: 400px;
}
.pay_box{
	border:1px solid #444;
	background-color: white;
	padding: 20px;
	width: 100%;
}
.price_title_box{
	padding-bottom: 8px;
	border-bottom: 1px solid #dadada;
}
.price_title{
	font-size: 28px;
	font-weight: 600;
}
.price_num{
	text-align: right;
	font-size: 28px;
}
.pay_info_box{
	padding: 10px;
}
.info_box{
	width: 100%;
	height: 40px;
	background-color: #F8F9FC;
	border: 1px solid gray;
    outline: none;
    font-size: 25px;
}	
.pay_check{
	margin-top:10px;
	font-size: 12px;
	display: inline-block;
}
.o_btn{
	height: 50px;
	width: 100%;
	background: mediumseagreen;
	font-size: 25px;
	line-height:50px;
	color: white;
	text-align: center;
	border-top: 1px solid black;
	cursor: pointer;
}
.pay_view{
	color:blue;
	cursor: pointer;
}
</style>
</head>
<body>
	<%@ include file="../include/home_header.jsp" %>
	<div class="section_box">
		<div class="info_title">장바구니
        	<div class="info_title_bar"></div>
        </div>
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
			<c:forEach items="${sessionScope.list}" var="list">
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
						<a><span class="delete_btn" data-src="${list.lno}">강좌 삭제하기</span></a>
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
			            <span class="price_num">￦${totalPrice}</span>
			        </div>
			        <div class="pay_info_box">
			            <div>이름</div>
			            <input type="text" id="name" name="name" class="info_box">
			        </div>
			        <div class="pay_info_box">
			            <div>전화번호(숫자만)</div>
			            <input type="text" id="name" name="name" class="info_box">
			        </div>
			        <div class="pay_info_box">
						<div>이메일</div>
						<input type="text" id="name" name="name" class="info_box">
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
	</div>
	<%@ include file="../include/home_footer.jsp" %>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$(".delete_btn").click(function(){
				var lno = $(this).attr("data-src"); // attr : 태그의 속성(attribute)
				$.ajax({
					type: "GET",
					url: "${path}/lecture/cartDelete?lno="+lno,
					sucess: function(){
						
					}, error: function(){
						alert("cartDelete error!!");
					}
				});
			});
		});
	</script>
</body>
</html>
