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
	margin: 70px 0 20px;
 	height: 40px;
 	text-align: center;
 	font-size: 20px;
 	line-height: 40px;
}
.btn_box{
	height: 45px;
	display: flex;
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
.mss_info{
	color: blue;
}
.delete_text{
	border: 1px solid lightgray;
	height: 160px;
	padding: 10px;
}
.modal_back{
	position: absolute;
	display:none;
	background-color: rgba(0,0,0,0.6);
	z-index: 6;
	height: 100%;
	width: 100%;
	top: 0;
	left: 0;
}
.modal_box{
	box-sizing: border-box;
    padding: 20px;
	height: 300px;
	width: 450px;
	margin: 200px auto;
	background-color: white;
}
.modal_title{
	margin: 50px 0;
	text-align: center;
	font-size: 20px;
}
.modal_btn{
	margin : 10px 10px;
	border-radius: 30px;
	width: 100%;
	height: 100%;
	border: none;
	outline: none;
	background-color: #79CCCE;
	color:white;	
}
.modal_btn:hover{
	background-color: #70b9bb; 
	transition:0.2s;
	cursor: pointer;
}

</style>
</head>
<body>
 	<div class="modal_back">
		<div class="modal_box">
			<div class="modal_title">정말로 삭제하시겠습니까?</div>
			<div class="btn_box">
				<button class="modal_btn yes_btn" type="button">YES</button>
				<button class="modal_btn no_btn" type="button">NO</button>
			</div>
		</div>
	</div>
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
				<form action="${path}/member/pw_check" method="POST" id="frm_mem" name="frm_mem">
					<div class="title">회 원 탈 퇴</div>
					<div class="delete_text">1.개인정보는 <span class="mss_info">"개인 정보 보호 정책"에 따라 60일간 보관(잠김)</span> 
							되며, 60일이 경과된 후에는 모든 개인정보는 완전히 삭제되며 더 이상 복구할 수 없게 됩니다.<br>
							<br>
							2.작성된 게시물은 삭제되지 않으며, 익명처리 후 <span class="mss_info">HanKyung_LMS로 소유권</span>이 귀속됩니다.<br>
							<br>
							3.게시물 삭제가 필요한 경우에는 <span class="mss_info">관리자(admin@HanKyung_LMS.com)</span>에게 문의해 주시
							기 바랍니다.<br></div>
					<div class="info">
						<span class="input_box">
							<input type="password" id="input_pw" name="pw" class="input_class" maxlength="5" placeholder="비밀번호">
						</span>
					</div>
					<div class="btn_box">
						<button class="o_btn pw_check_btn" type="button">회 원 탈 퇴</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<footer></footer>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			var flag = 0;
			
			$('.pw_check_btn').click(function() {
				var pw = $('#input_pw').val();
				$.ajax({
					url:"${path}/member/pw_check?pw="+pw,
					type: "POST",
					success: function(data){
						if(data > 0){
							$('.modal_back').css('display', 'block');
						} else {
							$('input_pw').focus();
						}
					},
					error:function(){
						alert("System Error!!");
					}
				});
			});
			
			$('.yes_btn').click(function() {
				$.ajax({
					url:"${path}/member/delete",
					type: "POST",
					success: function(data){
						location.href="${path}/";
					},
					error:function(){
						alert("System Error!!");
					}
				});
			});
			
		});

	</script>	
</body>
</html>