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
}
.price_num{
	float: right;
	font-size: 28px;
}
.pay_info_box{
	padding: 8px;
}
.pay_info_title {
	font-size: 15px;
	padding-bottom: 5px;
}
.input_box{
	width: 100%;
	height: 40px;
	border: 1px solid #dadada;
    outline: none;
    font-size: 19px;
    padding: 0px 8px;
}
.pay_check{
	font-size: 14px;
	display: flex;
	padding: 9px 0px 12px;
	margin-top: 5px;
	align-items: center;
	position: relative;
}
.pay_btn{
	height: 50px;
	width: 100%;
	background: mediumseagreen;
	font-size: 22px;
	color: white;
	text-align: center;
	cursor: pointer;
	overflow: hidden;
	padding: 7px;
	position: relative;
	transition: .2s;
}
.pay_btn:before {
	content: '';
	position: absolute;
	top: 0px;
	left: 0px;
	right: 0px;
	bottom: 0px;
	z-index: -5;
	background: linear-gradient(90deg, #03a9f4, #f441a5, #ffeb3b, #03a9f4);
	background-size: 500%;
	transition: 0.2s;
}
.pay_btn:hover:before {
	z-index: 1;
	animation: animate 10s linear infinite;
}
.pay_btn_text {
	position: relative;
	z-index: 5;
}
.pay_view{
	color:blue;
	cursor: pointer;
}
#check_icon {
	position: absolute;
	font-size: 19px;
	color: #dadada;
	top: 9.5px;
	left: 0;
}
.check_text {
	padding-left: 24px;
}
#onecheck {
	display: none;
}
.err_msg {
	color: tomato;
	text-align: center;
	padding: 0px 0px 16px;
	display: none;
}
</style>
</head>
<body>
	<%@ include file="../include/home_header.jsp" %>
	<div class="section_box">
		<div class="info_title">장바구니
        	<div class="info_title_bar"></div>
        </div>
        <div id="cartList"></div>
	</div>
	<%@ include file="../include/home_footer.jsp" %>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			cartList();
		});
		
		$(document).on("click", ".check_label", function(){
			var flag = $("#onecheck").is(":checked");
			if (flag == true) {
				$("#check_icon").css("color","#dadada");
			} else {
				$("#check_icon").css("color","mediumseagreen");
			}
		});
		
		$(document).on("click", ".pay_btn", function(){
			var flag = $("#onecheck").is(":checked");
			if (flag == true) {
				location.href="${path}/cart/create";
			} else {
				$(".err_msg").css("display", "block");
			}
		});
		
		$(document).on("click", ".delete_btn", function(){
			var index = $(this).attr("data-index"); // attr : 태그의 속성(attribute)
			$.ajax({
				type: "POST",
				url: "${path}/lecture/cartDelete?&index="+index,
				success: function(){
					alert("장바구니에서 삭제되었습니다.");
					cartList();
				}, error: function(){
					alert("cartDelete error!!");
				}
			});
		});
		
		function cartList(){
			$.ajax({
				type: "GET",
				url: "${path}/lecture/cartList",
				success: function(result){
					$("#cartList").html(result);
				}, error: function(){
					alert("cartList error!!");
				}
			});
		}
	</script>
</body>
</html>
