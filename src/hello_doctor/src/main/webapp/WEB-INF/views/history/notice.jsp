<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
<title>스케줄러</title>

<link
	href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/font-awesome/css/font-awesome.css"
	rel="stylesheet">

<link
	href="<%=request.getContextPath()%>/resources/css/plugins/iCheck/custom.css"
	rel="stylesheet">

<link
	href="<%=request.getContextPath()%>/resources/css/plugins/fullcalendar/fullcalendar.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/css/plugins/fullcalendar/fullcalendar.print.css"
	rel='stylesheet' media='print'>

<link href="<%=request.getContextPath()%>/resources/css/animate.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/css/style.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/css/chart.css"
	rel="stylesheet">

	<div class="container">
		<div class="row">
			<div class="col-sm-6">
			</div>
			<div class="col-sm-6" style="padding-left: 131px;">
				<select id="status" class="form-control" style="width: 105px; height: 100%; margin: 0; display: inline-block; " name="dis_class">
                                <option value="최신순" selected="">최신순</option>
                                <option value="등록일순">등록일순</option>
                 </select>
			<input type="text" style="height: 100%;">
			<button class="btn btn-primary" style="height: 100%; margin-bottom: 2px;">검색</button>
			</div>
		</div>
		<br>
		<table class="table table-bordered" style="text-align: center;
		font-size: 1.0em; width: 100%">
			<thead>
				<tr>
					<th >공지번호</th>
					<th style="width: 50%;">공지제목</th>
					<th>작성자</th>
					<th style="width: 30%">공지일시</th>
				</tr>
			</thead>
			<tbody>
				<tr onclick="OpenWindow('notice_detail','',900,600)">
					<td>
						1
					</td>
					<td>
						업데이트 약품 목록입니다. 확인하시길바랍니다. 이의찬 바보
					</td>
					<td>
						관리자
					</td>
					<td>
						2022-07-06 15:30
					</td>
				</tr>
				<tr>
					<td>
						2
					</td>
					<td>
						약품업데이트
					</td>
					<td>
						관리자
					</td>
					<td>
						2022-07-06
					</td>
				</tr>
				<tr>
					<td>
						3
					</td>
					<td>
						약품업데이트
					</td>
					<td>
						관리자
					</td>
					<td>
						2022-07-06
					</td>
				</tr>
				<tr>
					<td>
						4
					</td>
					<td>
						약품업데이트
					</td>
					<td>
						관리자
					</td>
					<td>
						2022-07-06
					</td>
				</tr>
				<tr>
					<td>
						5
					</td>
					<td>
						약품업데이트
					</td>
					<td>
						관리자
					</td>
					<td>
						2022-07-06
					</td>
				</tr>
				<tr>
					<td>
						6
					</td>
					<td>
						약품업데이트
					</td>
					<td>
						관리자
					</td>
					<td>
						2022-07-06
					</td>
				</tr>
				<tr>
					<td>
						7
					</td>
					<td>
						약품업데이트
					</td>
					<td>
						관리자
					</td>
					<td>
						2022-07-06
					</td>
				</tr>
				<tr>
					<td>
						8
					</td>
					<td>
						약품업데이트
					</td>
					<td>
						관리자
					</td>
					<td>
						2022-07-06
					</td>
				</tr>
				<tr>
					<td>
						9
					</td>
					<td>
						약품업데이트
					</td>
					<td>
						관리자
					</td>
					<td>
						2022-07-06
					</td>
				</tr>
				<tr>
					<td>
						10
					</td>
					<td>
						약품업데이트
					</td>
					<td>
						관리자
					</td>
					<td>
						2022-07-06
					</td>
				</tr>
			</tbody>
		</table>
		<div>
			<ul class="pagination " style="justify-content: center;">
				<li class="footable-page-arrow"><a data-page="first"
					href="#first">«</a></li>
				<li class="footable-page-arrow"><a data-page="prev"
					href="#prev">‹</a></li>
				<li class="footable-page"><a data-page="0" href="#">1</a></li>
				<li class="footable-page"><a data-page="1" href="#">2</a></li>
				<li class="footable-page"><a data-page="2" href="#">3</a></li>
				<li class="footable-page active"><a data-page="3" href="#">4</a></li>
				<li class="footable-page"><a data-page="4" href="#">5</a></li>
				<li class="footable-page-arrow"><a data-page="next"
					href="#next">›</a></li>
				<li class="footable-page-arrow"><a data-page="last"
					href="#last">»</a></li>
			</ul>

		</div>
	</div>
	<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
</body>

</html>