<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<!-- Sweet Alert -->
<link
	href="<%=request.getContextPath()%>/resources/css/plugins/sweetalert/sweetalert.css"
	rel="stylesheet">

<link
	href="<%=request.getContextPath()%>/resources/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css"
	rel="stylesheet">

<link
	href="<%=request.getContextPath()%>/resources/css/plugins/iCheck/custom.css"
	rel="stylesheet">

<link
	href="<%=request.getContextPath()%>/resources/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css"
	rel="stylesheet">

<link
	href="<%=request.getContextPath()%>/resources/css/plugins/summernote/summernote-bs4.css"
	rel="stylesheet">


<style>
body {
	width: 100%;
	margin: 0px auto;
}

h1 {
	font-weight: bold;
	font-size: 20px;
	text-align: center;
}

.filebox input[type="file"] {
	position: absolute;
	width: 0;
	height: 0;
	padding: 0;
	overflow: hidden;
	border: 0;
}

.note-editor.note-frame {
	margin-left: 6%;
	margin-right: 6%;
}
</style>

</head>
<body class="gray-bg" style="background-color: white;">

	<form role="form" method="post" action="modify" name="modify">
	<div class="ibox-content" style="margin-left: 6%; margin-right: 6%;">
		<div class="row">
			<div class="col-sm-12 filebox" style="display: contents;">
				<input type="text" class="form-control"
					style="width: 65%; margin-left: 7%; margin-bottom: 2%; margin-top: 2%; height: 45px;"
					value="${casevo.disTitle }" name="disTitle">
			</div>
		</div>
			<div style="margin-left: 6%;">

				<div class="col-sm-3 filebox" style="display: contents;">
					<i class="fa fa-user-circle-o"
						style="margin-right: 4px; font-size: 20px;" aria-hidden="true"></i>
					<h5 style="display: contents;">${casevo.dId }/${casevo.maName }</h5>
				</div>
				<div class="col-sm-3 filebox" style="display: contents;">
					<i class="fa fa-clock-o" style="width: 2%; margin-left: 14px;"></i>
					<h5 style="display: contents;">${casevo.disDate }</h5>
				</div>
				<div class="col-sm-3 filebox" style="display: contents;">
					<i class="fa fa-eye" style="width: 2%; margin-left: 17px;"></i>
					<h5 style="display: contents;">${casevo.disCnt }</h5>
				</div>
				<div class="col-sm-3 filebox" style="display: contents;">
					<div class="col-sm-6 filebox" style="display: contents;">
						<button type="button" class="btn btn-w-m btn-primary"
							style="margin-left: 69%;" onclick="modify_go()">완료</button>
					</div>
					<div class="col-sm-6 filebox" style="display: contents;">
						<button type="button" class="btn btn-w-m btn-primary btn-delete"
							style="background: coral; border-color: coral; margin-left: 2%;">취소</button>
					</div>
				</div>
			</div>

			<hr style="width: 94%;">

			<div style="margin-left: 7.5%; margin-bottom: 3%;">
				<h5 style="font-size: 15px;">환자 정보</h5>
				<div class="row">
					<div class="col-sm-4" style="padding-top: 8px;">
						<p style="font-weight: bold; display: inline;">성별:</p>
						<input hidden="" id="disSex" value="${casevo.disSex }">
						<div class="i-checks" style="display: inline;">
							<label> 남<input type="radio" value="남" name="disSex"
								id="man"></label>
						</div>
						<div class="i-checks" style="display: inline;">
							<label>여<input type="radio" value="여" name="disSex"
								id="woman"></label>
						</div>
					</div>
					<div class="col-sm-4">
						<p style="font-weight: bold; display: inline;">환자 분류:</p>
						<input hidden="" id="disClass" value=${casevo.disClass }>
						<div style="display: inline-block;">
							<select id="status" class="form-control"
								style="width: 180px; margin: 0" name="disClass">
								<option value="성인">성인</option>
								<option value="유아">유아</option>
								<option value="노인">노인</option>
								<option value="임산부">임산부</option>
							</select>
						</div>
					</div>
					<div class="col-sm-4">
						<p style="font-weight: bold; display: inline;">부상병:</p>
						<input type="text" class="form-control"
							style="display: inline; width: 70%;"
							value="${casevo.subDName }" name="subDName">
					</div>
				</div>

				<div class="row" style="margin-top: 2%;">
					<div class="col-sm-12">
						<p style="font-weight: bold; display: inline;">주상병:</p>
						<input type="text" class="form-control" placeholder="질병명 입력"
							style="display: inline; width: 90.5%;"
							value="${casevo.disDName }" name="disDName">
					</div>
				</div>

			</div>

			<input hidden="" name="disNo" value="${casevo.disNo }">
			<div class="form-group">
				<textarea class="textarea" id="content" rows="20"
					style="display: none;" name="disContent">

			 ${casevo.disContent }

			</textarea>
			</div>
		</div>
		</form>



	<script
		src="<%=request.getContextPath()%>/resources/js/plugins/summernote/summernote-bs4.js"></script>


	<!-- iCheck -->
	<script
		src="<%=request.getContextPath()%>/resources/js/plugins/iCheck/icheck.min.js"></script>
	<script>
            $(document).ready(function () {
                $('.i-checks').iCheck({
                    checkboxClass: 'icheckbox_square-green',
                    radioClass: 'iradio_square-green',
                });
            });
        </script>






	<script>
    $(document).ready(function(){

        $('.summernote').summernote();

   });
</script>

	<script type="text/javascript">
function modify_go(){
	var form = document.modify;
	var sub = " ";
	if($("input[name='disTitle']").val()==""){
		alert("제목은 필수입니다.");
		return;
	}else if($("input[name='disDName']").val() == ""){
		alert("주상병은 필수입니다.");
		return;
	}else if($("input[name='disContent']").val() == ""){
		alert("내용은 필수입니다.");
		return;
	}else{
		if($("input[name='subDName']").val() == ""){
			$('input[name=subDName]').attr('value',sub);
		}
		$("form[role='form']").submit();


	}
}
</script>

	<script>
window.onload = function() {
summernote_go($('#content'), '<%=request.getContextPath()%>');
}

</script>


	<script>
$(document).ready(function () {
    bsCustomFileInput.init()
})

$(document).ready(function(){
	var dis_sex = $("#disSex").val();
	var man = $("#man").val();
	var woman = $("#woman").val();

	if(dis_sex == man){
		$('#man').attr('checked', true);
	}else{
		$('#woman').attr('checked', true);
	}
});

$(document).ready(function(){
	var dis_class = $("#disClass").val();
	$("#status").val(dis_class).prop('selected', true);
});

</script>


	<script>
$('.btn-delete').click(function () {
    swal({
        title: "정말 삭제 하시겠습니까?",
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#DD6B55",
        confirmButtonText: "확인",
        closeOnConfirm: false
    }, function () {
        swal("", "삭제 했습니다.", "success");
        setTimeout(function(){
           window.location.reload();
        },1000);

    });

});

</script>


	<script>
window.onload = function() {
summernote_go($('#content'), '<%=request.getContextPath()%>
		');
		}
	</script>

	<script>
		$(document).ready(function() {
			$('.i-checks').iCheck({
				checkboxClass : 'icheckbox_square-green',
				radioClass : 'iradio_square-green',
			});
		});
	</script>

</body>
</html>

