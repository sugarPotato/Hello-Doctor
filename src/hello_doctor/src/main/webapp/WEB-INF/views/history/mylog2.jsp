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

<style>
.fc-scroller {
	overflow-y: hidden !important;
}
.width330{
	width: 634px;
}


body.light-skin {
    background-color: white;
    color: #3e5476;
}
</style>



</head>
<body style="background-color: white;">

<div  >
<div class="col-lg-12">
                <div >


                    <div>
					<div style="margin-bottom: 25px;margin-top: 23px;margin-left: 50px;">
						<h2><strong style="font-weight: bold;">MyLog</strong></h2><small style="color:red;">이력 보관기간은 14일입니다</small><hr>
					</div>
                        <div class="timeline-item width330">
                            <div class="row">

                                <div class="col-3 date">

                                    <i class="fa fa-briefcase"></i>
                                   <span style="margin-left: -30px;"></span><br>

                                    <small class="text-navy">2022-06-29 <br></small>

                                   <small class="text-navy">09:00pm</small>



                                </div>
                                <div class="col-7 content no-top-border">
                                    <p class="m-b-xs"><strong>[CaseDiscussion] 의견등록</strong></p>

                                    <p style="margin-bottom: 8px;">#처음보는 아토피 환자입니다.조언부탁드립니다</p>

                                    <p>해당환자 림프질환 의심되는데요.흉부사진 확인해보셨나요?저도 비슷한 환자 증상에서 림프진단 내렸습니다.</p>

                                </div>
                            </div>
                        </div>


                         <div class="timeline-item width330">
                            <div class="row">

                                <div class="col-3 date">

                                    <i class="fa fa-file-text"></i>
                                   <span style="margin-left: -30px;"></span><br>

                                    <small class="text-navy">2022-06-28 <br></small>

                                   <small class="text-navy">09:00pm</small>



                                </div>
                                <div class="col-7 content ">
                                    <p class="m-b-xs"><strong>[CaseDiscussion] 의견수정</strong></p>

                                    <p style="margin-bottom: 8px;">#처음보는 아토피 환자입니다.조언부탁드립니다</p>

                                    <p>해당환자 림프질환 의심되는데요.흉부사진 확인해보셨나요?저도 비슷한 환자 증상에서 림프진단 내렸습니다.</p>

                                </div>
                            </div>
                        </div>


                         <div class="timeline-item width330">
                            <div class="row">

                                <div class="col-3 date">

                                    <i class="fa fa-file-text"></i>
                                   <span style="margin-left: -30px;"></span><br>

                                    <small class="text-navy">2022-06-28 <br></small>

                                   <small class="text-navy">09:00pm</small>



                                </div>
                                <div class="col-7 content ">
                                    <p class="m-b-xs"><strong>[CaseDiscussion] 의견삭제</strong></p>

                                    <p style="margin-bottom: 8px;">#처음보는 아토피 환자입니다.조언부탁드립니다</p>

                                    <p>해당환자 림프질환 의심되는데요.흉부사진 확인해보셨나요?저도 비슷한 환자 증상에서 림프진단 내렸습니다.</p>

                                </div>
                            </div>
                        </div>



 <div class="timeline-item width330">
                            <div class="row">

                                <div class="col-3 date">

                                    <i class="fa fa-file-text"></i>
                                   <span style="margin-left: -30px;"></span><br>

                                    <small class="text-navy">2022-06-28 <br></small>

                                   <small class="text-navy">09:00pm</small>



                                </div>
                                <div class="col-7 content ">
                                    <p class="m-b-xs"><strong>[OrderSet] 피드백 등록</strong></p>

                                    <p style="margin-bottom: 8px;">#아토피(소아)</p>

                                    <p>특히 아토피피부염 증상이 심할수록 랩틴 수치는 더 낮아졌다. 중증 아토피피부염 환자군의 랩틴 혈중 농도는 약 0.33ng/ml이었는데,경증환자군의 경우에는 0.77ng.ml로
                                    나타났다.랩틴 호르몬 수치가 최대 2.6배 낮게 나타난 것이다</p>

                                </div>
                            </div>
                        </div>

 <div class="timeline-item width330">
                            <div class="row">

                                <div class="col-3 date">

                                    <i class="fa fa-file-text"></i>
                                   <span style="margin-left: -30px;"></span><br>

                                    <small class="text-navy">2022-06-28 <br></small>

                                   <small class="text-navy">09:00pm</small>



                                </div>
                                <div class="col-7 content ">
                                    <p class="m-b-xs"><strong>[OrderSet] 피드백 수정</strong></p>

                                    <p style="margin-bottom: 8px;">#아토피(소아)</p>

                                    <p>특히 아토피피부염 증상이 심할수록 랩틴 수치는 더 낮아졌다. 중증 아토피피부염 환자군의 랩틴 혈중 농도는 약 0.33ng/ml이었는데,경증환자군의 경우에는 0.77ng.ml로
                                    나타났다.랩틴 호르몬 수치가 최대 2.6배 낮게 나타난 것이다</p>

                                </div>
                            </div>
                        </div>

<div class="timeline-item width330">
                            <div class="row">

                                <div class="col-3 date">

                                    <i class="fa fa-file-text"></i>
                                   <span style="margin-left: -30px;"></span><br>

                                    <small class="text-navy">2022-06-28 <br></small>

                                   <small class="text-navy">09:00pm</small>



                                </div>
                                <div class="col-7 content ">
                                    <p class="m-b-xs"><strong>[OrderSet] 피드백 삭제</strong></p>

                                    <p style="margin-bottom: 8px;">#아토피(소아)</p>

                                    <p>특히 아토피피부염 증상이 심할수록 랩틴 수치는 더 낮아졌다. 중증 아토피피부염 환자군의 랩틴 혈중 농도는 약 0.33ng/ml이었는데,경증환자군의 경우에는 0.77ng.ml로
                                    나타났다.랩틴 호르몬 수치가 최대 2.6배 낮게 나타난 것이다</p>

                                </div>
                            </div>
                        </div>










                    </div>
                </div>
            </div>


</div>

	<!-- Mainly scripts -->
	<script
		src="<%=request.getContextPath()%>/resources/js/plugins/fullcalendar/moment.min.js"></script>
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

	<!-- jQuery UI  -->
	<script
		src="<%=request.getContextPath()%>/resources/js/plugins/jquery-ui/jquery-ui.min.js"></script>

	<!-- iCheck -->
	<script
		src="<%=request.getContextPath()%>/resources/js/plugins/iCheck/icheck.min.js"></script>

	<!-- Full Calendar -->
	<script
		src="<%=request.getContextPath()%>/resources/js/plugins/fullcalendar/fullcalendar.min.js"></script>

<script src='https://cdn.jsdelivr.net/npm/moment@2.27.0/min/moment.min.js'></script>
<script src='https://cdn.jsdelivr.net/npm/@fullcalendar/moment@5.5.0/main.global.min.js'></script>
<script src="https://unpkg.com/@popperjs/core@2/dist/umd/popper.js"></script>
<script src="https://unpkg.com/tippy.js@6"></script>
	<script>



		$(document).ready(function() {

			$('.i-checks').iCheck({
				checkboxClass : 'icheckbox_square-green',
				radioClass : 'iradio_square-green'
			});

			/* initialize the external events
			 -----------------------------------------------------------------*/

			$('#external-events div.external-event').each(function() {

				// store data so the calendar knows to render an event upon drop
				$(this).data('event', {
					title : $.trim($(this).text()), // use the element's text as the event title
					stick : true
				// maintain when user navigates (see docs on the renderEvent method)
				});

				// make the event draggable using jQuery UI
				$(this).draggable({
					zIndex : 1111999,
					revert : true, // will cause the event to go back to its
					revertDuration : 0
				//  original position after the drag
				});

			});

			/* initialize the calendar
			 -----------------------------------------------------------------*/

			var date = new Date();
			var d = date.getDate();
			var m = date.getMonth();
			var y = date.getFullYear();





			$('#calendar').fullCalendar({
				header : {
					left : 'prev,next today',
					center : 'title',
					right : 'month,agendaWeek,agendaDay'
				},
				editable : true,
				droppable : true, // this allows things to be dropped onto the calendar
				titleFormat : 'YYYY - MM',
				timeFormat: 'HH:mm',
				locale : 'ko', // 한국어 설정
				drop : function() {
					// is the "remove after drop" checkbox checked?
					if ($('#drop-remove').is(':checked')) {
						// if so, remove the element from the "Draggable Events" list
						$(this).remove();
					}
				},

				dateClick : function(info){
					alert("11");

				},

				eventClick: function(info) {
					OpenWindow('detailList.do','예약목록',700,650);

				},

				events : [ {
					title : '강현수 <혈액검사>',
					start : '2022-07-01 13:00',
					end : '2022-07-01 15:00',
					color: '#74c0fc',
						description: '2020년 하반기 영업실적 안내입니다.'
				}, {
					title : '이의찬 <뇌신경검사>',
					start : '2022-07-15 13:00',
					end : '2022-07-15 15:00',
					color: '#f06595'
				}, {
					id : 999,
					title : '강현수 <혈액검사>',
					start : new Date(y, m, d - 3, 16, 0),
					allDay : false,
					color: '#74c0fc'
				}, {
					id : 999,
					title : '이의찬 <뇌신경검사>',
					start : new Date(y, m, d + 4, 16, 0),
					allDay : false,
					color: '#f06595'
				}, {
					title : '박태정 <X-ray>',
					start : new Date(y, m, d, 10, 30),
					allDay : false,
					color: '#63e6be'
				}, {
					title : '유정민 <X-ray>',
					start : new Date(y, m, d, 12, 0),
					end : new Date(y, m, d, 14, 0),
					allDay : false,
					color: '#D25565'
				}, {
					title : '강현수 <혈액검사>',
					start : new Date(y, m, d + 1, 19, 0),
					end : new Date(y, m, d + 1, 22, 30),
					allDay : false,
					color: '#74c0fc'
				} ]
			});

		});


		function mediregist(data){

				day = $(data).attr('data-date') ;
				console.log(day);
// 				alert(day);
				OpenWindow('regist.do','업무 등록',700,650);



		}
		$('.ibox').ready(function(){
			$('.fc-view').find('.fc-bg').find("td").on("click", function(){
				 mediregist(this);
			})
			}

		);
		$('.ibox').ready(function(){
			  // 실행할 기능을 정의해주세요.
			$('.fc-button').on('click', function(){
				$('.fc-view').find('.fc-bg').find("td").on("click", function(){
					 mediregist();
				})
			})
		});

	</script>

</body>
</html>