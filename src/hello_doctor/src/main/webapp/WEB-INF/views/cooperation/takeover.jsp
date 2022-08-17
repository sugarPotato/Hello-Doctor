<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>진료 등록</title>

 <link href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- FooTable -->
    <link href="<%=request.getContextPath()%>/resources/css/plugins/footable/footable.core.css" rel="stylesheet">

    <link href="<%=request.getContextPath()%>/resources/css/animate.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/css/style.css" rel="stylesheet">

<!-- icheck -->
    <link href="<%=request.getContextPath()%>/resources/css/plugins/iCheck/custom.css" rel="stylesheet">

 <!-- Sweet Alert -->
    <link href="<%=request.getContextPath()%>/resources/css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
</head>

<body>


<style>
.footable {
    width: 80%;
    margin-left: 88px;
}

.swal2-popup {
  font-size: 1.6rem !important;
  font-family: Georgia, serif;
}

</style>
	<div class="" style="margin-right: 0px; margin-left: 0px;" >






                                </div>

           <div class="row">
                <div class="col-lg-12">




                            <div class="user-button row" style="margin-top: 10px;margin-left: 211px;margin-bottom: 10px;">

                                        <div class="col-md-3" >
                                            <button type="button" style="background-color: #FF6B1A;color: white;"class="btn btn-default btn-sm btn-block demo3"><i class="fa fa-handshake-o" aria-hidden="true"></i> 인수인계하기</button>
                                        </div>
                                        <div class="col-md-3">
                                        <button type="button" class="btn btn-default btn-sm btn-block" id="cancelBtn"
								onclick="window.close();">닫 기</button>
                                        </div>

                                    </div>

                        <div class="ibox-content">
    <h4 style="margin-left: 210px;">호흡기내과 박태정님에게 인계할 의료를 선택해주세요</h4>
                            <table class="footable table table-stripped toggle-arrow-tiny">
                                <thead>
                                <tr>

                                    <th data-toggle="true">날짜</th>
                                    <th>진료명</th>
                                    <th data-type="numeric" >인계여부</th>
                                    <th data-hide="all">설명</th>
                                    <th data-hide="all">검사항목</th>


                                </tr>
                                </thead>
                                <tbody>
								<tr>
                                    <td>2022-07-10</td>
                                    <td>외래진료</td>
                                    <td style="padding-left: 30px;"><input type="checkbox"  checked class="i-checks" name="input[]" ></td>
                                    <td>Inceptos Hymenaeos Ltd</td>
                                    <td>CHEST-PA,일반혈액검사1</td>

                                </tr>
                                <tr>
                                    <td>2022-07-10</td>
                                    <td>외래진료</td>
                                    <td style="padding-left: 30px;"><input type="checkbox"  checked class="i-checks" name="input[]"></td>
                                    <td>Inceptos Hymenaeos Ltd</td>
                                    <td>CHEST-PA,일반혈액검사1</td>

                                </tr>
                               <tr>
                                    <td>2022-07-10</td>
                                    <td>외래진료</td>
                                    <td style="padding-left: 30px;"><input type="checkbox"  checked class="i-checks" name="input[]"></td>
                                    <td>Inceptos Hymenaeos Ltd</td>
                                    <td>CHEST-PA,일반혈액검사1</td>

                                </tr>
                               <tr>
                                    <td>2022-07-10</td>
                                    <td>외래진료</td>
                                    <td style="padding-left: 30px;"><input type="checkbox"  checked class="i-checks" name="input[]"></td>
                                    <td>Inceptos Hymenaeos Ltd</td>
                                    <td>CHEST-PA,일반혈액검사1</td>

                                </tr>
                               <tr>
                                    <td>2022-07-10</td>
                                    <td>외래진료</td>
                                    <td style="padding-left: 30px;"><input type="checkbox"  checked class="i-checks" name="input[]"></td>
                                    <td>Inceptos Hymenaeos Ltd</td>
                                    <td>CHEST-PA,일반혈액검사1</td>

                                </tr>
                               <tr>
                                    <td>2022-07-10</td>
                                    <td>외래진료</td>
                                    <td style="padding-left: 30px;"><input type="checkbox"  checked class="i-checks" name="input[]"></td>
                                    <td>Inceptos Hymenaeos Ltd</td>
                                    <td>CHEST-PA,일반혈액검사1</td>

                                </tr>
                               <tr>
                                    <td>2022-07-10</td>
                                    <td>외래진료</td>
                                    <td style="padding-left: 30px;"><input type="checkbox"  checked class="i-checks" name="input[]"></td>
                                    <td>Inceptos Hymenaeos Ltd</td>
                                    <td>CHEST-PA,일반혈액검사1</td>

                                </tr>
                               <tr>
                                    <td>2022-07-10</td>
                                    <td>외래진료</td>
                                    <td style="padding-left: 30px;"><input type="checkbox"  checked class="i-checks" name="input[]"></td>
                                    <td>Inceptos Hymenaeos Ltd</td>
                                    <td>CHEST-PA,일반혈액검사1</td>

                                </tr>
                               <tr>
                                    <td>2022-07-10</td>
                                    <td>외래진료</td>
                                    <td style="padding-left: 30px;"><input type="checkbox"  checked class="i-checks" name="input[]"></td>
                                    <td>Inceptos Hymenaeos Ltd</td>
                                    <td>CHEST-PA,일반혈액검사1</td>

                                </tr>
                               <tr>
                                    <td>2022-07-10</td>
                                    <td>외래진료</td>
                                    <td style="padding-left: 30px;"><input type="checkbox"  checked class="i-checks" name="input[]"></td>
                                    <td>Inceptos Hymenaeos Ltd</td>
                                    <td>CHEST-PA,일반혈액검사1</td>

                                </tr>

                                </tbody>
                                <tfoot>
                              <!-- <tr>
                                    <td colspan="3" style="padding-right: 488px;">
                                        <ul class="pagination float-right"></ul>
                                    </td>
                                </tr>
                                 -->
                                </tfoot>
                            </table>

                        </div>

                </div>
            </div>



 <!-- Mainly scripts -->
    <script src="<%=request.getContextPath()%>/resources/js/jquery-3.1.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/popper.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/bootstrap.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- FooTable -->
    <script src="<%=request.getContextPath()%>/resources/js/plugins/footable/footable.all.min.js"></script>

   <!-- iCheck -->
    <script src="<%=request.getContextPath()%>/resources/js/plugins/iCheck/icheck.min.js"></script>
  <!-- Sweet alert -->
    <script src="<%=request.getContextPath()%>/resources/js/plugins/sweetalert/sweetalert.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="<%=request.getContextPath()%>/resources/js/inspinia.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/plugins/pace/pace.min.js"></script>

    <!-- Page-Level Scripts -->
    <script>
        $(document).ready(function() {

            $('.footable').footable();
            $('.footable2').footable();

        });

        $(document).ready(function(){
        	console.log("아이체크 되는건가?");
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });
        });

        $('.demo2').click(function(){
            swal({
                title: "Good job!",
                text: "You clicked the button!",
                type: "success"
            });
        });


        $('.demo3').click(function () {
            swal({
                title: "선택하신 의료행위를 인계하시겠습니까?",
                text: "다시 되돌릴 수 없습니다!",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "인계하기",
                closeOnConfirm: false
            }, function () {
                swal("인계완료!", "", "success").then(function(){

                    self.close();

                });
            });
        });
    </script>




</body>
</html>