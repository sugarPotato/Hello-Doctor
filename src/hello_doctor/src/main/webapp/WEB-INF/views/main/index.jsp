<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="issueList" value="${dataMap.issueList}"></c:set>
<c:set var="comRecoList" value="${comRecoDataMap.comRecoList}"></c:set>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="<%=request.getContextPath()%>/resources/css/plugins/iCheck/custom.css"
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

.fc-basic-view .fc-body .fc-row {
    min-height: 4em;
    height: 53px;
}
.fc-view-container{

}

#vertical-timeline {
    position: relative;
    padding: 0;
    margin-top: 2.5em;
    margin-bottom: 2em;
}

</style>



</head>

<body>


	<div class="row">
		<div class="col-md-6 ibox-content" style="margin-bottom: auto;height: 290px;">
			<div class="col-sm-12" style="margin-bottom: 2%;margin-top: 1%;">
				<i class="fa fa-bell" style="font-size: 18px; margin-left: 1%; color: red;"></i>
				<h5 style="font-size: 20px; display: inline; margin-left: 2%;">특이사항</h5>
				<i class="fa fa-bars" style="font-size: 18px; margin-left: 71%;">
				</i>
			</div>

			<div class="ibox-content" style="
">

				<table class="table" style="margin-bottom: -1px;border-collapse: separate;border-spacing: 0px 2px;">
					<thead>
						<tr>
							<th style="border-bottom: hidden;">알람</th>
							<th style="border-bottom: hidden;">환자명</th>
							<th style="border-bottom: hidden;">특이사항</th>
							<th style="border-bottom: hidden;">날짜</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${issueList}" var="issue">
						<tr onclick="window.open('<%=request.getContextPath()%>/cooperation/significantDetail.do','','width=800, height=835, left=500, top=100');return false;">

							<td><c:if test="${issue.issYn eq 'Y'}">
									<i class="fa fa-circle" style="color: red;"></i>
								</c:if>
							</td>
							<td>${issue.pName}</td>
							<td>${issue.issTitle}</td>
							<td><fmt:formatDate value="${issue.mDate}" pattern="yyyy.MM.dd" /></td>
						</tr>
						<!-- <tr>
							<td></td>
							<td>OOO환자</td>
							<td>혈액 추가 검사</td>
							<td>2022-06-22</td>
						</tr>
						<tr>
							<td><i class="fa fa-circle" style="color: red;"></i></td>
							<td>OOO환자</td>
							<td>혈액 추가 검사</td>
							<td>2022-06-22</td>
						</tr>
						<tr>
							<td></td>
							<td>OOO환자</td>
							<td>혈액 추가 검사</td>
							<td>2022-06-22</td>
						</tr> -->
						</c:forEach>
					</tbody>
				</table>

			</div>


		</div>


		<div class="col-md-6 ibox-content" style="margin-bottom: 2%;height: 290px;">
			<div class="col-sm-12" style="margin-bottom: 2%;">
				<i class="fa fa-bell" style="font-size: 18px;color: #f8ac59;margin-left: 1%;"></i>
				<h5 style="font-size: 20px; display: inline; margin-left: 2%;">협진요청</h5>
				<h5 style="font-size: 27px;margin-left: 70%;display: inline;font-weight: bold;color: #f8ac59;">2</h5>
			</div>
			<div class="ibox-content" style="padding-bottom: 4%;">
				<table class="table" style="margin-bottom: -3%;border-collapse: separate;border-spacing: 0px 2px;">
					<thead style="">
						<tr style="border-bottom: hidden;">
							<th style="display: inline-block; padding-left: 2px; border-bottom: hidden; width: 378px;">
								<i class="fa fa-bell" style="color: #f8ac59;font-size: 15px;position: absolute;"></i>
							<p style="display: inline-block;margin-bottom: 0px;margin-left: 7%;">2022-06-22 14:36</p></th>
							<td
								style="display: inline-block; border-top: hidden; width: 500px; padding-top: 1px;">
								<i class="fa fa-minus" style="margin-right: 1%;"></i> 호흡기 내과 OOO님의 협진 요청이 있습니다.
							</td>
						</tr>
					<tr style="border-bottom: hidden;">
							<th style="display: inline-block; padding-left: 2px; border-bottom: hidden; width: 378px;">
								<i class="fa fa-bell" style="color: #f8ac59;font-size: 15px;position: absolute;"></i>
							<p style="display: inline-block;margin-bottom: 0px;margin-left: 7%;">2022-06-22 14:36</p></th>
							<td
								style="display: inline-block; border-top: hidden; width: 500px; padding-top: 1px;">
								<i class="fa fa-minus" style="margin-right: 1%;"></i> 호흡기 내과 OOO님의 협진 요청이 있습니다.
							</td>
						</tr>
						<tr style="border-bottom: hidden;">
							<th style="display: inline-block; padding-left: 2px; border-bottom: hidden; width: 378px;">
							<p style="display: inline-block;margin-bottom: 0px;margin-left: 7%;">2022-06-22 14:36</p></th>
							<td
								style="display: inline-block; border-top: hidden; width: 500px; padding-top: 1px;">
								<i class="fa fa-minus" style="margin-right: 1%;"></i> 호흡기 내과 OOO님의 협진 요청이 있습니다.
							</td>
						</tr>
					</thead>
				</table>
			</div>
		</div>

		<div class="col-md-4">
			<div class="ibox-content historyibox" id="ibox-content" style="margin-bottom: 4%;padding-bottom: 1%; height: 708px;">
				<div class="col-sm-12" style="margin-bottom: 5%; margin-top: 1%;">
				<h5 style="font-size: 18px; display: inline; margin-left: 2%;">최근 협진 진료 기록</h5>
					<a href="#" id="allsearch" style="margin-left: 19%;">전체보기</a>
				</div>
				<c:forEach items="${comRecoList}" var="comReco">
				<div id="vertical-timeline" class="vertical-container dark-timeline">
					<div class="vertical-timeline-block" style="">
						<div class="vertical-timeline-icon navy-bg">
							<i class="fa fa-user-md"></i>
						</div>

						<div class="vertical-timeline-content"
							onclick="window.open('<%=request.getContextPath()%>/cooperation/historyDetail.do','','width=800, height=835, left=500, top=100');return false;">
							<h2
								style="margin-bottom: 2px; font-size: 15px; font-weight: bold;">${comReco.dName}&nbsp;(${comReco.maName})</h2>

							<div class="col-sm-6" style="display: inline; padding-left: 0px;">
								<h5 style="margin-bottom: -11px; display: inline-block;">${comReco.mName}</h5>
							</div>
							<div class="col-sm-6"
								style="display: inline; padding-right: 0px;">
								<h5 style="margin-bottom: -5px; display: inline-block;">
									<fmt:formatDate value="${comReco.comDate}" pattern="yyyy-MM-dd hh:mm" />
								</h5>
							</div>
						</div>

					</div>
				</div>
				</c:forEach>
				<div id="vertical-timeline" class="vertical-container dark-timeline">
					<div class="vertical-timeline-block" style="">
						<div class="vertical-timeline-icon navy-bg">
							<i class="fa fa-user-md"></i>
						</div>

						<div class="vertical-timeline-content"
							onclick="window.open('history_detail.do','','width=800, height=835, left=500, top=100');return false;">
							<h2
								style="margin-bottom: 2px; font-size: 15px; font-weight: bold;""="">노혜지(정신의학과)</h2>

							<div class="col-sm-6" style="display: inline; padding-left: 0px;">
								<h5 style="margin-bottom: -11px; display: inline-block;">외래진료</h5>
							</div>
							<div class="col-sm-6"
								style="display: inline; padding-right: 0px;">
								<h5 style="margin-bottom: -5px; display: inline-block;">2022-05-23
									11:35</h5>
							</div>
						</div>

					</div>
				</div>
				<div id="vertical-timeline" class="vertical-container dark-timeline">
					<div class="vertical-timeline-block" style="">
						<div class="vertical-timeline-icon navy-bg">
							<i class="fa fa-user-md"></i>
						</div>

						<div class="vertical-timeline-content"
							onclick="window.open('history_detail.do','','width=800, height=835, left=500, top=100');return false;">
							<h2
								style="margin-bottom: 2px; font-size: 15px; font-weight: bold;">노혜지(정신의학과)</h2>

							<div class="col-sm-6" style="display: inline; padding-left: 0px;">
								<h5 style="margin-bottom: -11px; display: inline-block;">외래진료</h5>
							</div>
							<div class="col-sm-6"
								style="display: inline; padding-right: 0px;">
								<h5 style="margin-bottom: -5px; display: inline-block;">2022-05-23
									11:35</h5>
							</div>
						</div>

					</div>
				</div>
					<div id="vertical-timeline" class="vertical-container dark-timeline">
					<div class="vertical-timeline-block" style="">
						<div class="vertical-timeline-icon navy-bg">
							<i class="fa fa-user-md"></i>
						</div>

						<div class="vertical-timeline-content"
							onclick="window.open('<%=request.getContextPath()%>/cooperation/historyDetail','','width=800, height=835, left=500, top=100');return false;">
							<h2
								style="margin-bottom: 2px; font-size: 15px; font-weight: bold;""="">노혜지(정신의학과)</h2>

							<div class="col-sm-6" style="display: inline; padding-left: 0px;">
								<h5 style="margin-bottom: -11px; display: inline-block;">외래진료</h5>
							</div>
							<div class="col-sm-6"
								style="display: inline; padding-right: 0px;">
								<h5 style="margin-bottom: -5px; display: inline-block;">2022-05-23
									11:35</h5>
							</div>
						</div>

					</div>
				</div>
				<div id="vertical-timeline" class="vertical-container dark-timeline">
					<div class="vertical-timeline-block" style="">
						<div class="vertical-timeline-icon navy-bg">
							<i class="fa fa-user-md"></i>
						</div>

						<div class="vertical-timeline-content"
							onclick="window.open('history_detail.do','','width=800, height=835, left=500, top=100');return false;">
							<h2
								style="margin-bottom: 2px; font-size: 15px; font-weight: bold;""="">노혜지(정신의학과)</h2>

							<div class="col-sm-6" style="display: inline; padding-left: 0px;">
								<h5 style="margin-bottom: -11px; display: inline-block;">외래진료</h5>
							</div>
							<div class="col-sm-6"
								style="display: inline; padding-right: 0px;">
								<h5 style="margin-bottom: -5px; display: inline-block;">2022-05-23
									11:35</h5>
							</div>
						</div>

					</div>
				</div>
				<div id="vertical-timeline" class="vertical-container dark-timeline">
					<div class="vertical-timeline-block" style="">
						<div class="vertical-timeline-icon navy-bg">
							<i class="fa fa-user-md"></i>
						</div>

						<div class="vertical-timeline-content"
							onclick="window.open('<%=request.getContextPath()%>/cooperation/history_detail.do','','width=800, height=835, left=500, top=100');return false;">
							<h2
								style="margin-bottom: 2px; font-size: 15px; font-weight: bold;""="">노혜지(정신의학과)</h2>

							<div class="col-sm-6" style="display: inline; padding-left: 0px;">
								<h5 style="margin-bottom: -11px; display: inline-block;">외래진료</h5>
							</div>
							<div class="col-sm-6"
								style="display: inline; padding-right: 0px;">
								<h5 style="margin-bottom: -5px; display: inline-block;">2022-05-23
									11:35</h5>
							</div>
						</div>

					</div>
				</div>


			</div>
		</div>



		<div class="col-md-8">
			<div class="ibox ">


				<div class="ibox-content ">
					<div style="margin-bottom: 30px;">
						<h5 style="font-size: 20px;">협진 스케줄러</h5>
					</div>


					<div id="calendar" class="fc fc-unthemed fc-ltr"></div>
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
								<input
									style="display: inline; white-space: nowrap; zoom: 1.3; vertical-align: -3px;"
									type="checkbox" id="a">
							</p>
						</div>
					</div>

				</div>
			</div>
		</div>

	</div>



	<script
		src="<%=request.getContextPath()%>/resources/js/plugins/fullcalendar/moment.min.js"></script>

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