<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${path}/resources/css/common.css?v=1">
<link rel="stylesheet" href="${path}/resources/css/main_common.css?v=1">
<meta charset="UTF-8">
<title>선생님 등록</title>
<style type="text/css">
.info_container{
	margin: 100px auto;
	width: 900px;
	height: 350px;
	border: 1px solid black;
	padding: 40px; 
}
.img_box{
	border-right: 1px solid black;
	width : 180px;
	height : 240px;
}
.text_box{
	padding : 15px;
	background-color: white;
}
.info_box{
	border: 1px solid black;
	width: 100%;
	display: flex;
}
.info{
	margin: 8px 0;
	height: 40px;
	display: flex;
	justify-content: space-between;
	line-height: 40px;
}
.input_box{
	border: 1px solid #dadada;
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
	width: 44%;
}
.thirdbox{
	width: 27%;
}
.input_class{
	margin: 0 auto;
	height: 94%;
	width: 80%;
	border:none;
	outline:none;
	font-size:15px;
}
.o_btn{
	margin-top: 10px;
	border-radius: 30px;
	width: 100%;
	height: 40px;
	border: none;
	outline: none;
	background-color: #79CCCE;
	color:white;
}
.o_btn:hover{
	background-color: #70b9bb; 
	transition:0.2s;
	cursor: pointer;
}
.insert_btn{
	border: none;
	outline: none;
	text-align: center;
}
</style>
</head>
<body>

	<div class="content_area_wrapper">
		<%@ include file="../include/main_aside.jsp" %>
		<div class="nav_content_footer">
			<%@ include file="../include/main_nav.jsp" %>
			
			<div class="content_area">
				<div class="info_container">
					<div class="info_box">
						<div class="img_box"></div>
						<div class="text_box">
							<form action="${path}/member/tch_insert" method="POST" id="frm_mem" name="frm_mem">
								<div class="info">
									<span class="input_box fristbox">
										<input type="text" id="input_name" name="name" class="input_class" maxlength="5" placeholder="이름">
									</span>
									<span class="input_box fristbox">
										<input type="text" id="input_id" name="id" class="input_class" maxlength="15" placeholder="아이디">
									</span>
								</div>
								
								<div class="info">
									<span class="input_box secondbox">
										<input type="text" id="input_major" name="major" class="input_class" maxlength="25" placeholder="전공">
									</span>
									<span class="input_box secondbox">
										<input type="text" id="input_pw" name="pw" class="input_class" maxlength="15" placeholder="비밀번호">
									</span>
								</div>
								
								<div class="info">
									<span class="input_box thirdbox">
										<input type="text" id="input_phone1" name="phone1" class="input_class input_phone" maxlength="3" placeholder="전화번호">
									</span>
									-
									<span class="input_box thirdbox">
										<input type="text" id="input_phone2" name="phone2" class="input_class input_phone" maxlength="4">
									</span>
									-
									<span class="input_box thirdbox">
										<input type="text" id="input_phone3" name="phone3" class="input_class input_phone" maxlength="4">
									</span>
									<input type="hidden" id="phone" name="phone">
								</div>
								
								<div class="info">
									<span class="input_box">
										<input type="text" id="input_email" name="email" class="input_class" maxlength="25" placeholder="이메일">
									</span>
								</div>
								<input type="hidden" id="type" name="type">
							</form>
						</div>	
					</div>
					<div class="btn_box">
						<button class="insert_btn o_btn" type="button">강 사 등 록</button>
					</div>
				</div>
			</div>
			
			
			<%@ include file="../include/main_footer.jsp" %>
		</div>
	</div>



	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.insert_btn').click(function(event) {
				var phone = $.trim($('#input_phone1').val()+$('#input_phone2').val()+$('#input_phone3').val());
				$('#phone').val(phone);
				$('#type').val(1);
				
				$('#frm_mem').submit();
			});	
		});
	</script>
</body>
</html>
