<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${path}/resources/css/common.css?v=1">
<link rel="stylesheet" href="${path}/resources/css/member.css?v=1">
<title>Insert title here</title>
<style type="text/css">
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
 	margin-top: 60px;
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
.err_msg{
	line-height: 45px;
	height: 45px;
	color : tomato;
}
.btn_box{
	height: 45px;
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
.insert{
	cursor: pointer;
}
.loss_info{
	cursor: pointer;
}
.login_btn{
	position: relative;
	color:white;
}
.login_btn:before {
    content: '';
    position: absolute;
    top: 0px;
    left: 0px;
    right: 0px;
    bottom: 0px;
    z-index: -2;
    background: linear-gradient(90deg, #03a9f4, #f441a5, #ffeb3b, #03a9f4);
    background-size: 500%;
    border-radius: 50px;
    transition: 0.3s;
}
.login_btn:hover:before {
    z-index: 1;
    animation: animate 10s linear infinite;
}
@keyframes animate {
    0% { background-position: 0%; }
    100% { background-position: 500%; }
}
.login_text{
	color:white;
	position: relative;
	font-size:20px;
	font-weight:600;
	z-index: 4;
}


</style>
</head>
<body>
	<header></header>
	<div class="background_box"> 
		<img alt="" src="${path}/resources/img/background.jpg">
		<div class="shadow"></div>
		<div class="main_box">
			<div class="img_box1">
				<img class="logo" alt="" src="${path}/resources/img/logo_02_white.png">
				<img class="img" alt="" src="${path}/resources/img/cat.png">
			</div>
			<div class="text_box">
				<form action="${path}/member/login" method="POST" name="frm_mem" id="frm_mem">
					<div class="title">환영합니다 ^^!</div>
					
					<div class="info">
						<span class="input_box">
							<input type="text" id="input_id" name="id" class="input_class" maxlength="15" placeholder="아이디">
						</span>
					</div>
					
					<div class="info">
						<span class="input_box">
							<input type="password" id="input_pw" name="pw" class="input_class" maxlength="5" placeholder="비밀번호">
						</span>
					</div>
					<div class="err_msg">
						${sessionScope.loginck}
					</div>
					<div class="btn_box">
						<button class="login_btn o_btn" type="button">
							<div class="login_text">로 그 인</div>
						</button>
					</div>
					<div class="underbar"></div>
					<div class="login_box">
						<span class="insert">회원가입 </span> | 
						<span class="loss_info">아이디, 비밀번호 찾기</span>
					</div>
				</form>
			</div>
		</div>
	</div>
	<footer></footer>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.login_btn').click(function() {
				$('#frm_mem').submit();
			});
			$('.insert').click(function() {
				location.href="${path}/member/constract";
			});
			$('.loss_info').click(function() {
				location.href="${path}/member/loss_info";
			});
		});
	</script>	
</body>
</html>