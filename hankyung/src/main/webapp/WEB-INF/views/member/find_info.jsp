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
	text-align: center;
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
	font-size: 14px;
}


.idtext{
	font-size: 20px;
	margin: 150px 0 40px;
	text-align: center;
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
.pw_title{
	font-size: 20px;
	text-align: center;
	margin: 80px auto 40px
}
.modal_err{

}

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
				<c:choose>
					<c:when test="${empty sessionScope.flag}">
						<div class="idtext">
							회원님의 아이디는 "<span class="user_id">${sessionScope.id}</span>"입니다.
						</div>
						<div class="btn_box">
							<button class="pw_btn o_btn" type="button">비밀번호 찾기</button>
						</div>
						<div class="underbar"></div>
						<div class="btn_box">
							<button class="login o_btn" type="button">로 그 인</button>
						</div>
					</c:when>
					<c:otherwise>
						<form action="${path}/member/pw_update" method="POST" id="frm_mem" name="frm_mem">
							<div class="closs_btn"><i class="fas fa-times"></i></div>
							<div class=" pw_title">비밀번호 변경</div>
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
							<div class="err_msg"></div>
							<div class="btn_box">
								<button class="loss_pw_update o_btn" type="button">변 경 하 기</button>
							</div>
							<input type="hidden" id="id" name="id" value="${sessionScope.id}">
							<div class="underbar"></div>
							<div class="login_box">
								<span class="login">로그인</span> | 
								<span class="insert">회원가입 </span>
							</div>
						</form>
					</c:otherwise>
				</c:choose>
				
			</div>
		</div>
	</div>
	<footer></footer>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			
			$('.pw_btn').click(function() {
				var valId = $.trim($('#input_id').val());
				var valEmail = $.trim($('#input_pw_email').val());
				
				location.href="${path}/member/loss_info";
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
					$('.err_msg').css('color', '#ff1212')
								 .text('* 필수입력 정보입니다.');
					$('.pw_box').eq(0).css('border', '1px solid #ff1212');
					pwflag = 0;
					return false;
				} else if (!pwReg.test(memPw)) {
					$('.err_msg').css('color', '#ff1212')
								 .text('* 비밀번호가 유효하지 않습니다.');
					$('.pw_box').eq(0).css('border', '1px solid #ff1212');
					pwflag = 0;
					return false;
				} else if (memPw.match(regEmpty)) {
					$('.err_msg').css('color', '#ff1212')
								 .text('* 공백없이 입력해주세요.');
					$('.pw_box').eq(0).css('border', '1px solid #ff1212');
					pwflag = 0;
					return false;
				} else {
					$('.err_msg').css('display', 'inline-block')
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