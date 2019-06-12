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
	height: 150vh;
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
							<input type="text" id="input_phone1" name="phone1" class="input_class" maxlength="3" placeholder="전화번호">
						</span>
						-
						<span class="input_box secondbox">
							<input type="text" id="input_phone2" name="phone2" class="input_class" maxlength="4">
						</span>
						-
						<span class="input_box secondbox">
							<input type="text" id="input_phone3" name="phone3" class="input_class" maxlength="4">
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
			
			
			var
			uid = $('#input_id'),
			upw = $('#input_pw'),
			urepw = $('#input_repw'),
			uname = $('#input_name'),
			uphone = $('#insert_phone1').val()+$('#insert_phone2').val()+$('#insert_phone3').val(),
			umail = $('#input_mail');


		var idReg = RegExp(/^[a-zA-Z0-9-_]{5,15}$/);
		//ID: 영문 대문자 또는 소문자 숫자로 시작하는 아이디 길이는 5~15자, 끝날때 제한없음
		var pwReg = RegExp(/^[a-zA-Z0-9]{4,12}$/);
		//PW: 영문 대문자 또는 소문자 숫자로 시작하는 비밀번호 길이는 4~12자, 끝날때 제한없음
		var nameReg = RegExp(/^[가-힣]{2,5}$/);
		//이름: 가에서부터 힣까지 한글 전부 이름의 길이는 2글자에서 5글자 까지
		var emailReg = RegExp(/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,20}$/i);
		//이메일
		var phoneReg = RegExp(/^[0-9]{8,11}$/);
		
		
		//공백여부
		var regEmpty = /\s/g;
		var reg = /[^a-z0-9-_.]+/g;
	
		
		//이름
		$('#input_name').keyup(function(event) {
			var name = $.trim(uname.val());
			if (name == '' || name.length ==0) {
				$('.err_msg').css('color', '#ff1212')
							 .text('* 필수입력 정보입니다.');
				$('.input_box').eq(0).css('border', '1px solid #ff1212');
				flag = 0;
				return false;
			} else if (name.match(regEmpty)) {
				$('.err_msg').css('color', '#ff1212')
							 .text('* 공백없이 입력해주세요.');
				$('.input_box').eq(0).css('border', '1px solid #ff1212');
				flag = 0;
				return false;
			} else if (!nameReg.test(name)) {
				$('.err_msg').css('color', '#ff1212')
							 .text('* 올바른 이름을 입력해주세요.');
				$('.input_box').eq(0).css('border', '1px solid #ff1212');
				flag = 0;
				return false;
			} else {
				$('.err_msg').css('color', 'mediumseagreen')
							 .text('');
				$('.input_box').eq(0).css('border', '1px solid mediumseagreen');
				flag = 1;
				return true;
			}
			flag = 0;
			return false;
		});
		
		
		//아이디
		$('#input_id').keyup(function(event) {
			var memId = $.trim(uid.val());
			
			var checkResult = joinValidate.checkId(memId);
			
			if(checkResult.code != 0){
				$('.err_msg').eq(0).css('display', 'inline-block')
								   .css('color', '#ff1212')
								   .text(checkResult.desc);
				flag = 0;
				return false;
			} else {
				if(ajaxCheck(memId) == "1"){
					flag = 1;
					return true;
				}
			}
			flag = 0;
			return false;
		});

		//비밀번호
		$('#input_pw').keyup(function(event) {
			var memPw = $.trim(upw.val());
			var memRepw = $.trim(urepw.val());
			
			var checkResult = joinValidate.checkPw(memPw, memRepw);

			if(checkResult.code != 0){
				$('.err_msg').eq(1).css('display', 'inline-block')
								   .css('color', '#ff1212')
								   .text(checkResult.desc);
				$('.check_i').eq(1).css('color', '#ff1212');
				flag = 0;
				return false;
			} else {
				$('.err_msg').eq(1).css('display', 'inline-block')
								   .css('color', 'mediumseagreen')
								   .text(checkResult.desc);
				$('.check_i').eq(1).css('color', 'mediumseagreen');
				flag = 1;
				return true;
			}
			flag = 0;
			return false;
		});
		

		//비밀번호 확인
		$('#input_repw').keyup(function(event) {
			var memPw = $.trim(upw.val());
			var memRepw = $.trim(urepw.val());
			
			var checkResult = joinValidate.checkRpw(memPw, memRepw);

			if(checkResult.code != 0){
				$('.err_msg').eq(2).css('display', 'inline-block')
								   .css('color', '#ff1212')
								   .text(checkResult.desc);
				$('.check_i').eq(2).css('color', '#ff1212');
				flag = 0;
				return false;
			} else {
				$('.err_msg').eq(2).css('display', 'inline-block')
								   .css('color', 'mediumseagreen')
								   .text(checkResult.desc);
				$('.check_i').eq(2).css('color', 'mediumseagreen');
				flag = 1;
				return true;
			}
			flag = 0;
			return false;
			
			/* 
			var repw = $.trim(urepw.val());
			var pw = $.trim(upw.val());
			if(repw == ''){
				$('.err_msg').eq(2).css('display', 'inline-block')
								   .css('color', '#ff1212')
								   .text('* 비밀번호를 다시 입력해주세요.');
				$('.check_i').eq(2).css('color', '#dadada');
				flag = 0;
				return false;
			} else if (repw != pw){
				$('.err_msg').eq(2).css('display', 'inline-block')
								   .css('color', '#ff1212')
								   .text('* 입력하신 비밀번호가 다릅니다.');
				$('.check_i').eq(2).css('color', '#ff1212');
				flag = 0;
				return false;
			} else {
				$('.err_msg').eq(2).css('display', 'inline-block').text('* 비밀번호가 일치합니다.').css('color', 'mediumseagreen');
				$('.check_i').eq(2).css('color', 'mediumseagreen');
				flag = 1;
				return true;
			}
			flag = 0;
			return false; */
		});
		
		

		//전화번호
		$('.input_phone').keyup(function(event) {
			var phone = $.trim($('#insert_phone1').val()+$('#insert_phone2').val()+$('#insert_phone3').val());

			if (phone == '') {
				$('.err_msg').eq(4).css('display', 'inline-block')
								   .css('color', '#ff1212')
								   .text('* 필수입력 정보입니다.');
				$('.check_i').eq(4).css('color', '#ff1212');
				flag = 0;
				return false;
			} else if (phone.indexOf("01") != 0) {
				$('.err_msg').eq(4).css('display', 'inline-block')
								   .css('color', '#ff1212')
								   .text('* 휴대폰 번호가 유효하지 않습니다.');
				$('.check_i').eq(4).css('color', '#ff1212');
				flag = 0;
				return false;
			} else if (phone.match(regEmpty)) {
				$('.err_msg').eq(4).css('display', 'inline-block')
								   .css('color', '#ff1212')
								   .text('* 공백없이 입력해주세요.');
				$('.check_i').eq(4).css('color', '#ff1212');
				flag = 0;
				return false;
			} else if (!phoneReg.test(phone) || phone.length < 11) {
				$('.err_msg').eq(4).css('display', 'inline-block')
								   .css('color', '#ff1212')
								   .text('* 올바른 번호를 입력해주세요.');
				$('.check_i').eq(4).css('color', '#ff1212');
				flag = 0;
				return false;
			} else {
				$('.err_msg').eq(4).css('display', 'inline-block')
								   .css('color', 'mediumseagreen')
								   .text('');
				$('.check_i').eq(4).css('color', 'mediumseagreen');
				flag = 1;
				return true;
			}
			flag = 0;
			return false;
		});
		

		
		//이메일
		$('#input_mail').keyup(function(event) {
			var email = $.trim($(this).val());
			var url = $.trim($('#email_url').val());
			
			if(email == "" || email.length == 0){
				$('.err_msg').eq(5).css('display', 'inline-block')
								   .css('color', '#ff1212')
								   .text('* 필수입력 정보입니다.');
				flag = 0;
				return false;
			} else if(email.match(regEmpty)){
				$('.err_msg').eq(5).css('display', 'inline-block')
				 				   .css('color', '#ff1212')
				 				   .text('* 공백없이 입력해주세요.');
				flag = 0;
				return false;
			} else if (url != "" || url.length != 0){
				var fullMail = email+"@"+url;
				if(!emailReg.test(fullMail)){
					$('.err_msg').eq(5).css('display', 'inline-block')
	 								   .css('color', '#ff1212')
	 								   .text('* 올바른 이메일을 입력해주세요.');
					flag = 0;
					return false;
				} else {
					$('.err_msg').eq(5).css('display', 'inline-block')
									   .css('color', 'mediumseagreen')
									   .text('* 사용가능한 이메일 입니다.');
					flag = 1;
					return true;
				}
			}
			flag = 0;
			return false;
		});
		
		$('#email_url').keyup(function(event) {
			var email = $.trim($('#input_mail').val());
			var url = $.trim($('#email_url').val());
			
			if(url.match(regEmpty)){
				$('.err_msg').eq(5).css('display', 'inline-block')
				 				   .css('color', '#ff1212')
				 				   .text('* 공백없이 입력해주세요.');
				flag = 0;
				return false;
			} else if (url != "" || url.length != 0){
				var fullMail = email+"@"+url;
				if(!emailReg.test(fullMail)){
					$('.err_msg').eq(5).css('display', 'inline-block')
	 								   .css('color', '#ff1212')
	 								   .text('* 올바른 이메일을 입력해주세요.');
					flag = 0;
					return false;
				} else {
					$('.err_msg').eq(5).css('display', 'inline-block')
									   .css('color', 'mediumseagreen')
									   .text('* 사용가능한 이메일 입니다.');
					flag = 1;
					return true;
				}
			}
			flag = 0;
			return false;
		});
			
			
			
		});
	</script>
</body>
</html>