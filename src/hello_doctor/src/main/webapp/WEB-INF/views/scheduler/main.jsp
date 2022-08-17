<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
	width: 330px;
}
body{
	width: 100%;
}

</style>



</head>
<body>
<h2>스케줄</h2>
<hr style="background:#8d9db6;">
<div class="row animated fadeInDown" style="margin-top: 15px;" >
<div class="col-lg-4">
                <div class="ibox ">
                    <div class="ibox-content inspinia-timeline height700 cartscroll" style=" height:750px; width: 340px; overflow-x: hidden;">
					<div style="margin-bottom: 30px;">
						<h3>오늘 예약 일정</h3>
					</div>
                        <c:forEach items="${result}" var="i">
	                        <div class="timeline-item width330">
	                            <div class="row">
	                                <div class="col-4 date" style="max-width: 27.333333%;">
	                                    <i class="fa fa-user-md"></i>
	                                     ${i.reservedate}
	                                    <br>
<!-- 	                                    <small>21 hour ago</small> -->
	                                </div>
	                                <div class="col-7 content">
	                                    <p class="m-b-xs"><strong>${i.pName}
	                                    	<c:if test="${i.taNo != null }">
									<i class="fa fa-users" style="color:black"></i>
											</c:if>


	                                     &lt;${i.rsvName}></strong></p>
	                                    <p>${i.pRnum} (${i.pSex})  <br></p>
	                                </div>
	                            </div>
	                        </div>
                        </c:forEach>


                    </div>
                </div>
            </div>

	<div class="col-lg-8" style="margin-left: -20px;">
		<div class="ibox ">

<!-- 			<div class="ibox-title" style="margin-bottom: -54px; margin-left: 167px;"> -->
<!-- 			    <h5>내 일정</h5> -->
<!-- 			    <p style="display: inline;"> -->
<!-- 					<input style="display: inline; white-space: nowrap; zoom: 1.3; vertical-align: -3px;" type="checkbox" id="a">  -->
<!-- 				</p> -->
<!-- 			</div> -->
			<div class="ibox-content height750 " >
				<div style="margin-bottom: 30px;">
						<h3>협진 스케줄러</h3>
					</div>


					<div id="calendar" class="fc fc-unthemed fc-ltr">

				</div>
				<div style="margin-top: 8px;">
					<select class="form-control"
						style="height: 31px; width: 151px; text-align: center; font-size: 1em; display: inline-block; border-radius: 5px;"
						name="searhlist">
						<option disabled="" selected="">협진목록</option>
						<option value="외래진료">노혜지(간이식)</option>
						<option value="입원치료">이의찬(다리골절)</option>
						<option value="수술">박태정(기흉)</option>
					</select>

					<div class="ibox-title" style="display: inline-block;">
						<h5>내 일정</h5>
						<p style="display: inline;">
							<input type="checkbox" id="chk_select"
								style="display: inline; white-space: nowrap; zoom: 1.3; vertical-align: -3px;"
								type="checkbox" id="a">
						</p>
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

			$(document).on('click', '.fc-button', function(){

				$('.fc-view').find('.fc-bg').find("td").on("click", function(){
				 mediregist(this);
			})

		});

	</script>

</body>
</html>