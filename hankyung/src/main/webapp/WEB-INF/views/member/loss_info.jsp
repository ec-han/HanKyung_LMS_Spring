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
 	height: 40px;
 	text-align: center;
 	font-size: 20px;
 	line-height: 40px;
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

.btn_box{
	height: 45px;
}
.underbar{
	margin: 15px 0;
	border-top:2px solid lightgray;
}
.login_box{
	position:relative;
	/*border: 1px solid purple;*/
	height: 30px;
	line-height: 30px;
	text-align: right;
}
.insert{
	cursor: pointer;
}
.login{
	cursor: pointer;
}
.err_msg{
	color:tomato;
	height:30px;
	position: absolute;
	top: 0;
	left: 0;
}


.modal1{
	position: fixed;
	top:0;
	left: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0,0,0,0.3);
	z-index: 3;
	display: none;
	justify-content: center;
	align-items: center;
}
.modal_box1{
	position: relative;
	margin: 200px auto;
	padding: 30px;
	background-color: white;
	width: 600px;
	height: 200px;
	text-align: center;
}
.modal_box2{
	position: relative;
	margin: 200px auto;
	padding: 30px;
	background-color: white;
	width: 600px;
	height: 250px;
	text-align: center;
}
.modal_idtext{
	font-size: 20px;
	margin: 30px 0 40px;
}
.closs_btn{
	position: absolute;
	cursor:pointer;
	top: 10px;
	right: 10px;
	width: 30px;
	height: 30px;
	font-size: 30px;
}
.user_id{
	color: blue;
	font-size: 35px;
}
.modal2{
	position: fixed;
	top:0;
	left: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0,0,0,0.3);
	z-index: 3;
	display: none;
	justify-content: center;
	align-items: center;
}
.modal_title{
	font-size: 20px;
}
.modal_err{
	color:tomato;
	height:30px;
	font-size: 14px;
}

</style>
</head>
<body>
	<div class="modal1">
		<div class="modal_box1">
			<div class="modal_idtext">
				회원님의 아이디는 "<span class="user_id">${sessionScope.id}</span>"입니다.
			</div>
			<div class="closs_btn"><i class="fas fa-times"></i></div>
			<div class="btn_box">
				<button class="pw_btn o_btn" type="button">비밀번호 찾기</button>
			</div>
		</div>
	</div>
	<div class="modal2">
		<div class="modal_box2">
			<form action="${path}/member/pw_update" method="POST" id="frm_mem" name="frm_mem">
				<div class="closs_btn"><i class="fas fa-times"></i></div>
				<div class=" modal_title">비밀번호 변경</div>
				<div class="info">
					<div class="input_box pw_box">
						<input type="password" id="input_pw" name="pw" class="input_class" maxlength="15" placeholder="수정할 비밀번호">
					</div>
				</div>
				<div class="info">
					<div class="input_box pw_box">
						<input type="password" id="input_repw" name="repw" class="input_class" maxlength="15" placeholder="비밀번호확인">
					</div>
				</div>
				<div class="modal_err"></div>
				<div class="btn_box">
					<button class="loss_pw_update o_btn" type="button">변 경 하 기</button>
				</div>
				<input type="hidden" id="id" name="id">
			</form>
		</div>
	</div>
	<header></header>
	<div class="background_box"> 
		<div class="main_box">
			<div class="img_box1">
				<img alt="" src="${path}/resources/img/cat.png">
			</div>
			<div class="text_box">
			<div class="title">아이디 찾기</div>
				<div class="info">
					<span class="input_box">
						<input type="text" id="input_name" name="name" class="input_class" maxlength="5" placeholder="이름">
					</span>
				</div>
				<div class="info">
					<span class="input_box">
						<input type="text" id="input_id_email" name="email" class="input_class" maxlength="25" placeholder="이메일">
					</span>
				</div>
				<div class="btn_box">
					<button class="id_btn o_btn" type="button">아이디 찾기</button>
				</div>
				
				<div class="underbar"></div>
				
				<div class="title">비밀번호 찾기</div>
				<div class="info">
					<span class="input_box">
						<input type="text" id="input_id" name="id" class="input_class" maxlength="15" placeholder="아이디">
					</span>
				</div>
				
				<div class="info">
					<span class="input_box">
						<input type="text" id="input_pw_email" name="email" class="input_class" maxlength="25" placeholder="이메일">
					</span>
				</div>

				<div class="btn_box">
					<button class="pw_btn o_btn" type="button">비밀번호 찾기</button>
				</div>
				<div class="underbar"></div>
				<div class="login_box">
					<div class="err_msg"></div>
					<span class="login">로그인</span> | 
					<span class="insert">회원가입 </span>
				</div>
			</div>
		</div>
	</div>
	<footer></footer>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			
		
			$('.id_btn').click(function() {	
				var valName = $.trim($('#input_name').val());
				var valEmail = $.trim($('#input_id_email').val());
			
				$.ajax({
					url:"${path}/member/loss_id",
					type: "POST",
					dataType: "text", //return, 받는타입 데이터
					data: "name="+valName+"&email="+valEmail,
					success: function(data){
						if(data == "1"){
							$('.modal1').css('display', 'block');
							$('.err_msg').text('');			
						} else if(data == "-1") {
							$('.err_msg').text('* 해당정보의 아이디가 존재하지 않습니다.');
						}
					},
					error:function(){
						alert("System Error!!");
					}
				});
			});
			
			$('.pw_btn').click(function() {
				var valId = $.trim($('#input_id').val());
				var valEmail = $.trim($('#input_pw_email').val());
				
				
				$.ajax({
					url:"${path}/member/loss_pw",
					type: "POST",
					dataType: "text", //return, 받는타입 데이터
					data: "id="+valId+"&email="+valEmail,
					success: function(data){
						if(data == "1"){
							$('.modal2').css('display', 'block');
							$('.err_msg').text('');		
							$('#id').val(valId);
						} else if(data == "-1") {
							$('.err_msg').text('* 아이디 혹은 이메일을 정확히 입력해주세요.');
						}
					},
					error:function(){
						alert("System Error!!");
					}
				});
			});
				
			//비밀번호 유효성 검사
			var pwReg = RegExp(/^[a-zA-Z0-9]{4,12}$/);
			var regEmpty = /\s/g;
			//비밀번호
			var pwflag = 0;
			var repwflag = 0;
			$('#input_pw').keyup(function(event) {
				var memPw = $.trim($('#input_pw').val());
				var memRepw = $.trim($('#input_repw').val());

				if(memPw == '' || memPw.length ==0){
					$('.modal_err').css('color', '#ff1212')
								 .text('* 필수입력 정보입니다.');
					$('.pw_box').eq(0).css('border', '1px solid #ff1212');
					pwflag = 0;
					return false;
				} else if (!pwReg.test(memPw)) {
					$('.modal_err').css('color', '#ff1212')
								 .text('* 비밀번호가 유효하지 않습니다.');
					$('.pw_box').eq(0).css('border', '1px solid #ff1212');
					pwflag = 0;
					return false;
				} else if (memPw.match(regEmpty)) {
					$('.modal_err').css('color', '#ff1212')
								 .text('* 공백없이 입력해주세요.');
					$('.pw_box').eq(0).css('border', '1px solid #ff1212');
					pwflag = 0;
					return false;
				} else {
					$('.modal_err').css('display', 'inline-block')
									   .css('color', 'mediumseagreen')
									   .text('');
					$('.pw_box').eq(0).css('border', '1px solid mediumseagreen');
					pwflag = 1;
					if(memPw != memRepw){
						$('.pw_box').eq(1).css('border', '1px solid #ff1212');
						repwflag = 0;
						return false;
					} else {
						$('.pw_box').eq(1).css('border', '1px solid mediumseagreen');
						repwflag = 1;
						return true;
					}
				}
				pwflag = 0;
				return false;
			});
			

			//비밀번호 확인
			$('#input_repw').keyup(function(event) {
				var memPw = $.trim($('#input_pw').val());
				var memRepw = $.trim($('#input_repw').val());

				if(memPw != memRepw){
					$('.pw_box').eq(1).css('border', '1px solid #ff1212');
					repwflag = 0;
					return false;
				} else {
					$('.pw_box').eq(1).css('border', '1px solid mediumseagreen');
					repwflag = 1;
					return true;
				}
				repwflag = 0;
				return false;
				
			});
			
			
			$('.closs_btn').click(function() {
				$('.modal1').css('display', 'none');
				$('.modal2').css('display', 'none');
			});
				
				
			$('.loss_pw_update').click(function() {
				if(pwflag > 0 || repwflag > 0){
					$('#frm_mem').submit();
				}else{
					$('.modal_err').text('* 비밀번호를 올바르게 입력해주세요');
				}
				
			});
			$('.login').click(function() {
				location.href="${path}/member/login";
			});
			$('.insert').click(function() {
				location.href="${path}/member/constract";
			});
			
		});
	</script>
</body>
</html>