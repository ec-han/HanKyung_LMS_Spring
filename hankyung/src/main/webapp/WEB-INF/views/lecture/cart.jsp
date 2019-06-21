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
#test { /* 복사할 필요 없음  */
	display: flex;
	flex-direction: column;
}
body{
	background-color: #fafafa;
}
.cart_box{
	/* border: 1px solid black; */
	width: 1200px;
	margin: 100px auto 500px;
	display: flex;
}
.lecture_container{
	width:850px;
	/* border:1px solid red; */
}

.lecture_title{
	margin:10px 0;
	font-size: 25px;
}
.lecture_box{
	margin:20px;
	width: 95%;
	height: 120px;
/* 	border: 1px solid blue; */
	background-color:white;
	padding: 10px;
	display: flex;
}
.lecture_img_box{
	width: 20%;
	height: 100px;
	border: 1px solid red;
}
.lecture_text{
	padding: 0 10px;
	width: 50%;
	height: 100px;
	/* border: 1px solid green; */
}
.lecture_paytext{
	padding: 0 10px;
	width: 30%;
	height: 100px;
	/* border: 1px solid green; */
	display:flex;
	flex-direction : row-reverse;
}
.lecture_flexbox{
	flex-direction:column;
}
.other_btn{
	margin-top:5px;
	padding: 5px;
	font-size: 10px;
	width: 100px;
	border: 1px solid gray;
	text-align: center;
}


.pay_container{
	width:350px;
	height:500px;
	/* border:1px solid blue; */
	flex-direction:column;
}
.pay_box_title{
	margin: 0 auto;
	padding: 10px 0;
	text-align: right;
	height: 40px;
	width: 320px;
}
.pay_box{
	margin: 0 auto;
	border:1px solid black;
	background-color: white;
	width: 320px;
}
.price_title_box{
	padding: 10px;
	display: flex;
	line-height: 30px;
}
.price_title{
	font-size: 30px;
	font-weight: 600;
	flex:1;
}
.price{
	text-align: right;
	font-size: 20px;
	flex:1;
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
.lecture_img{
	width: 100%;
	height: 100%;
}
</style>
</head>
<body>
	<%@ include file="../include/home_header.jsp" %>
	<!-- 가장 큰 박스 -->
	<div class="cart_box">
	
		<!-- 강좌바구니 -->
		<div class="lecture_container">
			<div class="lecture_title">강좌바구니</div>
			<c:forEach items="${cartList}" var="cartview">
				<div class="lecture_box">
					<div class="lecture_img_box">
						<img class="lecture_img" src="${path}/resources/img/${cartview.limg}">
					</div>
					<div class="lecture_text">
						<div>${cartview.lname}</div>
						<div>${cartview.startdate} ~ ${cartview.enddate}</div>									
					</div>
					<div class="lecture_paytext"> 
						<div class="lecture_flexbox">
							<div class="price">￦${cartview.price}</div>
							<div class="other_btn">위시리스트로 이동</div>
							<div class="other_btn">장바구니에서 삭제</div>
						</div>								
					</div>
				</div>
			</c:forEach>
		</div>
		
		<!-- 결제 -->
		<div class="pay_container">
			<div class="pay_box_title">강좌바구니 > 결제 > 결제완료</div>
			<div class="pay_box">
				<div class="price_title_box">
					<span class="price_title">총계</span>
					<span class="price">￦${price}</span>
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
	</div>
	<%@ include file="../include/home_footer.jsp" %>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(function(){
			
		});
	</script>
</body>
</html>
