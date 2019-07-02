<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글목록</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.js"></script>
<style type="text/css">
.list-group {
    width: 100%;
    text-align: left;
    margin-top: 1rem;
    margin-bottom: 1rem;
    color: #858796;
}
.list-group li {
    border: 1px solid #e3e6f0;
    background: white;
}
#note-title {
    background: #f4f7ff;
}
.reply-form {
    color: #555;
    font-weight: bold;
    background: #f8f9fc;
    border: 2px dashed #79cdcf;
}
.content-body {
	padding: 1rem;
}
.reply-group-item {
    padding: 1.5rem;
}
#btn-create-btn {
    outline: none;
    border: 1px solid black;
    color: white;
    background: #404988;
    cursor: pointer;
    font-weight: bold;
}
#note-create-cancel-btn, #note-create-delete-btn {
    outline: none;
    border: 1px solid black;
    color: white;
    background: #404988;
    cursor: pointer;
    padding: 0rem 0.45rem;
    cursor: pointer;
    font-weight: bold;
}
.timeago {
    letter-spacing: -1;
    color: #999;
}
.nickname {
    font-weight: bold;
    letter-spacing: 1;
}
.avatar {
    padding: 1rem;
}
.panel-title {
    padding: 0 1rem;
}
.avatar-info {
    display: inline-block;
    padding: 0.5rem;
}
.avatar .avatar-photo {
	font-size: 2.5rem;
    color: #79cdcf;
}
.reply-s-form {
	border: none;
}
#comment_area_div {
    display: flex;
    flex-direction: row;
	align-items: center;
}
.reply-submit-buttons {
    float: right;
    margin-right: 3rem;
    margin-bottom: 1rem;
}
#reply-submit-info {
    flex: 8;
    padding-left: 2rem;
}
.list-group-item > h5 {
    margin-left: 1rem;
}
#login_link {
    color: #c71615;
    font-weight: 600;
    letter-spacing: 1;
    cursor: pointer;
}
</style>
</head>
<body>
	<ul class="list-group">
		<li id="note-title" class="list-group-item note-title">
			<h3 class="panel-title">
				댓글 
				<span id="note-count">${replyList.size()}</span>
			</h3>
		</li>
		
		<c:if test="${replyList.size() ==  0}">
			<li class="list-group-item note-item clearfix">
				<h5>
					등록된 댓글이 없습니다. 첫 번째 댓글을 남겨주세요:)
				</h5>
			</li>
		</c:if>
		
<!-- forEach는 items의 갯수(사이즈)가 0이면 반복 아예 안함. -->
		<c:forEach items="${replyList}" var="replyview">
			<li class="reply-group-item">
				<div class="content-body">
					<div class="avatar order-1">
						<a href="#" class="avatar-photo">
							<i class="fas fa-user"></i>
						</a>
						<div class="avatar-info">
							<a class="nickname" href="#">${replyview.writer}</a>
							<div class="date-created">
								<span class="timeago">
									<fmt:formatDate pattern="yyyy.MM.dd hh:mm:ss" value="${replyview.regdate}"/>
								</span>
								
							</div>
						</div>
						<div class="reply-submit-buttons">
							<c:if test="${sessionScope.name == replyview.writer}">
							<p>
								<a id="note-create-delete-btn" name="rno" class="bd-btn btn-default btn-wide reply-del" data_num="${replyview.rno}">삭제</a>
							</p>
							</c:if>
						</div>
					</div>
					<div class="order-2">
						<fieldset class="reply-form">
							<article>
								<p>${replyview.content}</p>
							</article>
						</fieldset>
					</div>
				</div>
			</li>
		</c:forEach>
		
		<c:choose>
			<c:when test="${empty sessionScope.id}">
				<li class="list-group-item note-item clearfix">
					<h5>
						<a class="link" id="login_link">로그인</a>을 하시면 댓글을 등록할 수 있습니다.
					</h5>
				</li>
			</c:when>
			<c:otherwise>
				<form action="${path}/reply/create" method="POST" name="frm_reply" id="frm_reply">
					<li class="list-group-item note-item clearfix">
						<div class="content-body panel-body pull-left">
							<div class="avatar-medium" id="comment_area_div">
								<div class="avatar-info" id="reply-submit-info">
									<a href="#" class="avatar-photo">
										<i class="fas fa-user"></i>
									</a>
									<a class="nickname" href="#">${sessionScope.name}</a>
								</div>
								<div class="reply-submit-buttons">
									<p>
										<a id="note-create-cancel-btn">취소</a>
									</p>
									<input type="button" name="create" id="btn-create-btn" value="등록">
									
									<input type="hidden" name="writer" value="${sessionScope.name}">
									<input type="hidden" id="re_bno" name="bno">
								</div>
							</div>
							<fieldset class="reply-s-form">
								<input type="hidden" name="" value="HTML">
								<textarea class="form-control" id="summernote" name="content"></textarea>
							</fieldset>
						</div>
					</li>
				</form>
			</c:otherwise>
		</c:choose>
		
	</ul>
</body>
<script src="${path}/resources/js/summernote-ko-KR.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('.link').click(function(){
			location.href="${path}/member/login";
		});
		
		$('#summernote').summernote({
   			lang: 'ko-KR',
   	        placeholder: '댓글을 입력해주세요.',
   	        tabsize: 2,
   	        height: 100,
   	        minHeight: null,             // set minimum height of editor
   	        maxHeight: null,             // set maximum height of editor
   	        focus: false,                  // set focus to editable area after initializing summernote
   	     	codeviewFilter: false,
   		  	codeviewIframeFilter: true,
   		  	codeviewFilterRegex: 'custom-regex',
   		  	codeviewIframeWhitelistSrc: ['my-own-domainname'],
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
		
	});
		

</script>
</html>