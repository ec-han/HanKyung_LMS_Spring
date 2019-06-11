<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${path}/resources/css/common.css?v=1">
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.background_box{
	background-color: skyblue;
	padding-top: 50px;
	width: 100vw;
	height: 120vh;
}
.main_box{
	background-color: white;
	width: 1100px;
	display: flex;
	margin: 0 auto;
	height: 620px;
}
.img_box1{
	background-color: yellow;
	width: 450px;
	height: 100%;
	position: relative;
}
.img_box1 > img{
	position: absolute;
	bottom: 0;
	left: 30px;
	width: 90%;
	
}
.text_box{
	box-sizing: border-box;
	padding: 50px;
	width: 650px;
	height: 100%;
}
.title{
 	height: 60px;
 	text-align: center;
 	font-size: 20px;
 	line-height: 60px;
}
.info{
	margin: 15px 0;
	height: 45px;
	display: flex;
	justify-content: space-between;
	line-height: 45px;
}
.input_box{
	border: 0.5px solid #dadada;
	display: inline-block;
	height: 100%;
	width: 100%;
	border-radius: 30px;
	padding-left: 20px;
}
.fristbox{
	width: 44%;
}
.secondbox{
	width: 27%;
}
.thirdbox{
	width: 44%;
}
.input_class{
	margin: 0 auto;
	height: 94%;
	width: 90%;
	border:none;
	outline:none;
	font-size:20px;
}
.err_msg{
	line-height: 45px;
	height: 45px;
}
.btn_box{
	height: 45px;
}
.insert_btn{
	border-radius: 30px;
	width: 100%;
	height: 100%;
	border: none;
	outline: none;
	background-color: blue;
	color:white;
}
.insert_btn:hover{
	background-color: skyblue;
	transition:0.2s;
	cursor: pointer;
}
.underbar{
	margin: 15px 0;
	border-top:2px solid lightgray;
}
.login_box{
	/*border: 1px solid purple;*/
	height: 30px;
	line-height: 30px;
	text-align: center;
}
.login{
	cursor: pointer;
}
.loss_pw{
	cursor: pointer;
}

</style>
</head>
<body>
	<header></header>
	<div class="background_box"> 
		<div class="main_box">
			<div class="img_box1">
				<img alt="" src="${path}/resources/img/cat.png">
			</div>
			<div class="text_box">
				<form action="">
					<div class="title">Create an Account!</div>
					
					<div class="info">
						<span class="input_box fristbox">
							<input type="text" id="input_name" name="name" class="input_class" maxlength="5" placeholder="이름">
						</span>
						<span class="input_box fristbox">
							<input type="text" id="input_id" name="id" class="input_class" maxlength="15" placeholder="아이디">
						</span>
					</div>
					
					<div class="info">
						<span class="input_box">
							<input type="text" id="input_email" name="email" class="input_class" maxlength="25" placeholder="이메일">
						</span>
					</div>
					
					<div class="info">
						<span class="input_box secondbox">
							<input type="text" id="input_phone" name="phone" class="input_class" maxlength="25" placeholder="전화번호">
						</span>
						-
						<span class="input_box secondbox">
							<input type="text" id="input_phone" name="phone" class="input_class" maxlength="4">
						</span>
						-
						<span class="input_box secondbox">
							<input type="text" id="input_phone" name="phone" class="input_class" maxlength="4">
						</span>
					</div>

					<div class="info">
						<span class="input_box thirdbox">
							<input type="password" id="input_pw" name="pw" class="input_class" maxlength="5" placeholder="비밀번호">
						</span>
						<span class="input_box thirdbox">
							<input type="password" id="input_repw" name="repw" class="input_class" maxlength="5" placeholder="비밀번호확인">
						</span>
					</div>
					<div class="err_msg">
						* err msg
					</div>
					<div class="btn_box">
						<button class="insert_btn">회 원 가 입</button>
					</div>
					<div class="underbar"></div>
					<div class="login_box">
						<span class="login">로그인</span> | 
						<span class="loss_pw">비밀번호 찾기</span>
					</div>

				</form>
			</div>
		</div>
	</div>
	<footer></footer>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.login').click(function() {
				location.href="#";
			});
			$('.loss_pw').click(function() {
				location.href="#";
			});
		});
</script>
</body>
</html>