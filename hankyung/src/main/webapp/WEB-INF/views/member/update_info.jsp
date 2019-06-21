<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${path}/resources/css/common.css?v=1">
<link rel="stylesheet" href="${path}/resources/css/member.css?v=1">
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.text_box{
	box-sizing: border-box;
	padding: 50px;
	width: 650px;
	height: 100%;
}
.title{
 	height: 50px;
 	text-align: center;
 	font-size: 20px;
 	line-height: 50px;
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
	border:1px solid #dadada;
	background-color: #dadada;
}
.secondbox{
	width: 27%;
}

.err_msg{
	line-height: 45px;
/* 	height: 45px; */
}
.btn_box{
	height: 45px;
}
.info_btn{
	border: none;
	outline: none;
	text-align: center;
}
.pw_btn{
	border: none;
	outline: none;
	text-align: center;
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
.loss_info{
	cursor: pointer;
}
.idbox, #input_id, #input_name{
	border:1px solid #dadada;
	background-color: #dadada;
}
. 
</style>

</head>
<body>
	<header></header>
	<div class="background_box"> 
		<div class="main_box">
			<div class="img_box1">
				<img class="logo" alt="" src="${path}/resources/img/logo_02_white.png">
				<img class="img" alt="" src="${path}/resources/img/cat.png">
			</div>
			
			<div class="text_box">
				<form action="${path}/member/update" method="POST" id="frm_-mem" name="frm_mem">
					<div class="title">Update Information!</div>
					
					<div class="info">
						<span class="input_box fristbox">
							<input type="text" id="input_name" name="name" class="input_class" maxlength="5" value="${one.name}">
						</span>
						<span class="input_box fristbox idbox">
							<input type="text" id="input_id" name="id" class="input_class" maxlength="15" readonly="readonly" value="${one.id}">
						</span>
					</div>
					
					<div class="info">
						<span class="input_box">
							<input type="text" id="input_email" name="email" class="input_class" maxlength="25" value="${one.email}">
						</span>
					</div>
					
					<div class="info">
						<span class="input_box secondbox">
							<input type="text" id="input_phone1" name="phone1" class="input_class input_phone" maxlength="3" placeholder="전화번호">
						</span>
						-
						<span class="input_box secondbox">
							<input type="text" id="input_phone2" name="phone2" class="input_class input_phone" maxlength="4">
						</span>
						-
						<span class="input_box secondbox">
							<input type="text" id="input_phone3" name="phone3" class="input_class input_phone" maxlength="4">
						</span>
						<input type="hidden" id="phone" name="phone">
					</div>
					<div class="err_msg"></div>
					<div class="btn_box">
						<button class="info_btn o_btn" type="button">정보 수정</button>
					</div>
				</form>
					<div class="underbar"></div>
				<form action="${path}/member/pw_update" method="POST" id="frm_pw" name="frm_pw">
					<div class="info">
						<span class="input_box thirdbox">
							<input type="password" id="input_pw" name="pw" class="input_class" maxlength="15" placeholder="비밀번호">
						</span>
					</div>
					<div class="info">	
						<span class="input_box thirdbox">
							<input type="password" id="input_repw" name="repw" class="input_class" maxlength="15" placeholder="비밀번호확인">
						</span>
					</div>
					<div class="err_msg"></div>
					<div class="btn_box">
						<button class="pw_btn o_btn" type="button">비밀번호 수정</button>
					</div>
					<input type="hidden" id="id" name="id" value="${one.id}">
				</form>
			</div>
		</div>
	</div>
	<footer></footer>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript" src="${path}/resources/js/validation.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.login').click(function() {
				location.href="${path}/member/login";
			});
			$('.loss_info').click(function() {
				location.href="${path}/member/loss_info";
			});
			
			
			var
			uid = $('#input_id'),
			upw = $('#input_pw'),
			urepw = $('#input_repw'),
			uname = $('#input_name'),
			uphone = $('#insert_phone1').val()+$('#insert_phone2').val()+$('#insert_phone3').val(),
			umail = $('#input_mail');
			
			var phone = "${one.phone}";
			var phone1 = phone.substring(0, 3);
			var phone2 = phone.substring(3, 7);
			var phone3 = phone.substring(7, phone.length);
			$("#input_phone1").val(phone1);
			$("#input_phone2").val(phone2);
			$("#input_phone3").val(phone3);


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
	
		
		
		//이메일
		var mailflag = 1;
		$('#input_email').keyup(function(event) {
			var email = $.trim($(this).val());
			
			if(email == "" || email.length == 0){
				$('.err_msg').eq(0).css('color', '#ff1212')
							 .text('* 필수입력 정보입니다.');
				$('.input_box').eq(2).css('border', '1px solid #ff1212');	  
				mailflag = 0;
				return false;
				
			} else if(email.match(regEmpty)){
				$('.err_msg').eq(0).css('color', '#ff1212')
							 .text('* 공백없이 입력해주세요.');
				$('.input_box').eq(2).css('border', '1px solid #ff1212');		   
				mailflag = 0;
				return false;
				
			} else if (!emailReg.test(email)){
				$('.err_msg').eq(0).css('color', '#ff1212')
							 .text('* 올바른 이메일을 입력해주세요.');
				$('.input_box').eq(2).css('border', '1px solid #ff1212');
				mailflag = 0;
				return false;
				
			} else {
				$('.err_msg').eq(0).css('color', 'mediumseagreen')
							 .text('');
				$('.input_box').eq(2).css('border', '1px solid mediumseagreen');
								   
				mailflag = 1;
				return true;
			}
			mailflag = 0;
			return false;
		});
		
		//전화번호 자동으로 넘어가게 하기
		$('#input_phone1').keyup(function(event) {
			var phone = $(this).val().length;

			if(phone == 3){
				$('#input_phone2').focus();
			}
		});

		$('#input_phone2').keyup(function(event) {
			var phone = $(this).val().length;

			if(event.keyCode != 8 && phone == 4){
				$('#input_phone3').focus();
			}
			if(event.keyCode == 8 && phone < 1) {
				$('#input_phone1').focus();
			}
		});

		$('#input_phone3').keyup(function(event) {
			var phone = $(this).val().length;
			if(event.keyCode == 8 && phone < 1) {
				$('#input_phone2').focus();
			}
		});

		
		//전화번호
		var phoneflag = 1;
		$('.input_phone').keyup(function(event) {
			var phone = $.trim($('#input_phone1').val()+$('#input_phone2').val()+$('#input_phone3').val());
			$('#phone').val(phone);
			if (phone == '') {
				$('.err_msg').eq(0).css('color', '#ff1212')
							 .text('* 필수입력 정보입니다.');
				$('.secondbox').css('border', '1px solid #ff1212');
				phoneflag = 0;
				return false;
			} else if (phone.indexOf("01") != 0) {
				$('.err_msg').eq(0).css('color', '#ff1212')
							 .text('* 휴대폰 번호가 유효하지 않습니다.');
				$('.secondbox').css('border', '1px solid #ff1212');
				phoneflag = 0;
				return false;
			} else if (phone.match(regEmpty)) {
				$('.err_msg').eq(0).css('color', '#ff1212')
							 .text('* 공백없이 입력해주세요.');
				$('.secondbox').css('border', '1px solid #ff1212');
				phoneflag = 0;
				return false;
			} else if (!phoneReg.test(phone) || phone.length < 11) {
				$('.err_msg').eq(0).css('color', '#ff1212')
							 .text('* 올바른 번호를 입력해주세요.');
				$('.secondbox').css('border', '1px solid #ff1212');
				phoneflag = 0;
				return false;
			} else {
				$('.err_msg').eq(0).css('color', 'mediumseagreen')
							 .text('');
				$('.secondbox').css('border', '1px solid mediumseagreen');
				phoneflag = 1;
				return true;
			}
			flag = 0;
			return false;
		});

		//비밀번호
		var pwflag = 0;
		var repwflag = 0;
		$('#input_pw').keyup(function(event) {
			var memPw = $.trim(upw.val());
			var memRepw = $.trim(urepw.val());

			if(memPw == '' || memPw.length ==0){
				$('.err_msg').eq(1).css('color', '#ff1212')
							 .text('* 필수입력 정보입니다.');
				$('.thirdbox').eq(0).css('border', '1px solid #ff1212');
				pwflag = 0;
				return false;
			} else if (memPw.match(regEmpty)) {
				$('.err_msg').eq(1).css('color', '#ff1212')
							 .text('* 공백없이 입력해주세요.');
				$('.thirdbox').eq(0).css('border', '1px solid #ff1212');
				pwflag = 0;
				return false;
			} else if (!pwReg.test(memPw)) {
				$('.err_msg').eq(1).css('color', '#ff1212')
							 .text('* 비밀번호가 유효하지 않습니다.');
				$('.thirdbox').eq(0).css('border', '1px solid #ff1212');1
				pwflag = 0;
				return false;
			} else {
				$('.err_msg').eq(1).css('display', 'inline-block')
								   .css('color', 'mediumseagreen')
								   .text('');
				$('.thirdbox').eq(0).css('border', '1px solid mediumseagreen');
				pwflag = 1;
				if(memPw != memRepw){
					$('.thirdbox').eq(1).css('border', '1px solid #ff1212');
					repwflag = 0;
					return false;
				} else {
					$('.thirdbox').eq(1).css('border', '1px solid mediumseagreen');
					repwflag = 1;
					return true;
				}
			}
			pwflag = 0;
			return false;
		});
		

		//비밀번호 확인
		$('#input_repw').keyup(function(event) {
			var memPw = $.trim(upw.val());
			var memRepw = $.trim(urepw.val());

			if(memPw != memRepw){
				$('.thirdbox').eq(1).css('border', '1px solid #ff1212');
				repwflag = 0;
				return false;
			} else {
				$('.thirdbox').eq(1).css('border', '1px solid mediumseagreen');
				repwflag = 1;
				return true;
			}
			repwflag = 0;
			return false;
			
		});
		
		$('.info_btn').click(function(event) {
			var flag = mailflag + phoneflag;
			if(flag == 2){
				$('#frm_mem').submit();
			}
			else{
				$('.err_msg').eq(0).css('color', '#ff1212')
							 .text('* 모두 정확한 값을 입력하였는지 확인해주세요.');
				if(mailflag < 1){
					$('#input_email').focus();
				} else if(phoneflag < 1){
					$('#input_phone3').focus();
				}
				return false;		    
			} 
		});
		
		$('.pw_btn').click(function(event) {
			var flag = pwflag + repwflag;
			if(flag == 2){
				$('#frm_pw').submit();
			}
			else{
				$('.err_msg').eq(1).css('color', '#ff1212')
							 .text('* 모두 정확한 값을 입력하였는지 확인해주세요.');
				if(pwflag < 1){
					$('#input_pw').focus();
				} else if(repwflag < 1){
					$('#input_repw').focus();
				}
				return false;		    
			} 
		});
			
	});
	</script>
</body>
</html>