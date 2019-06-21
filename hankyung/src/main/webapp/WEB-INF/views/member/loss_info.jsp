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
.err_msg{
	color:tomato;
	height:30px;
	font-size: 14px;
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
			<form action="${path}/member/find_info" method="POST" id="frm_mem" name="frm_mem">
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
				<input type="hidden" id="id" name="id" class="input_class">
			</form>	
				<div class="underbar"></div>
			<form action="${path}/member/find_info" method="POST" id="frm_pw" name="frm_pw">
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
			</form>		
			</div>
		</div>
	</div>
	<footer></footer>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			pw_idck();
			
			$('.id_btn').click(function() {	
				var valName = $.trim($('#input_name').val());
				var valEmail = $.trim($('#input_id_email').val());
			
				$.ajax({
					url:"${path}/member/loss_id",
					type: "POST",
					//dataType: "text", //return, 받는타입 데이터
					data: "name="+valName+"&email="+valEmail,
					success: function(data){
						if(data.flag == "1"){
							$('#id').val(data.id);
							$('#frm_mem').submit();
							
						} else if(data.flag == "-1") {
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
					data: "id="+valId+"&email="+valEmail,
					success: function(data){
						if(data.flag == "1"){
							$('#frm_pw').submit();
						} else if(data.flag == "-1") {
							$('.err_msg').text('* 아이디 혹은 이메일을 정확히 입력해주세요.');
						}
					},
					error:function(){
						alert("System Error!!");
					}
				});
			});
			
			$('.login').click(function() {
				location.href="${path}/member/login";
			});
			$('.insert').click(function() {
				location.href="${path}/member/constract";
			});
			
		});
		function pw_idck(){
			if($('#input_id').val() != ""){
				$('#input_pw_email').focus();
			}
		}
	</script>
</body>
</html>