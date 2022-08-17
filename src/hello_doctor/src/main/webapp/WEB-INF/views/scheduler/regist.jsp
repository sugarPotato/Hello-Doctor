<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 등록</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous"
	referrerpolicy="no-referrer" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/jquery.datetimepicker.css" />
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">

<!-- Sweet Alert -->
<link href="<%=request.getContextPath()%>/css/plugins/sweetalert/sweetalert.css" rel="stylesheet">

<link href="<%=request.getContextPath()%>/css/animate.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet">
<style>
</style>

</head>
<body>
	<section style="padding: 0px;" class="content container-fluid">
		<div class="justify-content-center">
			<div class="col-md-13" style="padding: 3px">
				<div class="card card-outline card-info">
				<div class="card-header row" style="margin-right: 0px; margin-left: 0px;">
						<h4 class="col-md-8" style="width: 72%;">업무등록</h4>
						<div class="card-tools" style="margin-left: 13%;">
							&nbsp;&nbsp;&nbsp;&nbsp;
							<button type="button" class="btn btn-danger btn-sm demo4" style="border: none; background: none;">
								<i class="fa fa-plus-square" aria-hidden="true" style="color: #3E5476; font-size: 23px; vertical-align: -8px;"></i>
							</button>
							<button type="button" style="border: none; background: none;" onclick="window.close();">
								<i class="fa fa-times-rectangle" aria-hidden="true" style="color: #3E5476;font-size: 23px;vertical-align: -6px;"></i>
							</button>
						</div>
					</div>
					<!--end card-header  -->



					<div class="card-body pad" style="min-height: 582px; height: auto;">
						<form role="form" method="post" action="regist.do" name="registForm">

							<div class="form-group">
								<div class="col-md-6" style="display: contents;">
									<i class="fa fa-calendar" style="margin-left: 3.5%;"></i> <label for="date"></label> <input class="datetimepicker form-control" type="text" placeholder="YYYY - mm - dd   &nbsp;HH:mm" id="title" name="title"
										style="display: inline; width: 30%; margin-left: 28px;">
								</div>
							</div>

							<div class="form-group" style="display: inline-block; width: 44%;">
								<div class="col-md-6" style="display: contents;">
									<label for="title" style="margin-left: 4px;">협진명</label>
								</div>
								<div class="col-md-6" style="display: contents;">
									<div class="input-group-prepend" style="display: inline; margin-left: 2%;">
										<select class="form-control" style="height: 33px; width: 69%; text-align: center; font-size: 1em; display: inline-block; margin-left: 17px;" name="searhlist">
											<option disabled="" selected="">선택</option>
											<option value="외래진료">노혜지(간이식)</option>
											<option value="입원치료">이의찬(다리골절)</option>
											<option value="수술">박태정(기흉)</option>
											<option value="수술">이정규(간이식)</option>
										</select>
									</div>
								</div>
							</div>

							<div class="form-group" style="display: inline-block; width: 50%;">
								<div class="col-md-6" style="display: contents;">
									<label for="title" style="margin-left: -3px;">의료행위</label>
								</div>
								<div class="col-md-6" style="display: contents;">
									<div class="input-group-prepend" style="display: inline; margin-left: 2%;">
										<select class="form-control" style="height: 33px; width: 151px; text-align: center; font-size: 1em; display: inline-block; margin-left: 14px;" name="searhlist">
											<option disabled="" selected="">선택</option>
											<option value="외래진료">외래 진료</option>
											<option value="입원치료">입원 치료</option>
											<option value="수술">수술</option>
										</select>
									</div>
								</div>
							</div>




							<div class="form-group">
								<div class="col-md-6">
									<label for="title" style="">내용</label>
								</div>
								<div class="col-md-6" style="display: contents;">
									<textarea id="title" name="title_disease" class="form-control" placeholder="내용을 입력하세요" style="width: 84%; display: inline; margin-left: 70px; height: 100px; margin-top: -26px;"></textarea>
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-6" style="display: contents; width: 9%;">
									<label style="margin-left: -3px; display: inline-block;" for="title">하위업무</label>
								</div>
								<input type="text" placeholder="하위업무 등록 +" id="worktitle" name="title" class="form-control" style="display: inline; width: 40%; margin-left: 7px; margin-left: 18px;""> <i class="fa fa-calendar" style="margin-left: 2.5%;"></i> <input
									class="datetimepicker form-control" type="text" placeholder="YYYY - mm - dd  &nbsp;HH:mm" id="workdate" name="title" style="display: inline; width: 30%; margin-left: 18px;"> <a id="append_a" onclick="apendtr()"
									style="display: inline; margin-left: 11px; font-size: 23px; vertical-align: -4px;"><i class="fa fa-plus"></i></a>
								<table id="worklist" class="table" style="width: 79%; margin: 0 auto; border-bottom: 1px solid #e7eaec; text-align: center; margin-top: 20px;">
									<tbody>
									</tbody>
								</table>
							</div>

						</form>


					</div>
					<!--end body -->

					<div class="card-footer" style="display: none"></div>
					<!--end card-footer  -->
				</div>
				<!-- end card -->
			</div>
			<!-- end col-md-12 -->
		</div>
		<!-- end row -->
	</section>
	<!-- datepicker 날짜만 -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<!-- datetimepicker 날짜시간-->
	<script src="<%=request.getContextPath()%>/resources/js/jquery.datetimepicker.full.min.js"></script>
	    <!-- Sweet alert -->
    <script src="js/plugins/sweetalert/sweetalert.min.js"></script>
	<script>
	
	 
	 $('.demo4').click(function () {
         swal({
                     title: "Are you sure?",
                     text: "예약을 하기위해서는 주치의의 승인이 필요합니다. 주치의에게 승인요청하시겠습니까?",
                     type: "warning",
                     showCancelButton: true,
                     confirmButtonColor: "#DD6B55",
                     confirmButtonText: "승인요청완료",
                     cancelButtonText: "승인요청취소",
                     closeOnConfirm: false,
                     closeOnCancel: false },
                 function (isConfirm) {
                     if (isConfirm) {
                         swal("Deleted!", "Your imaginary file has been deleted.", "success");
                     } else {
                         swal("Cancelled", "Your imaginary file is safe :)", "error");
                     }
                 });
     });
	 
		$(document).ready(function() {
			$('.i-checks').iCheck({
				checkboxClass : 'icheckbox_square-green',
				radioClass : 'iradio_square-green',
			});
		});
		
		
		 if($('#worklist >tbody tr').length == 0 ){
			 $('#worklist').append("<tr id='deftr'><td>항목을 추가하세요.</td></tr>")
		 	
		 }
						  
		  $('.datetimepicker').datetimepicker();
		  function apendtr() {
				var wt = $('#worktitle').val();
				var date = $('#workdate').val();
				
				var deftr = document.getElementById("deftr");	
				
				if(deftr!=null && deftr){
		  			deftr.remove();
		  		}
		  			
				$('#worklist')
						.append(
								"<tr id='append_tr'><td>"
										+ wt
										+ "</td><td>"
										+ date
										+ "</td><td onclick='removetr(this)'><a><i style='font-size: 22px;' class='fa fa-minus'></i></a></td></tr>")


			}
		  	
		  
			function removetr(aa) {
				$(aa).parents("tr").remove();
				if($('#worklist >tbody tr').length == 0 ){
	 				 $('#worklist').append("<tr id='deftr'><td>항목을 추가하세요.</td></tr>")
	 			 	
	 			 }
			}
			
	</script>

</body>
</html>