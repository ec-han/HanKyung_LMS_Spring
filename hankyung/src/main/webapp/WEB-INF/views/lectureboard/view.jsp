<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.11/handlebars.min.js"></script>
<link rel="stylesheet" href="${path}/resources/lightbox/css/lightbox.css">
<script src="${path}/resources/lightbox/js/lightbox.js"></script>

<link rel="stylesheet" href="${path}/resources/css/common.css?v=1">
<link rel="stylesheet" href="${path}/resources/css/main_common.css?v=1">
<link rel="stylesheet" href="${path}/resources/css/board_common.css?v=1">
<title>게시글 상세페이지</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.js"></script>
<style type="text/css">
#regi_table_wrap > table > thead > tr, #regi_table_wrap > table > tfoot > tr {
	background: #f4f7ff; /* #eaecf4 */
}
#regi_table_wrap > table > thead > tr:nth-child(2) {
	background: #f8f9fc;
}
#regi_table_wrap > table > tbody > tr {
	background: white;
}
.btn_right {
	float: right;
    margin-right: 1rem;
}
.regi-tb-center {
	font-size: 1rem;
    font-weight: 400;
    display: flex;
    align-items: center;
    line-height: 23px;
}
#btn_modi_view {
	color: #404988;
}
#regi_table_wrap .table td, #regi_table_wrap .table th {
	padding: 1.4rem;
    vertical-align: top;
    border-top: 1px solid #e3e6f0;
}
#view_regi_num{
	flex: 0.5;
    float: left;
    order: 1;
}
#view_regi_title {
    flex: 9.5;
    order: 2;
    text-align: center;
    justify-content: center;
}
.regi-info {
	display: flex;
    flex-direction: row;
}
.info_date {
	order: 1;
    flex: 3;
}
.info_writer {
	order: 2;
    flex: 3;
}
.info_viewcnt {
	order: 3;
    flex: 3;
}
/* 삭제 확인 모달창 */
#bd_modal_all {
	border: 3px solid black;
	position: fixed;
	z-index: 1001;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	overflow: auto; /* 넘어가면 스크롤 만들어줌  */
	background-color: rgba(0,0,0,0.15);
	align-items: center;
	justify-content: center;
	display: none;
}
#bd_modal {
	border-radius: 0.5rem;
    background-color: #f4f7ff;
    color: white;
    width: 30rem;
    height: 18rem;
    margin: 240px auto;
    box-shadow: 0 3px 10px 0 rgba(0,0,0,0.01), 0 3px 15px 0 rgba(0,0,0,0.05);
}
.bd_modal_txt {
	border: none;
    color: #555;
    outline: none;
    font-weight: bold;
    font-size: 1.45rem;
    line-height: 1.45rem;
    height: 1.45rem;
    text-align: center;
    letter-spacing: -1;
}

.bd_wrap{
	width: 30rem;
    height: 15rem;
    display: flex;
    justify-content: center;
    align-items: center;
    position: relative;
}
#bd_h_wrap {
    float: left;
    position: absolute;
    top: 0;
    left: 0;
    display: inline-block;
    width: 30rem;
    height: 4rem;
    background-color: #79CDCF;
}
#bd_h_wrap > h3 {
    font-weight: bold;
    font-size: 1.2rem;
    color: white;
    text-align: left;
    padding-left: 1rem;
}

.bd_btn_wrap {
	position: absolute;
	bottom: 0;
	display: flex;
	padding-left: 10px;
	cursor: pointer;
}
.bd_modal_btn{
	width: 105px;
	margin: 0 5px;
	font-size: 20px;
	font-weight: 600;
	line-height: 30px;
	height: 50px;
	padding-top: 1px;
	text-align: center;
	color: #fff;
	justify-content: center;
	align-items: center;
	text-decoration: none;
	flex-direction: row;
}
#bd_btn_no{
	order: 1;
	padding: 10px;
	background-color: #FFC000;
    border-radius: 0.4rem;
}
#bd_btn_no:hover, #bd_btn_yes:hover {
	color: white;
	text-decoration: none;
}
#bd_btn_yes {
	order: 2;
	padding: 10px;
	background-color: #79CDCF;
	border-radius: 0.4rem;
}

#bd_close_modal {
	position: absolute;
	top: 0;
	left: 100%;
	background-color: #FFC000;
	color: white;
	font-weight: bold;
	width: 2rem;
    height: 2rem;
    border: none;
    cursor: pointer;
    box-shadow: 0 3px 10px 0 rgba(0,0,0,0.01), 0 3px 15px 0 rgba(0,0,0,0.05);
}
#btn_rpl {
    transform: rotate(180deg);
}
.table_wrapper {
	margin: 0;
}

.has-img {
	display: flex;
}


</style>
</head>
<body>
	<div class="content_area_wrapper">
		<%@ include file="../include/main_aside.jsp" %>
		<div class="nav_content_footer">
			<%@ include file="../include/main_nav.jsp" %>
			<div class="content_area">
			<!-- 본문 내용에 따라 바뀔 곳 시작 : body라 생각하면 됨  -->
				<div id="regi_content">
					<div>
						<div class="page_body">
							<div class="bd_hd">
								<div class="box-body">
									<div class="row order-2 table_wrapper">
			              				<div class="col-sm-12 table_wrapper" id="regi_table_wrap">
											<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
							                  <thead>
							                  	<tr>
													<th>
														<div class="regi-tb-center">
															<span id="view_regi_num">No.${one.lbnum}</span>
															<span id="view_regi_title"><strong>${one.title}</strong></span>
														</div>
													</th>
												</tr>
												<tr>
													<td>
														<div class="regi-info">
															<span class="info_date">
																<strong>작성일 : </strong>
																<fmt:formatDate pattern="yyyy.MM.dd" value="${one.regdate}"/>
															</span>
															<span class="info_writer"><strong>작성자 : </strong>${one.writer}</span>
															<span class="info_viewcnt"><strong>조회수 : </strong>${one.viewcnt}</span>
														</div>
													</td>
												</tr>
							                  </thead>
							                  <tbody>
							                  	<tr>
													<td>
														<div class="data-bd-cont">
															<br>${one.content}<br>
														</div>
													</td>
												</tr>
							                  </tbody>
							                  <tfoot>
							                  	<tr>
							                  		<td>
							                  			<div class="write_input_wrap">
															<ul id="uploadedList" class="mailbox-attachments clearfix uploadedList"></ul>
														</div>
							                  		</td>
							                  	</tr>
											  </tfoot>
			                				</table>
										</div>
									</div>
									<div class="btn_area">
										<c:if test="${sessionScope.name == one.writer}">
										<div class="btn_right board_regi_btn">
											<i class="fas fa-eraser" id="btn_del"></i>
											<a href="${path}/lectureboard/update?bno=${one.bno}">
												<i class="fas fa-edit" id="btn_modi_view"></i>
											</a>
										</div>
										</c:if>  
										<div class="btn_left board_regi_btn">
											<a href="${path}/lectureboard/list?viewoption=${one.btype}">
												<i class="far fa-list-alt" id="btn_list"></i>
											</a>
											
											<!-- 답글 버튼 : 묻고 답하기 게시판이고 선생님만 답글을 달 수 있어야 함-->
											<c:if test="${sessionScope.type == '1' && !empty sessionScope.id && one.btype=='1'}">
											<a href="${path}/lectureboard/answer?bno=${one.bno}">
												<i class="fas fa-reply" id="btn_rpl"></i>
											</a>
											</c:if>
										</div>
									</div>
									
									<!-- 댓글 목록 시작  -->
									<div class="reply-wrapper">
										<div id="commentList"></div>
									</div>
									<!-- 댓글 목록 끝  -->		
									
									
									<!-- 모달 창  -->
									<div id="bd_modal_all">
										<div id="bd_modal">
											<div class="bd_wrap">
												<div id="bd_h_wrap">
													<h3>글 삭제</h3>
												</div>
												<p><span class="bd_modal_txt">정말 <span class="bd_focus_text">삭제</span>하시겠습니까?</span></p>
												<div class="bd_btn_wrap">
													<a class="bd_modal_btn" id="bd_btn_no">아니오</a>
													<a class="bd_modal_btn" id="bd_btn_yes">예</a>
												</div>
												<button id="bd_close_modal">X</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<%@ include file="../include/main_footer.jsp" %>
		</div>
	</div>
	
	
	<script id="fileTemplate" type="text/x-handlebars-template">
    <li>
        <div class="mailbox-attachment-icon has-img">
            <center><img src="{{imgSrc}}" alt="Attachment" class="s_img"></center>
        </div>
        <div class="mailbox-attachment-info">
            <a href="{{originalFileUrl}}" class="mailbox-attachment-name">
                <i class="fa fa-paperclip"></i> {{originalFileName}}
            </a>
        </div>
    </li>
	</script>
	
	<script src="${path}/resources/summernote/lang/summernote-ko-KR.js"></script>
	<script type="text/javascript">
	
		//Handlebars 파일템플릿 컴파일
		var fileTemplate = Handlebars.compile($("#fileTemplate").html());
	
		
	$(document).ready(function(){
		comment_list();
		
		// 첨부파일 출력
		var listCnt = listAttach();
		
		// 첨부파일 0건일 때 '첨부파일이 없습니다' 출력
		if(listCnt == 0){
			alert("listAttach 실행!"+listCnt);
			var text = '<span class="no_attach">첨부파일이 없습니다.</span>';
			$('#uploadedList').html(text);
		}
		
		
		
		
		/* 글 삭제 모달 창 */
		$('#btn_del').click(function(){
			$('#bd_modal_all').css('display','block');
		});
		$('#bd_close_modal').click(function(){
			$('#bd_modal_all').css('display','none');
		});
		$('#bd_btn_no').click(function(){
			$('#bd_modal_all').css('display','none');
		});
		$('#bd_btn_yes').click(function(){// 삭제 확인 모달창에서 "예"버튼 눌렀을 때 
			location.href = "${path}/lectureboard/delete?lbnum=${one.lbnum}&btype=${one.btype}";
		});
		
	
	});
	
	// 댓글 등록 버튼을 눌렀을 때 동작 
	$(document).on("click","#btn-create-btn", function(){
		var content = $("#summernote").val();
		if(content == "<p><br></p>") {
			// 유효성체크(null 체크)
			$("#summernote").focus();//안가고있음
			return false;
		} else {
			// 게시글번호 담아서 보냄 
			var bno = '${one.bno}';
			$('#re_bno').val(bno);
			//alert(content);
			
			$.ajax({
				url: "${path}/reply/create?bno="+bno,
				type: "POST",
				data: $("#frm_reply").serialize(),
				contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
				success: function(){
					//alert("성공");
					comment_list(); // 댓글목록 최신화 
					$("#summernote").val(""); // 댓글입력창 초기화 (등록이 되면 댓글입력칸은 비어있어야함)
				},
				error: function(){
					alert("System Error!!!!");
				}
			});
		}
	});
	
	// 댓글 띄우는 기능
	function comment_list(){
		//alert("comment_list()실행");
		$.ajax({
			type: "get",
			url: "${path}/reply/list?bno=${one.bno}",
			success: function(result){
				$("#commentList").html(result);
			}
		});
	}
	
	//첨부파일 리스트를 출력하는 함수
	function listAttach(){
		var listCnt = 0;
		$.ajax({
			type: "post",
			url: "${path}/lectureboard/getAttach/${one.bno}", // 쿼리스트링이 아니고 그냥 url임 EX) getAttach/25 값이 달라지니까 controller에서 @RequestMapping("getAttach/{bno}")게 받음
			async: false,
			success: function(list){
				// list : json
				console.log(list);
				listCnt = list.length;

				console.log(list.length);
				/* 
					jQuery each()는 반복문
					i와 e는 index와 element로
					json에서 { 0: "apple.png"}일 때
					index는 0, element는 apple.png가 됨
				*/
				$(list).each(function(i, e){
					/* console.log(list) */
					printFiles(e); // 첨부파일 출력 메서드 호출
				});
			}
		});
		return listCnt;
	}
	
	// 파일 정보 처리
	function getFileInfo(fullName) {
	    var originalFileName;   // 화면에 출력할 파일명
	    var imgSrc;                   // 썸네일 or 파일아이콘 이미지 파일 출력 요청 URL
	    var originalFileUrl;       // 원본파일 요청 URL
	    var uuidFileName;       // 날짜경로를 제외한 나머지 파일명 (UUID_파일명.확장자)
	    var basicFileName = fullName;      // 삭제시 값을 전달하기 위한 파일이름을 줄이지 않은 url
		
	    // 이미지 파일이면
	    if (checkImageType(fullName)) {
	    	alert("이미지 파일 체크");
	        imgSrc = "${path}/upload/displayFile?fileName=" + fullName; // 썸네일 이미지 링크
	        // /2019/07/s_7bd89afd-ccf6-41b9-88a7-ce15008384bb_Tulips
	        // 실제 uuid가 붙은 원본 파일 이름 찾아줌 
	        uuidFileName = fullName.substr(14);
	        // /2019/07/12/7bd89afd-ccf6-41b9-88a7-ce15008384bb_Tulips
	        // 0,12 0부터 11까지 자르고, 14부터 ~~ 쭉을 합침. 12,13이 빠짐 12,13은 s_임. 
	        // 파일이름을 잘라서 실제 원본 파일 이름 구해줌 
	        var originalImg = fullName.substr(0, 12) + fullName.substr(14);
	        // 원본 이미지 요청 링크(파일 다운로드 요청 링크)
	        originalFileUrl = "${path}/upload/displayFile?fileName=" + originalImg;
	    } else {
	        imgSrc = "${path}/resources/img/file-icon.png"; // 파일 아이콘 이미지 링크
	        uuidFileName = fullName.substr(12);
	        // 파일 다운로드 요청 링크
	        originalFileUrl = "${path}/upload/displayFile?fileName=" + fullName;
	    }
	    // 라이언13.jpg
	    originalFileName = uuidFileName.substr(uuidFileName.indexOf("_") + 1);
	    // 전체 파일명의 크기가 14보다 작으면 그대로 이름 출력,
	    // 14보다 크면 실행(파일이름이 엄청 길면 한 줄 내려오거나 잘리니까 줄이고 ...으로 축약)
	    if(originalFileName.length > 14) {
	    	// 앞에서부터 11글자 자름
	    	var shortName = originalFileName.substr(0, 10);
	    	// .을 기준으로 배열 생성
	    	var formatVal = originalFileName.split(".");
		// formatVal = originalFileName.substr(originalFileName.length-3);
		// 파일명에 .이 여러개 들어가 있을수도 있음
		// 배열크기를 구해와서 무조건 맨 마지막 확장자부분 출력되게 함
		var arrNum = formatVal.length - 1
		// 맨 처음 문자열 10글자 + ... + 확장자
		originalFileName = shortName + "..." + formatVal[arrNum];
	    }
	    return {originalFileName: originalFileName, imgSrc: imgSrc, originalFileUrl: originalFileUrl, fullName: fullName, basicFileName: basicFileName};
	}
	//첨부파일 출력
	function printFiles(data) {
		// data = /2019/07/12/s_jfsdkljflsjdf_라이언13.jpg
	    // 파일 정보 처리
	    var fileInfo = getFileInfo(data);
	    /* console.log(fileInfo); */
	    // Handlebars 파일 템플릿에 파일 정보들을 바인딩하고 HTML 생성
	    var html = fileTemplate(fileInfo);
	    html += "<input type='hidden' class='file' value='"
			+fileInfo.fullName+"'>";
	    // Handlebars 파일 템플릿 컴파일을 통해 생성된 HTML을 DOM에 주입
	    $(".uploadedList").append(html);
	    // 이미지 파일인 경우 aaaaaaaaaaa파일 템플릿에 lightbox 속성 추가
	    if (fileInfo.fullName.substr(12, 2) === "s_") {
	        // 마지막에 추가된 첨부파일 템플릿 선택자
	        var that = $(".uploadedList li").last();
	        // lightbox 속성 추가
	        that.find(".mailbox-attachment-name").attr("data-lightbox", "uploadImages");
	        // 파일 아이콘에서 이미지 아이콘으로 변경
	        that.find(".fa-paperclip").attr("class", "fa fa-camera");
	    }
	}
	function getOriginalName(fileName){
		if(checkImageType(fileName)){ //이미지 파일이면 skip
			return;
		}
		var idx=fileName.indexOf("_")+1; //uuid를 제외한 파일이름
		return fileName.substr(idx);
	}
	function getImageLink(fileName){
		if(!checkImageType(fileName)){//이미지 파일이 아니면 skip
			return;
		}
		var front=fileName.substr(0,12);//연월일 경로
		var end=fileName.substr(14);// s_ 제거
		return front+end;
	}
	function checkImageType(fileName){
		var pattern=/jpg|gif|png|jpeg/i; //정규표현식(대소문자 무시)
		return fileName.match(pattern); //규칙에 맞으면 true
	}
	
	// 댓글 삭제 버튼 눌렀을 때 동작
	$(document).on("click",".reply-del",function(){
		var rno = $(this).attr("data_num");
		var bno = '${one.bno}';
		
		$.ajax({
			url: "${path}/reply/delete?rno="+rno+"&bno="+bno,
			success: function(result){
				comment_list();
			},
			error: function(){
				alert("SYSTEM ERROR!!!");
			}
		});
	});
	
	// 댓글 취소 버튼 눌렀을 때 동작
	$(document).on("click","#note-create-cancel-btn",function(){
		comment_list();
		
	});
	
	
	</script>
	
</body>
</html>