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
	height: 580px;
	border: 1px solid black;
	padding: 40px; 
}
.img_container{
	width : 100%;
	height : 160px;
	display: flex;
	margin-bottom: 20px;
}

.text_box{
	width:100%;
	padding : 15px;
	background-color: white;
}
.lecture_box{
	border: 1px solid black;
	width: 100%;
	display: flex;
}
.info{
	margin: 0 0 20px;
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
.img_box{
	border: 1px solid black;
	width: 35%;
	height: 160px;
	text-align: center;
	line-height: 160px;
	font-size: 20px;
}
.lecture_name{
	width: 65%;
	padding: 0 10px;
}
#b_file{
	display: none;
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
					<div class="lecture_box">
						<div class="text_box">
							<input type="file" name="b_file" id="b_file">
							<form action="${path}/member/tch_insert" method="POST" id="frm_mem" name="frm_mem">
							<div class="img_container">
								<div class="img_box">
									
									이미지 등록
								</div>
								<div class="lecture_name">
									<div class="info">
										<span class="input_box">
											<input type="text" id="input_limg" name="limg" class="input_class" placeholder="수업 이미지">
										</span>						
									</div>
									<div class="info">
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
							</div>
							</form>
						</div>
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
			
			img_box
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
