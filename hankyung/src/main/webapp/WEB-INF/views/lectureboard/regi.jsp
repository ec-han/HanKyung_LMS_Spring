<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="${path}/resources/css/common.css?v=1">
<link rel="stylesheet" href="${path}/resources/css/main_common.css?v=1">
<link rel="stylesheet" href="${path}/resources/css/board_common.css?v=1">
<title>게시글 등록</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.js"></script>
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
	justify-content: space-between;
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
													<!-- <tr>
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
													</tr> -->
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
	
	<script src="${path}/resources/js/summernote-ko-KR.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
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
//				alert("file: "+file);
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
				
				$("#register_frm").submit();
			});
			
		});
	</script>
	
</body>
</html>