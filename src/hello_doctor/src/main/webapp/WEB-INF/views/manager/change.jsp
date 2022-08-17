<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="<%=request.getContextPath()%>/resources/css/plugins/sweetalert/sweetalert.css" rel="stylesheet">

<link
	href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/font-awesome/css/font-awesome.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/css/plugins/iCheck/custom.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/css/animate.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/css/style.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/css/plugins/datapicker/datepicker3.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css"
	rel="stylesheet">
<style type="text/css">
body {
	padding: 10px;
}

h1 {
	text-align: center;
	font-weight: bold;
}
</style>
<title></title>
</head>
<body>
	<h1>의료진 상태 변경</h1>

	<hr>
	<table>
		<tr>
			<td><span>성명(전공) : </span></td>
			<td><span id="doctor_name">삼지매(감염내과)</span></td>
		</tr>
		<tr>
			<td><span>생년월일 : </span></td>
			<td><span>19880425</span></td>
		</tr>
	</table>
	<div>

		<div class="i-checks i1">
			<label> <input type="radio" name="a" checked="checked">
				<i></i> 재직
			</label>
		</div>
		<div class="i-checks i">
			<label> <input type="radio"
				name="a"> <i></i> 정직
			</label>
		</div>
		<div class="i-checks i2">
			<label> <input type="radio" 
				name="a"> <i></i> 퇴직
			</label>
		</div>
	</div>
	<div>
		<table id="input_table">
			<tr id="s_date">
				
			</tr>
			<tr id="e_date">
				
			</tr>
		</table>
		
		<button class="btn btn-info" type="">취소</button>
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

	<script
		src="<%=request.getContextPath()%>/resources/js/plugins/iCheck/icheck.min.js"></script>

	<!-- Data picker -->
	<script
		src="<%=request.getContextPath()%>/resources/js/plugins/datapicker/bootstrap-datepicker.js"></script>
	<script>
		$(document).ready(function() {
			$('.i-checks').iCheck({
				checkboxClass : 'icheckbox_square-green',
				radioClass : 'iradio_square-green',
				
			});
			
		});
	</script>

	<script type="text/javascript">

	
		
		function calcDate1(){
			var start_date = document.querySelector("#start_date");
			var end_date = document.querySelector("#end_date");

			if(start_date > end_date){
				err_date();
			}else if(start_date.value == "" || end_date.value == ""){
				alert("qwe");
			}else{
				che_alt();
			}
		}
		
		function calcDate2(){
			var fin_date = document.querySelector("#fin_date");
			
			console.log("date : " + fin_date);
			if(fin_date.value == ""){
				alert("fin");
			}
			else{
				che_alt();
			}
			
		}
			

		function che_alt(){
			swal({
	            title: "정말로 변경하시겠습니까?",
	            text: "약품명 : 라베나정 20mg",
	            type: "warning",
	            showCancelButton: true,
	            confirmButtonColor: "#DD6B55",
	            confirmButtonText: "확인",
	            closeOnConfirm: false
	        }, function () {
	            swal("", "약품 정보 수정에 성공했습니다.", "success");
	            setTimeout(function(){        	  
		              window.location.reload();
	            },1000);
	            
	        });	
		}
		
		function err_date(){
	        swal({
	            title: "날짜 설정실패",
	            text: "종료일은 시작일 이후여야합니다."
	        });
	    }
		
		
	</script>
	<script type="text/javascript">
	$(".i").on("ifChecked", function(){
		
		$("#s_date").empty();
		$("#s_date").append("<td>정직 시작일</td><td><div><input type='date' id='start_date' placeholder='07/01/2022'></div></td>");
		$("#e_date").empty();
		$("#e_date").append("<td>정직 종료일</td><td><div><input type='date' id='end_date' placeholder='07/01/2022'></div></td>");
		$("#input_table").append("<input class='btn btn-success' type='submit' value='상태변경' onclick='calcDate1()'>");
	});
	$(".i1").on("ifChecked", function(){
		$("#s_date").empty();
		$("#e_date").empty();
	});
	$(".i2").on("ifChecked", function(){
		$("#s_date").empty();
		$("#e_date").empty();
		$("#s_date").append("<td>퇴직일</td><td><div><input type='date' id='fin_date' placeholder='07/01/2022'></div></td>");
		$("#input_table").append("<input class='btn btn-success' type='submit' value='상태변경' onclick='calcDate2()'>");
	});
	</script>
	
	<script src="<%=request.getContextPath()%>/resources/js/plugins/sweetalert/sweetalert.min.js"></script>
</body>
</html>