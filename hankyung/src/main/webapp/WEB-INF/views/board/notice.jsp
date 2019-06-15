<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${path}/resources/css/common.css?v=1">
<link rel="stylesheet" href="${path}/resources/css/board_common.css?v=1">
<meta charset="UTF-8">
<title>샘플페이지</title>
<style type="text/css">
.shadow {
    box-shadow: 0 2px 35px 0 rgba(235, 237, 242, 0.7);
}
.card {
    position: relative;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    -ms-flex-direction: column;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 1px solid #e3e6f0;
    border-radius: .35rem;
    margin-bottom: 1.5rem
}
.card-header {
    padding: .75rem 1.25rem;
    margin-bottom: 0;
    background-color: #f8f9fc;
    border-bottom: 1px solid #e3e6f0;
    padding-top: 1rem;
    padding-bottom: 1rem;
    height: 3rem;
    order: 1;
}
.text-primary {
    color: #4e73df;
    font-weight: bold;
    font-size: 1rem;
    line-height: 1.2;
    margin: 0;
}
.card-body {
    -webkit-box-flex: 1;
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
    padding: 1.25rem;
    order: 2;
}
.table-responsive {
    display: block;
    width: 100%;
    overflow: hidden;
}
div.table-responsive>div.dataTables_wrapper>div.row {
    margin: 0;
}
.row {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    margin-right: -.75rem;
    margin-left: -.75rem;
}
div.table-responsive>div.dataTables_wrapper>div.row>div[class^="col-"]:first-child {
    padding-left: 0;
}
div.table-responsive>div.dataTables_wrapper>div.row>div[class^="col-"]:last-child {
    padding-right: 0;
}
div.dataTables_wrapper div.dataTables_filter {
    text-align: right;
}
@media (min-width: 768px)
.col-md-6 {
    -webkit-box-flex: 0;
    -ms-flex: 0 0 50%;
    flex: 0 0 50%;
    max-width: 50%;
}
div.dataTables_wrapper div.dataTables_filter label {
    font-weight: normal;
    white-space: nowrap;
    text-align: left;
}
label {
    display: inline-block;
    margin-bottom: .5rem;
}
div.dataTables_wrapper div.dataTables_filter input {
    margin-left: 0.5em;
    margin-right: 0.5em;
    display: inline-block;
    width: auto;
}
.form-control-sm {
    height: calc(1.5em + .5rem + 2px);
    padding: .25rem .5rem;
    font-size: .875rem;
    line-height: 1.5;
    border-radius: .2rem;
}
.form-control {
    display: block;
    width: 100%;
    height: calc(1.5em + .75rem + 2px);
    padding: .375rem .75rem;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #6e707e;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #d1d3e2;
    border-radius: .35rem;
    -webkit-transition: border-color .15s ease-in-out,-webkit-box-shadow .15s ease-in-out;
    transition: border-color .15s ease-in-out,-webkit-box-shadow .15s ease-in-out;
    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out,-webkit-box-shadow .15s ease-in-out;
}
[type=search] {
    outline-offset: -2px;
    -webkit-appearance: none;
}

@media (min-width: 576px)
.col-sm-12 {
    -webkit-box-flex: 0;
    -ms-flex: 0 0 100%;
    flex: 0 0 100%;
    max-width: 100%;
}
div.table-responsive>div.dataTables_wrapper>div.row {
    margin: 0;
}
table.dataTable {
    clear: both;
    margin-top: 6px;
    margin-bottom: 6px;
    max-width: none;
    border-collapse: separate;
    border-spacing: 0;
}
.table-bordered {
    border: 1px solid #e3e6f0;
}
.table {
    width: 100%;
    text-align: left;
    margin-top: 1rem;
    margin-bottom: 1rem;
    color: #858796;
}
.sorting_asc {
	padding-right: 30px;
}
table.table-bordered.dataTable th, table.table-bordered.dataTable td {
    border-left-width: 0;
}
table.table-bordered.dataTable tbody th, table.table-bordered.dataTable tbody td {
    border-bottom-width: 0;
}
table.dataTable td, table.dataTable th {
    -webkit-box-sizing: content-box;
    box-sizing: content-box;
}
.table-bordered td, .table-bordered th {
    border: 1px solid #e3e6f0;
}
.table td, .table th {
    padding: .75rem;
    vertical-align: top;
    border-top: 1px solid #e3e6f0;
}
@media (min-width: 768px)
.col-md-5 {
    -webkit-box-flex: 0;
    -ms-flex: 0 0 41.66667%;
    flex: 0 0 41.66667%;
    max-width: 41.66667%;
}
@media (min-width: 768px)
.col-md-7 {
    -webkit-box-flex: 0;
    -ms-flex: 0 0 58.33333%;
    flex: 0 0 58.33333%;
    max-width: 58.33333%;
}
@media (min-width: 576px)
.col-sm-12 {
    -webkit-box-flex: 0;
    -ms-flex: 0 0 100%;
    flex: 0 0 100%;
    max-width: 100%;
}
div.dataTables_wrapper div.dataTables_info {
    padding-top: 0.85em;
    white-space: nowrap;
}
div.dataTables_wrapper div.dataTables_paginate {
    margin: 0;
    white-space: nowrap;
    float: right;
    text-align: right;
    position: absolute;
    right: 1rem;
}
div.dataTables_wrapper div.dataTables_paginate ul.pagination {
    margin: 2px 0;
    white-space: nowrap;
    justify-content: flex-end;
    position: relatvie;
}
.pagination {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    padding-left: 0;
    list-style: none;
    border-radius: .35rem;
}
.page-item:first-child .page-link {
    margin-left: 0;
    border-top-left-radius: .35rem;
    border-bottom-left-radius: .35rem;
}
.page-link {
    position: relative;
    display: block;
    padding: .5rem .75rem;
    margin-left: -1px;
    line-height: 1.25;
    color: #4e73df;
    background-color: #fff;
    border: 1px solid #dddfeb;
}
.page-item:last-child .page-link {
    border-top-right-radius: .35rem;
    border-bottom-right-radius: .35rem;
}

#dataTable_wrapper {
	display: flex;
	flex-direction: column;
}
.table_wrapper {
	width: 100%;
}
.order-1 {
	order: 1;
}
.order-2 {
	order: 2;
}
.order-3 {
	order: 3;
}
#length_filter {
    display: flex;
    flex-direction: row;
    align-items: center;
}
.margin-right{
	margin-right: auto;
}
.margin-left{
	margin-left: auto;
}
#dataTable_filter{
    position: relative;
}
.flex_r {
	display: flex;
    flex-direction: row;
}
#dataTable_info {
	display: inline-block;
    margin-right: 50%;
    float: left;
    flex: 1;
}
#pagenation_wrapper {
    display: inline-block;
    margin-left: 70%;
    flex: 1;
}
</style>
</head>
<body>
	<div class="big_wrapper">
		<%@ include file="../include/board_aside.jsp" %>
		<div class="content_wrapper">
			<%@ include file="../include/board_nav.jsp" %>
	
			<div class="container">
				<div class="center_box">
					<h1 class="">공지사항</h1>
					<!-- DataTales Example -->
			        <div class="card shadow">
			            <div class="card-header">
			              <h6 class="text-primary">공지사항</h6>
			            </div>
			            <div class="card-body">
			              <div class="table-responsive">
			              	<div id="dataTable_wrapper" class="dataTables_wrapper">
			              		<div class="row order-1" id="length_filter">
				              		<div class="col-sm-12 col-md-6 order-1 margin-right">
				              			<div class="dataTables_length" id="dataTable_length">
				              					<label>
				              							보기
				              							<select name="dataTable_length" aria-controls="dataTable" class="custom-select custom-select-sm form-control form-control-sm">
				              								<option value="10">10</option>
				              								<option value="10">25</option>
				              								<option value="10">50</option>
				              							</select>
				              					</label>
				              			</div>
				              		</div>
				              		<div class="col-sm-12 col-md-6 order-2 margin-left">
				              			<div id="dataTable_filter" class="dataTables_filter">
				              				<label>
				              					검색:
				              					<input type="search" class="form-control form-control-sm" placeholder="검색" aria-controls="dataTable">
				              				</label>
				              			</div>
				              		</div>
				              	</div>
				              	<div class="row order-2 table_wrapper">
				              		<div class="col-sm-12 table_wrapper">
				              			<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
						                  <thead>
						                    <tr>
						                      <th>No.</th>
						                      <th>제목</th>
						                      <th>작성자</th>
						                      <th>조회수</th>
						                      <th>작성일</th>
						                      <th>첨부</th>
						                    </tr>
						                  </thead>
						                  <tfoot>
						                    <tr>
						                      <th>1</th>
						                      <th>2</th>
						                      <th>3</th>
						                      <th>4</th>
						                      <th>5</th>
						                      <th>6</th>
						                    </tr>
						                  </tfoot>
						                  <tbody>
						                    <tr>
						                      <td>1</td>
						                      <td>디자인 중</td>
						                      <td>한은체</td>
						                      <td>3</td>
						                      <td>2019/06/15</td>
						                      <td></td>
						                    </tr>
						                    
						                  </tbody>
				                		</table>
				              		</div>
				              	</div>
				              	<div class="row order-3">
				              		<div class="col-sm-12 col-md-5 flex_r">
				              			<div class="dataTables_info order-1" id="dataTable_info" role="status" aria-live="polite">
				              				57건 중 21건부터 30건까지 
				              			</div>
				              			<div class="col-sm-12 col-md-7 order-2" id="pagenation_wrapper">
				              				<div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate">
				              					<ul class="pagination">
				              						<li class="paginate_button page-item previous" id="dataTable_previous">
				              							<a href="#" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">
				              								이전 페이지
				              							</a>
				              						</li>
				              						<li class="paginate_button page-item">
				              							<a href="#" aria-controls="dataTable" data-dt-idx="1" tabindex="0" class="page-link">
				              								1
				              							</a>
				              						</li>
				              						<li class="paginate_button page-item">
				              							<a href="#" aria-controls="dataTable" data-dt-idx="2" tabindex="0" class="page-link">
				              								2
				              							</a>
				              						</li>
				              						<li class="paginate_button page-item">
				              							<a href="#" aria-controls="dataTable" data-dt-idx="3" tabindex="0" class="page-link">
				              								3
				              							</a>
				              						</li>
				              						<li class="paginate_button page-item">
				              							<a href="#" aria-controls="dataTable" data-dt-idx="4" tabindex="0" class="page-link">
				              								4
				              							</a>
				              						</li>
				              						<li class="paginate_button page-item">
				              							<a href="#" aria-controls="dataTable" data-dt-idx="5" tabindex="0" class="page-link">
				              								5
				              							</a>
				              						</li>
				              						
				              						<li class="paginate_button page-item next" id="dataTable_next">
				              							<a href="#" aria-controls="dataTable" data-dt-idx="6" tabindex="0" class="page-link">
				              								다음 페이지
				              							</a>
				              						</li>
				              					</ul>
				              				</div>
				              			</div>
				              		</div>
				              	</div>
			              	</div>
			              </div>
		            	</div>
		          	</div>
		        <!-- /.container-fluid -->
				</div>
			</div>
			
			<%@ include file="../include/board_footer.jsp" %>
		</div>
	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(function(){
		  
		});
	</script>
</body>
</html>
