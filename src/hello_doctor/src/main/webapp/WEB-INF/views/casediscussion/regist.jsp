<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<link href="<%=request.getContextPath()%>/resources/css/plugins/summernote/summernote-bs4.css" rel="stylesheet">
	<link href="<%=request.getContextPath() %>/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/font-awesome/css/font-awesome.css" rel="stylesheet">
  	<link href="<%=request.getContextPath()%>/resources/css/plugins/dropzone/basic.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/css/plugins/dropzone/dropzone.css" rel="stylesheet">
	<link href="<%=request.getContextPath() %>/resources/js/plugins/gritter/jquery.gritter.css" rel="stylesheet">

    <link href="<%=request.getContextPath() %>/resources/css/animate.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/css/style.css" rel="stylesheet">

    <script src="<%=request.getContextPath() %>/resources/js/jquery-3.1.1.min.js"></script>

	<!-- icheck -->
    <link href="<%=request.getContextPath()%>/resources/css/plugins/iCheck/custom.css" rel="stylesheet">
<style>
body {


	overflow: scroll;
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
    border: 1px solid gray;
    margin-right: 4%;
    margin-left: 4%;
    width: 92%;
}


</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="gray-bg">
	<div style="margin-top: 2%; text-align: center; width: 95%;" >
 		<div style="width: 150px; display: contents;"><button type="submit" style="margin: 10px 40px;width: 20%;" class="btn btn-w-m btn-primary" onclick="regist_go()">등록</button></div>
 		<div style="width: 150px; display: contents;"><button type="button" class="btn btn-w-m btn-primary" style="background: #dc5c5c; border-color: #dc5c5c; width: 20%;" onclick="history.go(-1)">취소</button></div>
 	</div>
 	<!-- ------------------------------------------------------------------------------------------------ -->
 	<!-- ------------------------------------------------------------------------------------------------ -->
 	<!-- ------------------------------------------------------------------------------------------------ -->
 	<form role="form" method="post" action="regist" name="regist">
	<div class="row-main" style="padding-top: 3%;">
 		<div class="col-sm-6" style="display: table-cell; float: left;">
 		<label style="width: auto;text-align: end;margin-top: 1%;margin-left: 6%;font-weight: bold;">제목:</label>
 		<input type="text" class="form-control" style="float: right; width: 85%;margin-right: 1%;" name="disTitle">
 		<input type="text" class="form-control" hidden="hidden" value="${doctorLogin.dId }" name="dId"/>
<!--  		<input type="text" class="form-control" hidden="hidden" name="dis_date" id="dis_date" value="">  -->
 		</div>
 		<div class="col-sm-6" style="display: table-cell; float: right;">
 		<label class="col-sm-2 col-form-label" style=" display: inline-block; width: 61px; margin-left: 61%;font-weight: bold;">전공:</label>
 		<input type="text" class="form-control" readonly name="sort" id="sort" style=" float: right; width: 20% ;margin-right: 6%;text-align: center;" name="maName" value="${doctorLogin.maName }">
 		</div>
 	</div>

	<div style="margin-left: 4%;margin-top: 6%;">
		<div class="row" style="">
			<div class="col-sm-4" style="padding-top: 8px;"><p style="font-weight: bold;display: inline;">환자성별: </p>
			<div class="i-checks" style="display: inline;"><label class=""> 남<div class="iradio_square-green" style="position: relative;"><input type="radio" value="남" style="position: absolute; opacity: 0;" name="disSex"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div></label></div>
               <div class="i-checks" style="display: inline;"><label>여<div class="iradio_square-green" style="position: relative;"><input type="radio" checked="" value="여" style="position: absolute; opacity: 0;" name="disSex"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div></label></div>
				</div>
			<div class="col-sm-4"><p style="font-weight: bold;display: inline-block;">환자 분류: </p>
				<div style="display: inline-block;">
<!-- 	               <button data-toggle="dropdown" class="btn btn-white dropdown-toggle" type="button" aria-expanded="false">유아 </button> -->
<!-- 	               <ul class="dropdown-menu" x-placement="bottom-start" style="position: absolute; top: 35px; left: 0px; will-change: top, left;"> -->
<!-- 	                   <li><a href="#">성인</a></li> -->
<!-- 	                   <li><a href="#">노인</a></li> -->
<!-- 	                   <li><a href="#">임산부</a></li> -->
<!-- 	               </ul> -->
	               <select id="status" class="form-control" style="width: 180px; margin: 0" name="disClass">
                                <option value="성인" selected="">성인</option>
                                <option value="유아">유아</option>
                                <option value="노인">노인</option>
                                <option value="임산부">임산부</option>
                   </select>
	           </div>
			</div>
			<div class="col-sm-4"><p style="font-weight: bold;display: inline;" >부상병: </p>
				<input type="text" class="form-control" placeholder="질병명 입력" style="display: inline;width: 72.3%;" name="subDName">
			</div>
		</div>

		<div class="row" style="margin-top: 2%;">
				<div class="col-sm-12">
					<p style="font-weight: bold;display: inline;">주상병: </p>
					<input type="text" class="form-control" placeholder="질병명 입력" style="display: inline;width: 91.5%;" name="disDName">
				</div>
			</div>
	</div>
	<div class="form-group" style="margin-bottom: 4%;">
		<label for="content" style="margin-left: 4%; padding-top: 4%;">내 용</label>
		<textarea class="textarea form-control" id="content" rows="20"
			placeholder="1000자 내외로 작성하세요." style="display: none;" name="disContent"></textarea>
	</div>
	</form>




	<form action="#" class="dropzone dz-clickable" id="dropzoneForm" style=" width: 92%; margin-left: 4%; border: 1px dotted #1ab394;">
		<div class="dz-default dz-message">
			<span><strong>클릭 및 드래그를 이용하여 파일을 첨부해 주세요.</strong></span>
		</div>
	</form>
	<!-- ------------------------------------------------------------------------------------------------ -->
 	<!-- ------------------------------------------------------------------------------------------------ -->
 	<!-- ------------------------------------------------------------------------------------------------ -->
	<br><br><br><br>




	<!-- Mainly scripts -->
    <script src="<%=request.getContextPath()%>/resources/js/jquery-3.1.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/popper.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/bootstrap.js"></script>

    <!-- iCheck -->
    <script src="<%=request.getContextPath()%>/resources/js/plugins/iCheck/icheck.min.js"></script>

    <!-- openWindow -->
    <script src="<%=request.getContextPath()%>/resources/js/common.js"></script>

    <script src="<%=request.getContextPath()%>/resources/js/plugins/summernote/summernote-bs4.js"></script>

    <!-- DROPZONE -->
    <script src="<%=request.getContextPath()%>/resources/js/plugins/dropzone/dropzone.js"></script>







<script>
$(document).ready(function(){
     $('.i-checks').iCheck({
         checkboxClass: 'icheckbox_square-green',
         radioClass: 'iradio_square-green',
     });
 });


window.onload = function() {
summernote_go($('#content'), '<%=request.getContextPath()%>');
}


function regist_go(){
	var form = document.regist;
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
  $(document).ready(function(){
      $('.i-checks').iCheck({
          checkboxClass: 'icheckbox_square-green',
          radioClass: 'iradio_square-green',
      });
  });

  $("#file").on('change',function(){
	  var fileName = $("#file").val();
	  $(".upload-name").val(fileName);
	});



</script>





</body>
</html>