<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
element.style {
	
}

.form-group {
	margin-bottom: -1rem;
}

.form-text {
	border: 1px solid lightgray;
	border-radius: 10px;
	padding: 8px;
	display: block;
	height: 170px;
	overflow: auto;
	padding-left: 20px;
	width: 80%;
}

.ibox-title {
	text-align: left;
	padding: 10px;
}

button.dim {
	height: 25px;
	padding-down: 5px;
	margin-bottom: 10px !important;
	margin-left: 9px;
}
</style>
</head>
<body>

	<div class="ibox ">
		<div class="ibox-title">
			<h3 style="margin-left: 20px;">
				특이사항 상세 <img alt="상세보기" src="<%=request.getContextPath()%>/resources/img/file.png" style="width: 20px; height: 20px;"> <span style="float: right; font-size: 0.8em;"> <i class="fa fa-clock-o"></i>2022-07-04 16:57
					<button class="btn btn-danger  dim " type="button" onclick="CloseWindow();">닫기</button>
				</span>

			</h3>
		</div>
		<div class="ibox-content">

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">주치의 </label>
				<h4>강현수 호흡기내과</h4>
			</div>
			<hr>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">작성 의료진</label>
				<h4>노혜지 호흡기내과</h4>
			</div>
			<hr>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">환자명</label>
				<h4>박기훈</h4>
			</div>
			<hr>


			<div class="form-group row">
				<label class="col-sm-2 col-form-label"><i class="fa fa-pencil-square-o"></i>특이사항</label>
				<div class="form-text">
					<h4>기흉폐포증가,시술요망,소변검사추가</h4>
				</div>
			</div>

			<br>

		</div>

	</div>

</body>
</html>