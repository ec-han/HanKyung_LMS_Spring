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
	.check_msg{
		height: 70px;
		line-height: 50px;
		font-size: 30px;
		text-align: center;
	}
	.check{
		position:relative;
		margin-top: 25px;
		margin-left: -13px;
		height: 30px;
		/*border: 1px solid red;*/
	}
	.contents{
		position: relative;
		height: 45px;
		border: 1px solid blue;
		box-sizing: border-box;
		padding: 10px;
		border-radius: 30px;
	}
	.modal_box{
		position: absolute;
		background-color: rgba(0,0,0,0.6);
		left: 0;
		top: 0;
		width: 100vw;
		height: 100vh;
		z-index: 3;
	}
	.modal{
		display: none;
	}
	.agree_box{
		margin: 100px auto 0;
		width: 900px;
		height: 700px;
		background-color: white;
		box-sizing: border-box;
		padding: 20px;
	}
	.agree_maintitle{
		position:relative;
		text-align: center;
		font-size: 25px;
		margin: 0 auto 20px;
	}
	.agree_title{
		margin-top: 10px;
		font-size: 17px;
		font-weight: 600px;
	}
	.x_btn{
		position: absolute;
		right: 0;
		top: 0;
		height: 20px;
		width: 20px;
		line-height: 20px;
		text-align: center;
		cursor: pointer;
	}
	.agree_msg{
		height: 80%;
		border: 1px solid red;
		overflow: auto;
	}
	.detail_btn{
		position: absolute;
		right: 10px;
		top: 9px;
		font-size: 25px;
		cursor: pointer;
	}
	.err_msg{
		line-height: 45px;
		height: 45px;
	}
	.btn_box{
		height: 45px;
	}
	.agree_btn{
		border-radius: 30px;
		width: 100%;
		height: 100%;
		border: none;
		outline: none;
		background-color: blue;
		color:white;
	}
	.agree_btn:hover{
		background-color: skyblue;
		transition:0.2s;
		cursor: pointer;
	}
	.check > input{
		visibility:hidden;
	}
	.all_check > input{
		visibility: hidden;
	}
	.ck_icon{
		position:absolute;
		right:12px;
		font-size: 25px;
		color: lightgray;
	}
	.space_dot{
		margin-top : 5px;
		margin-bottom: -10px;
		border:1px dashed gray;
	}
	
	
	.check > label > span{
		color: lightgray;
	}
	.check > input:checked +label > span{
		color: mediumseagreen;
	}
	
	.one_agree_btn{
		margin: 20 auto;
	    border: 1px solid black;
	    width: 200px;
	    height: 40px;
	    text-align: center;
	    line-height: 40px;
	    border-radius: 30px;
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
				<div class="check_msg"> 동 의 </div>
				<div class="check">
					<input type="checkbox" id="allcheck">
					<label for="allcheck">
						전체 동의 체크
						<span class="ck_icon"><i class="fas fa-check-circle"></i></span>
					</label>
				</div>
				
				<div class="space_dot"></div>
				
				<div class="check"> 	
					<input type="checkbox" id="onecheck" class="ckboxs">
					<label for="onecheck">
						HANKYUNG_LMS 이용약관 동의
						<span class="ck_icon"><i class="fas fa-check-circle"></i></span>
					</label>
				</div>
				<div class="contents">
					약관 상세보기 
					<div class="detail_btn">
						<i class="fas fa-plus-circle"></i>
					</div>
				</div>
				<div class="modal_box modal">
					<div class="agree_box">
						<div class="agree_maintitle">
							HANKYUNG_LMS 이용약관 동의
							<div class="x_btn"><i class="fas fa-times"></i></div>
						</div>
						
						<div class="agree_msg">
							<div class="agree_title">
								제 1 조 (목적)
							</div>
							<div>
								1. 본 약관은 HANKYUNG_LMS 사이트가 제공하는 모든 서비스(이하 "서비스")의 이용조건 및 절차, 이용자와 HANKYUNG_LMS 사이트의 권리, 의무, 책임사항과 기타 필요한 사항을 규정함을 목적으로 합니다.
							</div>
							
							<div class="agree_title">
								제 2 조 (약관의 효력과 변경)
							</div>
							<div>
								1. HANKYUNG_LMS 사이트는 귀하가 본 약관 내용에 동의하는 경우 HANKYUNG_LMS 사이트의 서비스 제공 행위 및 귀하의 서비스 사용 행위에 본 약관이 우선적으로 적용됩니다. <br>
								2. HANKYUNG_LMS 사이트는 본 약관을 사전 고지 없이 변경할 수 있고 변경된 약관은 HANKYUNG_LMS 사이트 내에 공지하거나 e-mail을 통해 회원에게 공지하며, 공지와 동시에 그 효력이 발생됩니다. <br>
								이용자가 변경된 약관에 동의하지 않는 경우, 이용자는 본인의 회원등록을 취소 (회원탈락)할 수 있으며 계속 사용의 경우는 약관 변경에 대한 동의로 간주 됩니다.
							</div>
							
							<div class="agree_title">
								제 3 조 (약관 외 준칙)
							</div>
							<div>
								1. 본 약관에 명시되지 않은 사항은 전기통신기본법, 전기통신사업법, 정보통신윤리위원회심의규정, 정보통신 윤리강령, 프로그램보호법 및 기타 관련 법령의 규정에 의합니다.
							</div>
							
							<div class="agree_title">
								제 4 조 (용어의 정의)
							</div>
							<div>
								본 약관에서 사용하는 용어의 정의는 다음과 같습니다.<br>
								1. 이용자 : 본 약관에 따라 HANKYUNG_LMS 사이트가 제공하는 서비스를 받는 자.<br>
								2. 가입 : HANKYUNG_LMS 사이트가 제공하는 신청서 양식에 해당 정보를 기입하고, 본 약관에 동의하여 서비스 이용계약을 완료시키는 행위.<br>
								3. 회원 : HANKYUNG_LMS 사이트에 개인 정보를 제공하여 회원 등록을 한 자로서 HANKYUNG_LMS 사이트가 제공하는 서비스를 이용할 수 있는 자.<br>
								4. 비밀번호 : 이용자와 회원ID가 일치하는지를 확인하고 통신상의 자신의 비밀보호를 위하여 이용자 자신이 선정한 문자와 숫자의 조합.<br>
								5. 탈퇴 : 회원이 이용계약을 종료시키는 행위.
							</div>
							
							<div class="agree_title">
								제 5 조 (이용계약의 성립)
							</div>
							<div>
								1. 이용계약은 신청자가 온라인으로 HANKYUNG_LMS 사이트에서 제공하는 소정의 가입신청 양식에서 요구하는 사항을 기록하여 가입을 완료하는 것으로 성립됩니다.<br>
								2. HANKYUNG_LMS 사이트는 다음 각 호에 해당하는 이용계약에 대하여는 가입을 취소할 수 있습니다.<br>
								① 다른 사람의 명의를 사용하여 신청하였을 때<br>
								② 이용계약 신청서의 내용을 허위로 기재하였거나 신청하였을 때<br>
								③ 다른 사람의 HANKYUNG_LMS 사이트 서비스 이용을 방해하거나 그 정보를 도용하는 등의 행위를 하였을 때<br>
								④ HANKYUNG_LMS 사이트를 이용하여 법령과 본 약관이 금지하는 행위를 하는 경우<br>
								⑤ 기타 HANKYUNG_LMS 사이트가 정한 이용신청요건이 미비 되었을 때
							</div>
							
							<div class="agree_title">
								제 6 조 (회원정보 사용에 대한 동의)
							</div>
							<div>
								1. 회원의 개인정보는 공공기관의 개인정보보호에 관한 법률에 의해 보호됩니다.<br>
								2. HANKYUNG_LMS 사이트의 회원 정보는 다음과 같이 사용, 관리, 보호됩니다.<br>
								① 개인정보의 사용 : HANKYUNG_LMS 사이트는 서비스 제공과 관련해서 수집된 회원의 신상정보를 본인의 승낙 없이 제3자에게 누설, 배포하지 않습니다.
								단, 전기통신기본법 등 법률의 규정에 의해 국가기관의 요구가 있는 경우, 범죄에 대한 수사상의 목적이 있거나 정보통신윤리 위원회의 요청이 있는 경우 또는 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우, 귀하가 HANKYUNG_LMS 사이트에 제공한 개인정보를 스스로 공개한 경우에는 그러하지 않습니다.<br>
								② 개인정보의 관리 : 귀하는 개인정보의 보호 및 관리를 위하여 서비스의 개인정보관리에서 수시로 귀하의 개인정보를 수정/삭제할 수 있습니다.<br>
								③ 개인정보의 보호 : 귀하의 개인정보는 오직 귀하만이 열람/수정/삭제 할 수 있으며, 이는 전적으로 귀하의 ID와 비밀번호에 의해 관리되고 있습니다.
								따라서 타인에게 본인의 ID와 비밀번호를 알려주어서는 안되며, 작업 종료 시에는 반드시 로그아웃 해 주시기 바랍니다.<br>
								3. 회원이 본 약관에 따라 이용신청을 하는 것은, HANKYUNG_LMS 사이트가 신청서에 기재된 회원정보를 수집, 이용하는 것에 동의하는 것으로 간주됩니다.<br>
							</div>
							
							<div class="agree_title">
								제 7 조 (사용자의 정보 보안)
							</div>
							<div>
								1. 가입 신청자가 HANKYUNG_LMS 사이트 서비스 가입 절차를 완료하는 순간부터 귀하는 입력한 정보의 비밀을 유지할 책임이 있으며, 회원의 ID와 비밀번호를 사용하여 발생하는 모든 결과에 대한 책임은 회원 본인에게 있습니다.<br>
								2. ID와 비밀번호에 관한 모든 관리의 책임은 회원에게 있으며, 회원의 ID나 비밀번호가 부정하게 사용 되었다는 사실을 발견한 경우에는 즉시 HANKYUNG_LMS 사이트에 신고하여야 합니다. 
								신고를 하지 않음으로 인한 모든 책임은 회원 본인에게 있습니다. 
								종료하지 아니함으로써 제3자가 귀하에 관한 정보를 이용하게 되는 등의 결과로 인해 발생하는 손해 및 손실에 대하여 HANKYUNG_LMS 사이트는 책임을 부담하지 아니합니다.<br>
							</div>
							
							<div class="agree_title">
								제 8 조 (서비스의 중지)
							</div>
							<div>		
								1. HANKYUNG_LMS 사이트는 이용자가 본 약관의 내용에 위배되는 행동을 한 경우, 임의로 서비스 사용을 제한 및 중지할 수 있습니다.<br>
							</div>
							
							<div class="agree_title">
								제 9 조 (서비스의 변경 및 해지)
							</div>
							<div>		
								1. HANKYUNG_LMS 사이트는 귀하가 서비스를 이용하여 기대하는 손익이나 서비스를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지 않으며, 
								회원이 본 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관하여는 책임을 지지 않습니다. 의한 손해에 대하여 책임을 부담하지 아니합니다.<br>
							</div>
							
							<div class="agree_title">
								제 10 조 (게시물의 저작권)
							</div>
							<div>						
								1. 귀하가 게시한 게시물의 내용에 대한 권리는 귀하에게 있습니다.<br>
								2. HANKYUNG_LMS 사이트는 게시된 내용을 사전 통지 없이 편집, 이동할 수 있는 권리를 보유하며, 게시판운영 원칙에 따라 사전 통지 없이 삭제할 수 있습니다.<br>
								3. 귀하의 게시물이 타인의 저작권을 침해함으로써 발생하는 민, 형사상의 책임은 전적으로 귀하가 부담하여야 합니다.
							</div>
							
							<div class="agree_title">
								제 11 조 (HANKYUNG_LMS 사이트의 의무)
							</div>
							<div>		
								1. HANKYUNG_LMS 사이트는 회원의 개인 신상 정보를 본인의 승낙없이 타인에게 누설, 배포하지 않습니다. 
								다만, 전기통신관련법령 등 관계법령에 의하여 관계 국가기관 등의 요구가 있는 경우에는 그러하지 아니합니다.<br>
							</div>
							
							<div class="agree_title">
								제 12 조 (회원의 의무)
							</div>
							<div>		
								1. 회원 가입 시에 요구되는 정보는 정확하게 기입하여야 합니다. 또한 이미 제공된 귀하에 대한 정보가 정확한 정보가 되도록 유지, 갱신하여야 하며, 
								회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.<br>
								2. 회원은 HANKYUNG_LMS 사이트의 사전 승낙 없이 서비스를 이용하여 어떠한 영리행위도 할 수 없습니다.<br>
							</div>
							
							<div class="agree_title">
								제 13 조 (양도금지)
							</div>
							<div>		
								1. 회원이 서비스의 이용권한, 기타 이용계약 상 지위를 타인에게 양도, 증여할 수 없습니다.<br>
							</div>
							
							<div class="agree_title">
								제 14 조 (손해배상)
							</div>
							<div>		
								1. HANKYUNG_LMS 사이트는 무료로 제공되는 서비스와 관련하여 회원에게 어떠한 손해가 발생하더라도 HANKYUNG_LMS 
								사이트가 고의로 행한 범죄행위를 제외하고 이에 대하여 책임을 부담하지 아니합니다.<br>
							</div>
							
							<div class="agree_title">
								제 15 조 (면책조항)
							</div>
							<div>		
								1. HANKYUNG_LMS 사이트는 회원이나 제3자에 의해 표출된 의견을 승인하거나 반대하거나 수정하지 않습니다. HANKYUNG_LMS 사이트는 어떠한 경우라도 회원이 서비스에 담긴 정보에 의존해 얻은 이득이나 입은 손해에 대해 책임이 없습니다. 
								금전적 거래등과 관련하여 어떠한 책임도 부담하지 아니하고, 회원이 서비스의 이용과 관련하여 기대하는 이익에 관하여 책임을 부담하지 않습니다.<br>
							</div>
							
							<div class="agree_title">
								제 15 조 (면책조항)
							</div>
							<div>		
								1. HANKYUNG_LMS 사이트는 회원이나 제3자에 의해 표출된 의견을 승인하거나 반대하거나 수정하지 않습니다. HANKYUNG_LMS 사이트는 어떠한 경우라도 회원이 서비스에 담긴 정보에 의존해 얻은 이득이나 입은 손해에 대해 책임이 없습니다. 
								금전적 거래등과 관련하여 어떠한 책임도 부담하지 아니하고, 회원이 서비스의 이용과 관련하여 기대하는 이익에 관하여 책임을 부담하지 않습니다.<br>
							</div>

							<div class="agree_title">
								제 16 조 (재판관할)
							</div>
							<div>		
								1. HANKYUNG_LMS 사이트와 이용자 간에 발생한 서비스 이용에 관한 분쟁에 대하여는 대한민국 법을 적용하며, 본 분쟁으로 인한 소는 대한민국의 법원에 제기합니다.<br>
							</div>

						</div>	
						<div class="one_agree_btn">동 의</div>	
					</div>
				</div>
				
				
				<div class="check"> 	
					<input type="checkbox" id="twocheck"  class="ckboxs">			
					<label for="twocheck">
						두번째 동의 체크
						<span class="ck_icon"><i class="fas fa-check-circle"></i></span>
					</label>
				</div>
				<div class="contents">
					약관 내용
					<div class="detail_btn">
						<i class="fas fa-plus-circle"></i>
					</div> 
				</div>
				<div class="modal_box modal">
					<div class="agree_box">
						<div class="agree_title">
							두번째 약관
							<div class="x_btn">X</div>
						</div>
						<div class="agree_msg">약관내용2</div>
					</div>
				</div>
				
				
				<div class="check"> 
					<input type="checkbox" id="threecheck"  class="ckboxs">
					<label for="threecheck">
						세번째 동의 체크
						<span class="ck_icon"><i class="fas fa-check-circle"></i></span>
					</label>
				</div>
				<div class="contents">
					약관 내용
					<div class="detail_btn">
						<i class="fas fa-plus-circle"></i>
					</div> 
				</div>
				<div class="modal_box modal">
					<div class="agree_box">
						<div class="agree_title">
							세번째 약관
							<div class="x_btn">X</div>
						</div>
						<div class="agree_msg">약관내용3</div>
					</div>
				</div>
				<div class="err_msg">
					
					
				</div>
				<div class="btn_box">
					<button class="agree_btn">동 의</button>
				</div>
			</div>
		</div>
	</div>
	<footer></footer>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.detail_btn').click(function() {
				$(this).parent().next().css("display", "block");
			});
			$('.x_btn').click(function() {
				$('.modal').css("display", "none");
			});
			
			
			$('#allcheck').click(function() {
				var flag = $(this).is(':checked');				
				if(flag == true){
					$('.ckboxs').prop('checked', true);
					
				}else{
					$('.ckboxs').prop('checked', false);
				}
			});
			
			//동의 버튼을 눌렀을 때 3개다 체크가 되어있다면 전체 동의도 on, 전체동의 일때 다른체크를 해제한다면 전체동의도 off
			$('.ckboxs').click(function(event) {
				var ckleng = $('.ckboxs:checkbox:checked').length;
				if (ckleng == 3) {
					$('#allcheck').prop('checked', true);
 					$('.all_check > label > .ck_icon').css('color', 'mediumseagreen');
				} else {
					$('#allcheck').prop('checked', false);
					$('.all_check > label > .ck_icon').css('color', 'lightgray');
				}
			});
			
			
		});
	</script>
</body>
</html>