<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link
	href="<%=request.getContextPath()%>/resources/css/plugins/sweetalert/sweetalert.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/font-awesome/css/font-awesome.css"
	rel="stylesheet">

<link
	href="<%=request.getContextPath()%>/resources/css/plugins/summernote/summernote-bs4.css"
	rel="stylesheet">

<link
	href="<%=request.getContextPath()%>/resources/css/plugins/datapicker/datepicker3.css"
	rel="stylesheet">

<link href="<%=request.getContextPath()%>/resources/css/animate.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/css/style.css"
	rel="stylesheet">
<style type="text/css">
div {
	margin: 0 auto;
}

input[type='text'], .sel, .form_div{
	background-color: #FFFFFF;
	background-image: none;
	border: 1px solid #e5e6e7;
	border-radius: 1px;
	color: inherit;
	padding: 6px 12px;
	transition: border-color 0.15s ease-in-out 0s, box-shadow 0.15s
		ease-in-out 0s;
}


.ip_a {
	font-size: 2.0em;
	font-weight: bold;
	margin-left: 5px;
	text-align: center;
}
.ip_table_div{
	border-right: 1px solid gray;
}
</style>
</head>
<body>
	<%@ include file="header.jsp" %>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-lg-6 ip_table_div">
				<h2>IP리스트</h2>
				<div style="text-align: right;"> 
					<div class="input-group" >
					<select class="sel" style="border: 1px solid #e5e6e7;">
						<option>IP</option>
						<option>호수</option>
					</select>
						<input type="text" class="form-control" style="flex: inherit; width: 40%"> <span
							class="input-group-append" >
							<button type="button" class="btn btn-primary">검색</button>
						</span>
					</div>
				</div>
				<br>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>IP</th>
							<th>호수</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><a onclick="ip_list(this)" class="db_list_ip"
								style="font-weight: bold">192.168.34.38</a></td>
							<td>304호</td>
						</tr>
						<tr>
							<td><a onclick="ip_list(this)" class="db_list_ip"
								style="font-weight: bold">192.168.34.39</a></td>
							<td>304호</td>
						</tr>
						<tr>
							<td><a onclick="ip_list(this)" class="db_list_ip"
								style="font-weight: bold">192.168.34.40</a></td>
							<td>304호</td>
						</tr>
						<tr>
							<td><a onclick="ip_list(this)" class="db_list_ip"
								style="font-weight: bold">192.168.34.41</a></td>
							<td>304호</td>
						</tr>
						<tr>
							<td><a onclick="ip_list(this)" class="db_list_ip"
								style="font-weight: bold">192.168.34.38</a></td>
							<td>304호</td>
						</tr>
						<tr>
							<td><a onclick="ip_list(this)" class="db_list_ip"
								style="font-weight: bold">192.168.34.38</a></td>
							<td>304호</td>
						</tr>
						<tr>
							<td><a onclick="ip_list(this)" class="db_list_ip"
								style="font-weight: bold">192.168.34.38</a></td>
							<td>304호</td>
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
			<div class="col-lg-4">
				<h2>회원정보</h2>
				<form>
					<div class="form-group">
						<label class="col-sm-4">이름</label> <input type="text"
							class="form_div">
					</div>
					<div class="form-group">
						<label class="col-sm-4">주민등록번호</label><input type="text"
							class="form_div">
					</div>
					<div class="form-group">
						<label class="col-sm-4">아이디</label><input type="text"
							class="form_div">
					</div>
					<div class="form-group">
						<label class="col-sm-4">TEL</label><input type="text"
							class="form_div">
					</div>
					<div class="form-group">
						<label class="col-sm-4">연구실 호수</label><input type="text"
							class="form_div">
					</div>
					<div class="form-group">
						<label class="col-sm-4">진료실 호수</label><input type="text"
							class="form_div">
					</div>
					<div class="form-group ip">
						<label class="col-sm-4">IP</label><input type="text"
							class="form_div input_ip" name='input_ip' onclick="sibal(this)"> <a
							class="ip_a" onclick="plus()">+</a>
					</div>
				</form>
				<div style="text-align: center;">
					<button class="btn btn-success">등록하기</button>
					<button class="btn btn-warning">취소</button>
				</div>
			</div>

		</div>

	</div>

	<!-- Mainly scripts -->
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery-3.1.1.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/popper.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/bootstrap.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/plugins/metisMenu/jquery.metisMenu.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

	<!-- Custom and plugin javascript -->
	<script src="<%=request.getContextPath()%>/resources/js/inspinia.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/plugins/pace/pace.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
	<script type="text/javascript">
	
	var num = 0;
	var b_class;
	
	function plus() {
		num++;
		console.log(num);
		$(".ip")
				.append(
						"<label class='col-sm-4'></label><input type='text'class='form_div input_ip' name='input_ip"+num+"' onclick='sibal(this)'><a class='ip_a' onclick='min(this)'>-</a>");
	}
	
	function sibal(a){
		b_class = $(a).attr('name');
	}	
		function ip_list(a) {

			var db_list_ip = $(a).text();
			var no_ip = $('.input_ip');
			if(no_ip != null){
				$('input[name=' + b_class + ']').attr('value', db_list_ip);
			}
		}

		function min(a) {
			$(a).prev().prev().remove();
			$(a).prev().remove();
			$(a).remove();
		};
	</script>

	<script type="text/javascript">
		$(document).ready(function() {
			var use_ip = "1";
			var db_ip = [ "1", "2", "3" ];
			var ip = new Array();

			$(".btn-success").on("click", function() {
				var ip_val = $('.input_ip');
				console.log(ip_val);
				for (var i = 0; i < ip_val.length; i++) {
					if (db_ip.includes(ip_val.eq(i).val())) {
						ok();
					}
					if (ip_val.eq(i).val().includes(ip_val.eq(i).val()) == false) {
						no();
					}
				}

			});

		});

		function ok() {
			swal({
				title : "IP를 추가하시겠습니까?",
				text : "이름 : 강현수",
				type : "warning",
				showCancelButton : true,
				confirmButtonColor : "#DD6B55",
				confirmButtonText : "확인",
				closeOnConfirm : false
			}, function() {
				swal("", "IP추가 완료했습니다.", "success");
				setTimeout(function() {
					window.location.reload();
				}, 1000);

			});
		}
		function no() {
			swal({
				title : "사용불가한 IP가 있습니다.",
				text : "사용불가IP : 81.65.35.12",
				type : "warning",
				showCancelButton : true,
				confirmButtonColor : "#DD6B55",
				confirmButtonText : "확인",
				closeOnConfirm : false
			});
		}
	</script>
	<script
		src="<%=request.getContextPath()%>/resources/js/plugins/sweetalert/sweetalert.min.js"></script>
</body>
</html>