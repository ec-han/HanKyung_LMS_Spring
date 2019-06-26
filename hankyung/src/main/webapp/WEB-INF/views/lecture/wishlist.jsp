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
.section_box {
	width: 100%;
	min-width: 1350px;
	padding: 150px 0px;
}
.info_title {
	width: 1350px;
    font-size: 35px;
    margin: 0px auto;
    padding: 0px 50px 40px;
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
	margin:20px auto;
	width: 60%;
	padding: 30px;
	border-radius: 5px;
	background: white;
	display: flex;
	box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.15);
}
.lecture_img_box{
	width: 250px;
	height: 162.5px;
	overflow: hidden;
}
.lecture_img{
	width: 100%;
	height: 100%;
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
			<c:forEach items="${lDto}" var="list">
				<div class="lecture_box">
					<div class="lecture_img_box">
						<img class="lecture_img" src="${path}/resources/img/${list.limg}">
					</div>
					<div class="lecture_text">
						<div>${list.lname}</div>
						<div>${list.startdate} ~ ${list.enddate}</div>									
					</div>
					<div class="lecture_paytext"> 
						<div class="lecture_flexbox">
							<div class="price">￦${list.price}</div>
							<div class="other_btn">위시리스트로 이동</div>
							<div class="other_btn">장바구니에서 삭제</div>
						</div>								
					</div>
				</div>
			</c:forEach>
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
