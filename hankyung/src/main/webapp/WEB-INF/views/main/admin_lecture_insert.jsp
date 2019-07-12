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
.section_list {
	min-width: 1200px;
	width: 80%;
	margin: 0px auto;
}
.section_title {
	font-size: 20px;
	padding-left: 12px;
	position: relative;
	margin-bottom: 30px;
}
.section_bar {
	display: inline-block;
	position: absolute;
	width: 6px;
	height: 20px;
	background: #444;
	left: 0;
	top: 5px;
}
.text_box{
	width: 1000px;
	padding : 15px;
	border: 1px solid red;
	margin: 0px auto;
}
.insert_header {
	display: flex;
}
.input_wrap1 {
	margin-right: 15px;
}
.header_input {
	width: 100%;
	padding: 15px;
	outline: none;
	border-radius: 30px;
	border: 1px solid #dadada;
	margin-bottom: 10px;
}
.input_wrap2 {
	display: flex;
}
.input_lcode, .input_ltype {
	width: 50%;
	padding: 15px;
	outline: none;
	border-radius: 30px;
	border: 1px solid #dadada;
}
.input_ltype {
	margin-left: 7px;
}
.img_box {
	border: 1px solid red;
	width: 380px;
	height: 247px;
}
.img_box > img {
	width: 380px;
	height: 247px;
}

</style>
</head>
<body>

	<div class="content_area_wrapper">
		<%@ include file="../include/main_aside.jsp" %>
		<div class="nav_content_footer">
			<%@ include file="../include/main_nav.jsp" %>
			<div class="content_area">
				<div class="section_list">
					<div class="section_title">
						과정관리
						<span class="section_bar"></span>
					</div>
					<div class="text_box">
						<!-- <input type="file" name="b_file" id="b_file"> -->
						<%-- <form action="${path}/member/tch_insert" method="POST" id="" name=""> --%>
							<div class="insert_header">
								<div class="input_wrap1">
									<input type="text" class="header_input input_limg" name="limg" value="lecture01.jpg" readonly="readonly">
									<input type="text" class="header_input input_lname" name="lname" placeholder="수업 이름">
									<input type="text" class="header_input input_tname" name="tname" placeholder="담당 선생님">
									<div class="input_wrap2">
										<input type="text" class="input_lcode" name="lcode" maxlength="4" placeholder="수업 코드 (4자리 숫자)">
										<input type="text" class="input_ltype" name="ltype" placeholder="수업 타입">
									</div>
								</div>
								<div class="img_box">
									<img src="${path}/resources/img/lecture01.jpg">
								</div>
							</div>
							<!-- <div class="lecture_name">
								<div>
									<span class="input_box">
										<input type="text" id="input_limg" name="limg" class="input_class" value="lecture01.jpg" readonly="readonly">
									</span>						
								</div>
								<div>
									<span class="input_box">
										<input type="text" id="input_lname" name="lname" class="input_class"placeholder="수업 이름">
									</span>						
								</div>
								<div class="info">
									<span class="input_box">
										<input type="text" id="input_tname" name="tname" class="input_class" placeholder="담당 선생님">
									</span>						
								</div>
							</div>
							<div class="info">
								<span class="input_box">
									<input type="text" id="input_lcode" name="lcode" class="input_class" maxlength="4" placeholder="수업 코드 (4자리 숫자)">
								</span>		
								<span class="input_box">
									<input type="text" id="input_ltype" name="ltype" class="input_class" placeholder="수업 타입">
								</span>	
							</div>	
							<div class="info">
								<span class="input_box">
									<input type="text" id="input_startdate" name="startdate" class="input_class" placeholder="시작날짜 (00/00/00)">
								</span>						
								<span class="input_box">
									<input type="text" id="input_enddate" name="enddate" class="input_class" placeholder="종강날짜 (00/00/00)">
								</span>	
							</div>
							<div class="info">
								<span class="input_box">
									<input type="text" id="input_totalmem" name="totalmem" class="input_class" placeholder="총 수강인원">
								</span>	
							</div>
							<div class="info">
								<span class="input_box">
									<input type="text" id="input_supmoney" name="supmoney" class="input_class" placeholder="지원금">
								</span>						
								<span class="input_box">
									<input type="text" id="input_price" name="price" class="input_class" placeholder="가격">
								</span>								
							</div> -->
					</div>
					<div class="btn_box">
						<button class="insert_btn o_btn" type="button">수 업 등 록</button>
					</div>
				</div>
			</div>
			<%@ include file="../include/main_footer.jsp" %>
		</div>
	</div>



	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.img_box').click(function(event) {
				$('#b_file').click();
			});
			$('#b_file').change(function(event) {
				var filename = this.files[0].name;
				$('#input_limg').val(filename)
				
				$.ajax({
					type:"POST",
					url: "${path}/lecture/img",
					data: $('#frm_reply').serialize(), 
					contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
					success:function(result){
						comment_list();
						$("#replyInsert").val("");
					},
					error: function(){
						alert("System Error!!!")
					}
				});
				
				<img alt="" src="${path}/img/">  
				
			});
			
			
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
