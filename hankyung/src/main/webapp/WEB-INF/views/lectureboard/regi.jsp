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
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.css" rel="stylesheet">
<title>게시글 등록</title>
<style type="text/css">
#regi_table_wrap > table > thead > tr, #regi_table_wrap > table > tfoot > tr {
	background: #eaecf4;
}
#regi_table_wrap > table > tbody > tr {
	background: #f8f9fc;
	height: 20rem;
}
.btn_right {
	float: right;
    margin-right: 1rem;
}
.regi-tb-center {
    font-size: 1rem;
    float: left;
    font-weight: 400;
    /* text-align: center; */
    position: relative;
    top: 0.7rem;
}

.sel-viewoption {
    display: inline-block;
    width: auto;
    letter-spacing: -1;
    height: calc(1.5em + .75rem + 2px);
    padding: .175rem .55rem;
    font-weight: 400;
    line-height: 1.5;
    color: #6e707e;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #d1d3e2;
    border-radius: .35rem;
    outline-offset: -2px;
    margin-left: 1rem;
}
#viewoptionheader {
    position: relative;
    top: 5px;
}

#close_file_btn {
	cursor: pointer;
}
.form-group .board_div {
	border: 1.5px dashed #dadada;
    background: white;
	text-align: center;
	height: 13rem;
	display: flex;
	align-items: center;
	justify-content: center;
	color: #515151;
}
.uploadedList {
	display: flex;
	flex-wrap: wrap;
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
								<form class="register_form" id="register_frm" method="POST" action="${path}/lectureboard/<c:out value="${empty one.bno ? 'create':'update'}"/>">
									<div class="box-body">
										<div class="row order-2 table_wrapper">
				              				<div class="col-sm-12 table_wrapper" id="regi_table_wrap">
												<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
								                  <thead>
								                  	<tr>
														<th>
															<c:if test="${empty one.bno}">
															<div class="regi-tb-center" id="viewoptionheader">게시판</div>
															<c:choose>
																<c:when test="${sessionScope.type == '1'}">
																<div id="dataTable_filter" class="dataTables_filter">
										              				<label>
										              					<select id="viewoption" class="sel-viewoption" name="viewoption">
																			<option value="2" selected="selected">일반게시글</option>
																			<option value="0">공지</option>
																			<option value="1">묻고답하기</option>
																		</select>
										              				</label>
										              			</div>
										              			</c:when>
										              			<c:otherwise>
										              			<div id="dataTable_filter" class="dataTables_filter">
										              				<label>
										              					<select id="viewoption" class="sel-viewoption" name="viewoption">
																			<option value="2" selected="selected">일반게시글</option>
																			<option value="1">묻고답하기</option>
																		</select>
										              				</label>
										              			</div>
										              			</c:otherwise>
									              			</c:choose>
									              			</c:if>
															<div class="regi-tb-center">제목</div>
															<fieldset class="field_border">
																<input name="title" class="form-control" id="regi_title" value="${one.title}">
																<span class="step_url"></span>
															</fieldset>
														</th>
													</tr>
								                  </thead>
								                  <tbody>
								                  	<tr>
														<td>
															<div class="data-bd-cont">
																<fieldset class="field_border">
																	<textarea class="form-control" id="summernote" name="content">${one.content}</textarea>
																	<span class="step_url"></span>
																</fieldset>
															</div>
														</td>
													</tr>
								                  </tbody>
								                  <tfoot>
													<tr>
														<td>
															<div class="tb-center">작성자</div>
															<fieldset class="field_border">
																<input class="form-control" name="writer" id="regi_writer" value="${sessionScope.name}" readonly="readonly">
															</fieldset>
														</td>
													</tr>
													<tr>
														<td>
															게시글 첨부파일 등록 
															<div class="write_input_wrap form-group">
																<div class="board_div fileDrop">
																	<p>
																		<i class="fas fa-paperclip"></i>
																		첨부파일을 드래그 해주세요.
																	</p>
																</div>
															</div>
															<div class="write_input_wrap">
																<ul id="uplodedList" class="mailbox-attachments clearfix uploadedList"></ul>
															</div>
														</td>
													</tr>
												  </tfoot>
				                				</table>
											</div>
										</div>
										<div class="btn_area">
											<div class="btn_right board_regi_btn" id="lecturebd_regi">
												<i class="fas fa-pen-square"></i>
											</div>
											<div class="btn_left board_regi_btn">
												<a href="${path}/lectureboard/list?viewoption=${one.btype}">
													<i class="far fa-list-alt" id="btn_list"></i>
												</a>
											</div>
										</div>
									</div>
									<input type="hidden" name="code" id="code">
									<c:if test="${!empty one.bno}">
									<input type="hidden" name="bno" value="${one.bno}">
									</c:if>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- 본문 내용에 따라 바뀔 곳 끝   -->
			</div>
			<%@ include file="../include/main_footer.jsp" %>
		</div>
	</div>
	
	<script src="${path}/resources/summernote/summernote-lite.js"></script>
	<script src="${path}/resources/summernote/lang/summernote-ko-KR.js"></script>
	<script id="fileTemplate" type="text/x-handlebars-template">
    <li>
        <div class="mailbox-attachment-icon has-img">
            <center><img src="{{imgSrc}}" alt="Attachment" class="s_img"></center>
        </div>
        <div class="mailbox-attachment-info">
            <a href="{{originalFileUrl}}" class="mailbox-attachment-name">
                <i class="fa fa-paperclip"></i> {{originalFileName}}
            </a>
            <span class="btn btn-default btn-xs pull-right delBtn" data-src="{{basicFileName}}">
                <i class="fas fa-times"></i>
            </span>
        </div>
    </li>
	</script>
	<script type="text/javascript">
		//Handlebars 파일템플릿 컴파일
		var fileTemplate = Handlebars.compile($("#fileTemplate").html());
		// 수정시 로컬드라이브에서 삭제할 기존 첨부파일 목록
		var deleteFileList = new Array();
		
		$(document).ready(function() {
			
			$('#summernote').summernote({
	   			lang: 'ko-KR',
	   	        placeholder: '글을 입력해주세요.',
	   	        tabsize: 2,
	   	        height: 250,
	   	        minHeight: null,             // set minimum height of editor
	   	        maxHeight: null,             // set maximum height of editor
	   	        focus: true,                  // set focus to editable area after initializing summernote
	   	     	codeviewFilter: false,
	   		  	codeviewIframeFilter: true,
	   		  	codeviewFilterRegex: 'custom-regex',
	   		  	codeviewIframeWhitelistSrc: ['my-own-domainname'],
	   		 	disableDragAndDrop : true,
	   		 	toolbar: [
		   		    // [groupName, [list of button]]
		   		    ['style', ['bold', 'italic', 'underline', 'clear']],
		   		    ['font', ['strikethrough', 'superscript', 'subscript']],
		   		    ['fontsize', ['fontsize']],
		   		    ['color', ['color']],
		   		    ['para', ['ul', 'ol', 'paragraph']],
		   		    ['height', ['height']]
		   		  ]
	   		}); 
			
			// 등록 & 수정 페이지 디자인
			var bno = '${one.bno}';

			if(bno == '') {  // 게시글 등록
				
			} else {  // 게시글 수정
				
				var str='';
				str += "<input type='hidden' name='bno' value='" + bno + "'>";
				$("#frm_add").append(str);
			}
			
			// 첨부파일 목록 출력
			listAttach();
			
			// 답글이면 title 수정 못하게 막음
			var re_level = "${one.re_level}";
			if(re_level > 0) {
				$('#regi_title').attr('readonly', 'readonly'); // 수정 필요! 등록이랑 수정 같이하는 페이지
			}
			
			
			// Drag & Drop 기본효과 막음
			// : 작업 안 하면 실제 파일이 열림 
			$('.fileDrop').on('dragenter dragover', function(e){
				e.preventDefault();
			});
			$('.fileDrop').on('drop', function(e){
				e.preventDefault();
				
				// Ajax 파일 -> D:\\upload
				// 첫번째 첨부파일
				// 드래그에 전달된 첨부팡리 전부 
				var files = e.originalEvent.dataTransfer.files; // 드래그한 첨부파일 전부가 담김
				var file = files[0]; // 여러 파일 드래그앤 드롭 해도 그 중 files에 있는 0번지에 있는 가장 첫번째 파일 하나면 꺼내옴
				alert("file: "+file);
				// 폼 데이터에 첨부파일 추가
				var formData = new FormData(); // 폼 객체
				formData.append("file", file); // 폼에 파일변수 추가 
				// 서버에 파일 업로드(백그라운드에서 실행됨)
				// contentType: false => multipart/form-data로 처리 
				$.ajax({
					url: "${path}/upload/uploadAjax",
					data: formData,
					dataType: "text",
					processData: false,
					contentType: false,
					type: "post",
					success: function(data){
						console.log(data);
						//data: 업로드한 파일 정보와 http 상태 코드 
						printFiles(data); // 첨부파일 출력 메서드 호출 
					}
				});
			});
			
			// 첨부파일 삭제 함수
			$(".uploadedList").on("click", ".delBtn", function(event) {
				var bno = '${one.bno}';
				var that = $(this);
				if(bno == 0) { // 게시글 등록
					$.ajax({
						url: "${path}/upload/deleteFile",
						type: "post",
						data: { fileName: $(this).attr("data-src") },
						dataType: "text",
						success: function(result) {
							if(result == "deleted") {
								that.parents("li").remove();
							}
						}, error: function() {
							alert("System Error!!!");
						}
					});	
				} else {
					/* 
						첨부파일 x버튼 클릭시 바로바로 드라이브에서 삭제해버리면
						수정작업중 수정을 취소했을 때 기존에 파일이 사라지는 문제가 발생
						따라서 삭제를 눌렀을 때 화면단에서는 삭제가 되지만 드라이브와 DB에서
						삭제하지 않고 삭제목록(list)을 따로 저장해 둔 후 실제 유저가
						수정버튼을 클릭했을 때 form태그에 append하고 가져가서 파일을 삭제
						및 수정
					*/
					var arr_size = deleteFileList.length;
					deleteFileList[arr_size] = $(this).attr("data-src");
					$(this).parents("li").next("input").remove();
					$(this).parents("li").remove();
					/* for (var i = 0; i <= deleteFileList.length; i++)
					console.log(deleteFileList[i]); */
				}
			});
			
	   		
			$("#lecturebd_regi").click(function(){
				var viewoption = $('#viewoption').val();
				var title = $("#regi_title").val();
				var content = $("#summernote").val();
					
				// 게시글 내용 작성자 null안되게 유효성 체크
				if(title==""||title.length==0){
					$('.step_url').text('글을 등록하려면 입력해주세요').css('display','block');
					return false;
				} else {
					$('.step_url').css('display','hidden');
//					alert('유효성 체크1 완료');
				} 
				
				if(content == "<p><br></p>"){
					$('.step_url').text('글을 등록하려면 입력해주세요').css('display','block');
					return false;
				} else {
					$('.step_url').css('display','hidden');
//					alert('유효성 체크2 완료');
				} 
				
				var str="";
				// uploadedList 내부의 .file 태그 각각 반복
				$("#uploadedList .file").each(function(i){
					console.log(i);
					//hidden 태그 구성
					str += "<input type='hidden' name='files["+i+"]' value='" + $(this).val()+"'>";
				});
				
				// 로컬드라이브에 저장되어있는 해당 게시글 
				// 첨부파일 삭제
				if(deleteFileList.length > 0) {
					$.post('${path}/upload/deleteAllFile', {files:deleteFileList}, function(){});
				}
				
				//폼에 hidden 태그들을 붙임
				$("#register_frm").append(str);
				$('#register_frm').submit();
			});
			
		});
		
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
		
		//첨부파일 리스트를 출력하는 함수
		function listAttach(){
			var listCnt = 0;
			$.ajax({
				type: "post",
				url: "${path}/lectureboard/getAttach/${one.bno}",
				async: false,
				success: function(list){
					// list : json
					//console.log(list);
					listCnt = list.length;
					
					/* console.log(list.length); */
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
		
	
		
		
		
	</script>
	
</body>
</html>