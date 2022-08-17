
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<c:set var="coTaskList" value="${coTaskList}"/>
<c:set var="coNo" value="${coNo}"/>
<c:set var="historyList" value="${historyList}"/>
<c:set var="selectLast" value="${selectLast}"/>
<c:set var="lastPreList" value="${lastPreList}"/>
<c:set var="myIssueList" value="${myIssueList}"/>
<c:set var="dId" value="${dId}"/>
<c:set var="coDocList" value="${coDocList}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="<%=request.getContextPath()%>/resources/css/plugins/iCheck/custom.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/css/plugins/slick/slick.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/css/plugins/slick/slick-theme.css"
	rel="stylesheet">

  <!-- Sweet Alert -->
    <link href="<%=request.getContextPath()%>/resources/css/plugins/sweetalert/sweetalert.css" rel="stylesheet">

 <link href="<%=request.getContextPath()%>/resources/css/animate.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/css/style.css" rel="stylesheet">
<!-- slick -->
  <link href="<%=request.getContextPath()%>/resources/css/plugins/slick/slick.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/css/plugins/slick/slick-theme.css" rel="stylesheet">



<style type="text/css">
body.light-skin {
    background-color: #f9f9f9;
    color: #3e5476;
    margin-top: -25px;
}
.tab-content .panel-body{
height: 312px;
}
.doctorsList {
    width: 70%;
    float: right;
    padding-left: -31px;
    padding-top: 10px;
}

.loginfo > p {
    margin-bottom: -2px;
    padding-left: -5px;
}

div {

}

.diagnosis {
    width: 70%;
    float: left;
    height: 375px;
}
.history {
	width: 29%;
    float: right;
    height: 811px;
}

.clean {
	clear: both;
}

.rest {
	width: 70%;
	float: left;
	height: 361px;
}

.container {
	max-width: none;
	margin: 0;
	padding: 0;
	height: 100%;
}

.buttonplace {
	width: 100%;
	height: 70px;
	padding-top: 13px;
	padding-left: 30px;
	padding-right: 15px;
	text-align: right;
}

.todaydiagnosis {
	width: 50%;
	height: 100%;
	float: left;
}
.alldiagnosis {
    width: 50%;
    float: right;
    height: 100%;
}

.allrest {
	width: 35%;
	height: 89%;
	float: left;
}

.issue {
	width: 65%;
	height: 100%;
	float: right;
	margin-top: 15px;
}

.i-checks {
	display: inline-block;
	float: right;
	s
}

.ibox-title {
	margin: 0;
	padding: 0;
	padding-top: 10px;
}

.time {
	font-size: 70%;
}

.titlefont {
	font-size: 15px;
}

.ibox {
	margin-bottom: 0px;
}



.ibox-content {
    padding: 0;
    display: block;
    height: 168px;
    overflow: auto;
    overflow-y: hidden;
}
#ibox-content{

overflow: none;
}
.fa-plus-circle::before {
	font-size: 20px;
}

.btn-default {
	width: 25px;
	height: 20px;
	padding: 0;
	margin-left: 12px;
}

button.dim {
	margin-bottom: 13px !important;
	padding-top: 0;
}

.selectbox {
	width: 110px;
	float: right;
	margin-right: 15px;
	margin-left: 5px;
	font-size: 15px
}

.nav-tabs>li>a {
	width: 80px;
	padding: 0;
	padding-top: 20px;
	padding-bottom: 20px;
	padding-left: 8px;
	margin-right: 5px;
}

.tabicon {
	font-size: 20px;
}

.panel-body {
	height: 380px;
	margin: 0;
}

.tabs-container .panel-body {
	padding: 0;
}

.disc {
	font-size: 50px;
	width: 20%;
	float: left;
}

.download {
	width: 100%;
	height: 13%;
	padding: 0;
	padding-left: 10px;
}

.fileinfo {
	width: 80%;
	float: right;
	padding-left: 5px;
}

.logicon::before {
    font-size: 22px;
}

.loginfo {
    width: 88%;
    float: right;
    padding-left: -31px;
    padding-top: 10px;
}
#recordtable>tbody>tr>td, #recordtable>tfoot>tr>td {
	padding: 0;
	border : 1px dotted #999;
	padding-left: 10px;
}

#recordtable>tbody>tr {
	display: flex;
}


#vertical-timeline {
	margin: 0;
	width: 100%;
}

.datefont {
	color: #1ab394;
}

.historyibox {
    height: 640px;
}

.title {
	width: 120px;
	display: inline-block;
	text-align: center;
}

.vertical-timeline-content p {
	margin: 2px;
}

#pastrecord {
    height: auto;
    padding-left: 6px;
    padding-top: 10px;
}
.fa-paperclip {
	display: block;
	border: 1px solid #e2e2e2;
}

.checkbutton {
	padding-top: 5px;
	margin: 0;
	height: 35px;
}

.table {
	margin-bottom: 0px;
}

.logdisc{
	    width: 30px;
    display: inline-block;
        padding-left: 10px;
    padding-top: 10px;
}
.medidisc{
   width: 40px;
    display: inline-block;
        padding-left: 10px;
    padding-top: 10px;
}
.medipic{
	border-radius: 50%;
	width: 40px;
	height: 50px;
}
.loginfo > p {
    margin-bottom: 3px;
    padding-left: 5px;
}

.fileinfo > p{
	margin-bottom : 3px;
	padding-left: 15px;
}
.panel-body{
	height: 380px;
	display: block;
	overflow:auto;

}
#allsearch{
	font-size: 20px;
	margin: 20px;

}
.fa-cog{
	font-size: 30px;
	float:right;
	margin-right:20px;
}
#dropdown-toggle{
	float:right;
}
.light-skin .ibox-content{
overflow-x: hidden;
}
</style>
</head>
<body style="margin-top: -25px;">
	<div class="container">
		<!-- <div class="buttonplace">
			<button class="btn btn-outline btn-success  dim" type="button">전체
				채팅</button>
		</div> -->
		<div class="diagnosis">
			<div class="todaydiagnosis">
				<div class="ibox">
					<div class="ibox-title">
						<!-- <div class="bg-primary p-xs b-r-xl title">전체 진료</div> -->
<div class=""><h3>전체 진료


<select class="form-control selectbox" name="account">
							<option>최신순</option>
							<option>등록일순</option>

						</select>


<button style="height: 29px;"onclick="window.open('reservationform.do','','width=800, height=533, left=500, top=100');return false;" class="btn btn-outline btn-warning dim" type="button"><h5>예약하기</h5></button>

					<div class="i-checks">
							<label class="checkbutton">
								<div class="icheckbox_square-green" style="position: relative;">
									<input type="checkbox" style="position: absolute; opacity: 0;">
									<ins class="iCheck-helper"
										style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
								</div>나의 진료
							</label>
						</div>

</h3>


</div>

					</div>
					<div class="ibox-content" style="width: 96%;height: 300px;">

						<table class="table table-hover">
							<thead>
								<tr>
									<th>진료일시</th>
									<th>담당의료진</th>
									<th>진료구분</th>
									<th>진행도</th>
								</tr>
							</thead>
							<tbody id="taskTable">

							<c:forEach items="${coTaskList}" var="cotasksub">
								<tr onclick="window.open('reservation_detail.do','','width=800, height=650, left=500, top=100');return false;">
									<td class="time">${cotasksub.taDate}</td>
									<td>${cotasksub.dId}</td>
									<td>${cotasksub.taName}</td>
									<td style="padding-left: 0px;">
                                <div class="progress">
                                <div class="progress-bar-danger" style="width: ${cotasksub.progressPercentage}%" role="progressbar" aria-valuenow="43" aria-valuemin="60" aria-valuemax="100"></div>
                            </div>

									</td>
								</tr>
								</c:forEach>

								<tr>
									<td class="time">2022-07-05 09:15</td>
									<td>이정규</td>
									<td>외래 진료</td>
									<td style="padding-left: 0px;"> <div class="progress">
                                <div class="progress-bar progress-bar-success" style="width: 40%" role="progressbar" aria-valuenow="35" aria-valuemin="0" aria-valuemax="100"></div>
                            </div></td>
								</tr>
								<tr>
									<td class="time">2022-07-05 09:15</td>
									<td>이정규</td>
									<td>입원치료</td>
									<td style="padding-left: 0px;">
                                <div class="progress">
                                <div class="progress-bar-danger" style="width: 30%" role="progressbar" aria-valuenow="43" aria-valuemin="60" aria-valuemax="100"></div>
                            </div>

									</td>
								</tr>
								<tr>
									<td class="time">2022-07-05 09:15</td>
									<td>이정규</td>
									<td>외래진료</td>
									<td style="padding-left: 0px;">
                                <div class="progress">
                                <div class="progress-bar-success" style="width: 70%" role="progressbar" aria-valuenow="43" aria-valuemin="60" aria-valuemax="100"></div>
                            </div>

									</td>
								</tr>
								<tr>
									<td class="time">2022-07-05 09:15</td>
									<td>이정규</td>
									<td>외래진료</td>
									<td style="padding-left: 0px;">
                                <div class="progress">
                                <div class="progress-bar-danger" style="width: 90%" role="progressbar" aria-valuenow="43" aria-valuemin="60" aria-valuemax="100"></div>
                            </div>

									</td>
								</tr>

							</tbody>



						</table>
					</div>
				</div>


			</div>
			<div class="alldiagnosis">

				<div class="ibox">
					<div class="ibox" style="margin-bottom: 0">

						<div class="" style="margin-top:5px;"><h3></h3></div>


				                  <div class="tabs-container">
                        <ul class="nav nav-tabs" role="tablist" style="margin-bottom: -13px;">
                            <li><a style="width:92px; padding-top: 16px;"class="nav-link" data-toggle="tab" href="#tab-1">최근진료기록</a></li>
                            <li><a style="padding-top: 16px;padding-left: 16px;"class="nav-link active" data-toggle="tab" href="#tab-2">처방전</a></li>
                        </ul>
                        <div class="tab-content">
                            <div role="tabpanel" id="tab-1" class="tab-pane">
                                <div class="panel-body">

						<div  class="ibox-content" id="pastrecord">

						진료날짜 : ${selectLast.mDate}<br><br>
						${selectLast.symptom}




							<div class="lightBoxGallery">
								<a
									href="<%=request.getContextPath()%>/resources/img/gallery/1.jpg"
									title="Image from Unsplash" data-gallery=""><img
									src="<%=request.getContextPath()%>/resources/img/gallery/1s.jpg"
									style="width: 40%; height: 90%"></a> <a
									href="<%=request.getContextPath()%>/resources/img/gallery/2.jpg"
									title="Image from Unsplash" data-gallery=""><img
									src="<%=request.getContextPath()%>/resources/img/gallery/2s.jpg"
									style="width: 40%; height: 90%"></a> <a
									title="Image from Unsplash" data-gallery=""><img></a> <i
									class="fa fa-paperclip">알레르기 검사결과서 </i> <i
									class="fa fa-paperclip">혈액 검사결과서</i>
							</div>
						</div>
                                </div>
                            </div>
                            <div role="tabpanel" id="tab-2" class="tab-pane active">
                                <div class="panel-body">


						<div class="ibox" style="margin-bottom: 0">
							<div class="ibox" style="margin-bottom: 0">

								<h4 style="text-align: center">처방</h4>
								<div class="ibox-content" style="height: 80px;">

									<table class="table table-bordered" class="medicine">

										<tbody>
										<c:forEach items="${lastPreList}" var="lastpre">
											<tr>
												<td class="mediname"> ${lastpre.cureName}</td>
												<td>${lastpre.pQuantity}</td>
												<td>${lastpre.pAday}</td>
												<td>${lastpre.pDays}</td>
											</tr>
											</c:forEach>
										</tbody>
									</table>


								</div>

							</div>
						</div>

                                </div>
                            </div>
                        </div>


                    </div>



					</div>

				</div>
			</div>
		</div>








		 <div class="history">

			<div class="ibox-title">
			<div class="">
				<h3><a style="font-size: 12px"><i class="fa fa-history"></i>히스토리</a></h3> </div>

<div class="col-md-6" style="display: contents;">
								<div class="form-group" style="width: 300px; display: contents;">
									<i class="fa fa-calendar" style="margin-left: 3.5%;"></i> <label
										for="date"></label>
										<input class="datepicker" type="text" placeholder="   YYYY - mm - dd" id="title" name="title" class="form-control"
									style="display: inline;margin-left: 25px;margin-bottom: 17px;height: 31px;width: 151px;">
								</div>
							</div>


				<!-- <select	class="form-control selectbox" name="account">

					<option>최신순</option>
					<option>등록일순</option>

				</select> -->
			</div>
			<div class="ibox-content historyibox" id="ibox-content">
				<a href="#" id="allsearch">전체보기</a>


<c:forEach items="${historyList}" var = "history">
<div class="timeline-item width330">
                            <div class="row">
                                <div class="col-3 date">
                                    <i class="fa fa-briefcase"></i>
                                   ${history.taDate}
                                    <br>
                                    <small class="text-navy">2 hour ago</small>
                                </div>
                                <div class="col-7 content no-top-border">
                                    <p class="m-b-xs"><strong>${history.pName} &lt;${history.taName}&gt;</strong></p>

                                    <p>${history.pRnum} (${history.pSex}) <br> ${history.taContent}</p>

                                </div>
                            </div>
                        </div>
</c:forEach>


<div class="timeline-item width330">
                            <div class="row">
                                <div class="col-3 date">
                                    <i class="fa fa-briefcase"></i>
                                    6:00 am
                                    <br>
                                    <small class="text-navy">2 hour ago</small>
                                </div>
                                <div class="col-7 content top-border">
                                    <p class="m-b-xs"><strong>이정규 &lt;외래진료&gt;</strong></p>

                                    <p>19930718 (남) <br> 아토피 증상</p>

                                </div>
                            </div>
                        </div>


<div class="timeline-item width330">
                            <div class="row">
                                <div class="col-3 date">
                                    <i class="fa fa-briefcase"></i>
                                    6:00 am
                                    <br>
                                    <small class="text-navy">2 hour ago</small>
                                </div>
                                <div class="col-7 content top-border">
                                    <p class="m-b-xs"><strong>이정규 &lt;외래진료&gt;</strong></p>

                                    <p>19930718 (남) <br> 아토피 증상</p>

                                </div>
                            </div>
                        </div>

<div class="timeline-item width330">
                            <div class="row">
                                <div class="col-3 date">
                                    <i class="fa fa-briefcase"></i>
                                    6:00 am
                                    <br>
                                    <small class="text-navy">2 hour ago</small>
                                </div>
                                <div class="col-7 content top-border">
                                    <p class="m-b-xs"><strong>이정규 &lt;외래진료&gt;</strong></p>

                                    <p>19930718 (남) <br> 아토피 증상</p>

                                </div>
                            </div>
                        </div>

<div class="timeline-item width330">
                            <div class="row">
                                <div class="col-3 date">
                                    <i class="fa fa-briefcase"></i>
                                    6:00 am
                                    <br>
                                    <small class="text-navy">2 hour ago</small>
                                </div>
                                <div class="col-7 content top-border">
                                    <p class="m-b-xs"><strong>이정규 &lt;외래진료&gt;</strong></p>

                                    <p>19930718 (남) <br> 아토피 증상</p>

                                </div>
                            </div>
                        </div>









			</div>
		</div>
		<span class="clean"></span>


		<div class="rest">

					<div class="issue">
				<div class="col-md-12" style="padding-right: 0">
					<h3>특이사항
					<div class="btn-groups" style="float: right;margin-top: -22px;margin-right: 15px;">

						<ul class="pagination float-right">
							<li class="footable-page-arrow disabled"><a data-page="prev"
								href="#prev">‹</a></li>
							<li class="footable-page active"><a data-page="0" href="#">1</a></li>
							<li class="footable-page"><a data-page="1" href="#">2</a></li>
							<li class="footable-page"><a data-page="2" href="#">3</a></li>
							<li class="footable-page"><a data-page="3" href="#">4</a></li>
							<li class="footable-page"><a data-page="4" href="#">5</a></li>
							<li class="footable-page-arrow"><a data-page="next"
								href="#next">›</a></li>
						</ul>

					</div>



					</h3>

					<div class="ibox-content" style="height: 310px;">

						<table class="table">
							<thead style="">
							<c:forEach items="${myIssueList}" var="myissue">


							<tr style="border-bottom: hidden;" onclick="window.open('significantDetail.do','','width=800, height=440, left=500, top=100');return false;" type="button">
									<th
										style="display: inline-block; padding-left: 2px; border-bottom: hidden; width: 378px;"><p
											style="display: inline; color: #17ce17; font-size: 18px; margin-right: 1%;">1</p>
										작성의료진:${myissue.dId}/<fmt:formatDate value="${myissue.mDate}" pattern="yyyy-MM-dd"/></th>
									<td
										style="display: inline-block; border-top: hidden; width: 500px; padding-top: 1px;">
										<i class="fa fa-minus" style="margin-right: 1%;"></i>${myissue.issContent}
									</td>
								</tr>


							</c:forEach>




							</thead>
						</table>


					</div>
				</div>


			</div>





			<div class="allrest">
				<div class="tabs-container">
					<ul class="nav nav-tabs" style="background-color: #e7eaec;height: 48px;">
						<li><a class="nav-link active" data-toggle="tab" style="padding-top: 13px;"
							href="#tab-3"> <i class="fa fa-laptop tabicon"></i>로그
						</a></li>
						<li><a style="padding-top: 13px;"class="nav-link" data-toggle="tab" href="#tab-4"><i
								class="fa fa-user-md tabicon"></i>의료진</a></li>
						<li><a class="nav-link" data-toggle="tab" href="#tab-5" style="padding-top: 13px;"><i
								class="fa fa-archive tabicon"></i>자료실</a></li>
					</ul>
					<div class="tab-content">
						<div id="tab-3" class="tab-pane active">
							<div class="panel-body" style="height: 312px;">
								<table class="table table-bordered" class="logtable">

						<tbody>
						<tr>
									<td class="download">

								<div class="logdisc"><i class="fa fa-plus-circle logicon"></i></div>
								<div class="loginfo" onclick="window.open('significant_detail.do','','width=630, height=440, left=500, top=100');return false;">
								<p> 박태정님이 특이사항을 등록하였습니다.</p>
								</div>

								</td>

							</tr>
						<tr>
						<tr>
									<td class="download">

								<div class="logdisc"><i class="fa fa-check-circle logicon"></i></div>
								<div class="loginfo">
								<p> 이정규님이 협진요청을 수락하셨습니다.</p>
								</div>

								</td>

							</tr>
						<tr>
						<tr >
									<td class="download">

								<div class="logdisc"><i class="fa fa-times-circle logicon"></i></div>
								<div class="loginfo">
								<p> 강현수님이 협진요청을 거절하셨습니다.</p>
								</div>

								</td>

							</tr>
						<tr>
						<tr>
									<td class="download">

								<div class="logdisc"><i class="fa fa-plus-circle logicon"></i></div>
								<div class="loginfo">
								<p> 박태정님이 특이사항을 등록하였습니다.</p>
								</div>

								</td>

							</tr>
						<tr>
						<tr>
									<td class="download">

								<div class="logdisc"><i class="fa fa-plus-circle logicon"></i></div>
								<div class="loginfo">
								<p> 박태정님이 특이사항을 등록하였습니다.</p>
								</div>

								</td>

							</tr>
							<tr>
									<td class="download">

								<div class="logdisc"><i class="fa fa-plus-circle logicon"></i></div>
								<div class="loginfo">
								<p> 박태정님이 특이사항을 등록하였습니다.</p>
								</div>

								</td>

							</tr>
						<tr>


						</tbody>
					</table>
							</div>
						</div>
						<div id="tab-4" class="tab-pane">
							<div class="panel-body">
							<a id="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                               <i class="fa fa-cog"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user" x-placement="bottom-start" style="position: absolute; top: 18px; left: 26px; will-change: top, left;">
                                <li><a  onclick="window.open('doctor_invite.do','','width=1100, height=700, left=500, top=100');return false;" class="dropdown-item  ">의료진 초대</a>


                                </li>
                                <li data-toggle="modal" data-target="#myModal4"><a href="#" class="dropdown-item">협진 탈퇴</a>
                                </li>

                                 </li>
                                <li onclick="window.open('cooperover.do','','width=800, height=540, left=500, top=100');return false;" ><a href="#" class="dropdown-item">협진 종료</a>
                                </li>
                            </ul>
                            <!-- 협진 탈퇴 시 업무 남아있을 경우 모달창 -->
                              <div class="modal inmodal" id="myModal4" tabindex="-1" role="dialog"  aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content animated fadeIn">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                            <i class="fa fa-clock-o modal-icon"></i>
                                            <h5 class="modal-title" style="color:red;">탈퇴 불가!</h5>
                                            <small style="font-size: 1.1em;">아래의 진료들이 남아있어 협진 탈퇴가 불가합니다.<br>인수인계를 진행해주세요</small>
                                        </div>
                                        <div class="modal-body">
                                           <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>날짜</th>
                                    <th>의료행위</th>

                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>2022-07-06 09:10</td>
                                    <td>입원치료</td>

                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>2022-07-08 11:15</td>
                                    <td>외래진료</td>
                                </tr>
                                <tr>
                                   <td>3</td>
                                    <td>2022-07-010 14:20</td>
                                    <td>외래진료</td>
                                </tr>
                                </tbody>
                            </table>
                                        </div>
                                        <div class="modal-footer">
                                      <!--      <button type="button" class="btn btn-white" data-dismiss="modal">Close</button>-->
                                            <button type="button" class="btn btn-primary" data-dismiss="modal">닫 기</button>
                                        </div>
                                    </div>
                                </div>
                            </div>


							<table class="table table-bordered" class="logtable">

						<tbody>

<c:forEach items="${coDocList}" var="codoc">
						<tr onclick="window.open('doctor_detail.do','','width=810, height=485, left=500, top=100');return false;" >
									<td class="download">

								<div class="medidisc"><img src="${codoc.dPic}" alt="" class="medipic"></div>

								<div class="loginfo" style="width: 70%;">
								<p>의료진명 : ${codoc.dName}</p>
								<p>담당분야 : ${codoc.maName}</p>
								<p>상태 : ${codoc.statusResult}</p>
								</div>

								</td>

							</tr>
</c:forEach>
						</tbody>
					</table>

							</div>
						</div>
						<div id="tab-5" class="tab-pane">
							<div class="panel-body">
								<table class="table table-bordered" id="recordtable">

									<tbody>
										<tr>
											<td class="download">

												<div class="disc">
													<a href="#"><i class="fa fa-floppy-o "></i></a>
												</div>
												<div class="fileinfo">
													<p>
														<label>파일명 : </label>박태정_CHESTPA
													</p>
													<p>
														<label>등록일 : </label>2022-07-05
													</p>
													<p>
														<label>작성자 : </label>노혜지
													</p>
												</div>

											</td>

										</tr>
										<tr>
											<td class="download">

												<div class="disc">
													<a href="#"><i class="fa fa-floppy-o "></i></a>
												</div>
												<div class="fileinfo">
													<p>
														<label>파일명 : </label>박태정_CHESTPA
													</p>
													<p>
														<label>등록일 : </label>2022-07-05
													</p>
													<p>
														<label>작성자 : </label>노혜지
													</p>
												</div>

											</td>

										</tr>
										<tr>
											<td class="download">

												<div class="disc">
													<a href="#"><i class="fa fa-floppy-o "></i></a>
												</div>
												<div class="fileinfo">
													<p>
														<label>파일명 : </label>박태정_CHESTPA
													</p>
													<p>
														<label>등록일 : </label>2022-07-05
													</p>
													<p>
														<label>작성자 : </label>노혜지
													</p>
												</div>

											</td>

										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>





	<!-- containter /div -->

<div class="wrapper wrapper-content" style="background: white; margin-top: 2%;">
            <div class="row">
           		 <div class="col-sm-6">

				</div>

			</div>
			<hr style="width: 95%">
            <div class="row justify-content-md-center" style="padding-top: 0%;width: 100%;">
                <div class="col-lg-11">
				<div class="slick_demo_2">
                        <div>
                           <div class="ibox-content" style="border-radius: 12%;border: 2px solid #1ab394;width: 235px;" onclick="location.href='detail.do'" type="button">
							<div>
								<h3 style="text-align: center; font-size: 20px;">
									<strong style="font-size: 15px;">안녕하세요</strong>
								</h3>
								<p style="text-align: center; font-size: 14px; padding-top: 7%;">
									<strong style="font-size: 13px;">안녕하세요</strong>
								</p>
								<div class="row">
									<div style="width: 35%; margin-left: 6%; margin-right: 2%;">
										<i class="fa fa-signal" style="font-size: 1px;"></i>
										<h5 style="display: inline; margin-left: -1%; font-size: 1px;">안녕하세요</h5>
									</div>
									<div style="margin-left: 2%;">
										<h5 style="display: inline; font-size: 1px;"></h5>
									</div>
									<div style="width: 30%; margin-left: 6%;">
										<i class="fa fa-calendar" style="font-size: 1px;"></i>
										<h5 style="display: inline; margin-left: 2%; font-size: 1px;">안녕하세요</h5>
									</div>
								</div>
								<hr style="background-color: white; margin-top: 5px; margin-bottom: 5px;">
								<div class="row">
									<div class="col-sm-6" style="padding-left: 16%;">
										<i class="fa fa-eye"></i>
										<h5 style="display: inline; margin-left: 7%;">안녕하세요</h5>
									</div>
									<div class="col-sm-6" style="text-align: end; padding-right: 23%;">
										<i class="fa fa-thumbs-o-up"></i>
										<h5 style="display: inline; margin-left: 7%;">안녕하세요</h5>
									</div>
								</div>
							</div>
						</div>
                        </div>

                        <div>
                           <div class="ibox-content" style="border-radius: 12%;border: 2px solid #1ab394;width: 235px;" onclick="location.href='detail.do'" type="button">
							<div>
								<h3 style="text-align: center; font-size: 20px;">
									<strong style="font-size: 15px;">안녕하세요</strong>
								</h3>
								<p style="text-align: center; font-size: 14px; padding-top: 7%;">
									<strong style="font-size: 13px;">안녕하세요</strong>
								</p>
								<div class="row">
									<div style="width: 35%; margin-left: 6%; margin-right: 2%;">
										<i class="fa fa-signal" style="font-size: 1px;"></i>
										<h5 style="display: inline; margin-left: -1%; font-size: 1px;">안녕하세요</h5>
									</div>
									<div style="margin-left: 2%;">
										<h5 style="display: inline; font-size: 1px;"></h5>
									</div>
									<div style="width: 30%; margin-left: 6%;">
										<i class="fa fa-calendar" style="font-size: 1px;"></i>
										<h5 style="display: inline; margin-left: 2%; font-size: 1px;">안녕하세요</h5>
									</div>
								</div>
								<hr style="background-color: white; margin-top: 5px; margin-bottom: 5px;">
								<div class="row">
									<div class="col-sm-6" style="padding-left: 16%;">
										<i class="fa fa-eye"></i>
										<h5 style="display: inline; margin-left: 7%;">안녕하세요</h5>
									</div>
									<div class="col-sm-6" style="text-align: end; padding-right: 23%;">
										<i class="fa fa-thumbs-o-up"></i>
										<h5 style="display: inline; margin-left: 7%;">안녕하세요</h5>
									</div>
								</div>
							</div>
						</div>
                        </div>



                        <div>
                           <div class="ibox-content" style="border-radius: 12%;border: 2px solid #1ab394;width: 235px;" onclick="location.href='detail.do'" type="button">
							<div>
								<h3 style="text-align: center; font-size: 20px;">
									<strong style="font-size: 15px;">안녕하세요</strong>
								</h3>
								<p style="text-align: center; font-size: 14px; padding-top: 7%;">
									<strong style="font-size: 13px;">안녕하세요</strong>
								</p>
								<div class="row">
									<div style="width: 35%; margin-left: 6%; margin-right: 2%;">
										<i class="fa fa-signal" style="font-size: 1px;"></i>
										<h5 style="display: inline; margin-left: -1%; font-size: 1px;">안녕하세요</h5>
									</div>
									<div style="margin-left: 2%;">
										<h5 style="display: inline; font-size: 1px;"></h5>
									</div>
									<div style="width: 30%; margin-left: 6%;">
										<i class="fa fa-calendar" style="font-size: 1px;"></i>
										<h5 style="display: inline; margin-left: 2%; font-size: 1px;">안녕하세요</h5>
									</div>
								</div>
								<hr style="background-color: white; margin-top: 5px; margin-bottom: 5px;">
								<div class="row">
									<div class="col-sm-6" style="padding-left: 16%;">
										<i class="fa fa-eye"></i>
										<h5 style="display: inline; margin-left: 7%;">안녕하세요</h5>
									</div>
									<div class="col-sm-6" style="text-align: end; padding-right: 23%;">
										<i class="fa fa-thumbs-o-up"></i>
										<h5 style="display: inline; margin-left: 7%;">안녕하세요</h5>
									</div>
								</div>
							</div>
						</div>
                        </div>
						 <div>
                           <div class="ibox-content" style="border-radius: 12%;border: 2px solid #1ab394;width: 235px; ">
							<div>
								<h3 style="text-align: center; font-size: 20px;">
									<strong style="font-size: 15px;">처음보는 아토피 환자입니다. 조언 부탁
										드려요.</strong>
								</h3>
								<p style="text-align: center; font-size: 14px; padding-top: 7%;">
									<strong style="font-size: 13px;">아토피</strong>
								</p>
								<div class="row">
									<div style="width: 35%; margin-left: 6%; margin-right: 2%;">
										<i class="fa fa-signal" style="font-size: 1px;"></i>
										<h5 style="display: inline; margin-left: -1%; font-size: 1px;">피부과/피부염</h5>
									</div>
									<div style="margin-left: 2%;">
										<h5 style="display: inline; font-size: 1px;">작성자</h5>
									</div>
									<div style="width: 30%; margin-left: 6%;">
										<i class="fa fa-calendar" style="font-size: 1px;"></i>
										<h5 style="display: inline; margin-left: 2%; font-size: 1px;">2022-07-06</h5>
									</div>
								</div>
								<hr style="background-color: white; margin-top: 5px; margin-bottom: 5px;">
								<div class="row">
									<div class="col-sm-6" style="padding-left: 16%;">
										<i class="fa fa-eye"></i>
										<h5 style="display: inline; margin-left: 7%;">84</h5>
									</div>
									<div class="col-sm-6" style="text-align: end; padding-right: 23%;">
										<i class="fa fa-thumbs-o-up"></i>
										<h5 style="display: inline; margin-left: 7%;">21</h5>
									</div>
								</div>
							</div>
						</div>
                        </div>
                        <div>
					<div class="ibox-content" style="border-radius: 12%;border: 2px solid #1ab394;width: 235px; ">
							<div>
								<h3 style="text-align: center; font-size: 20px;">
									<strong style="font-size: 15px;">처음보는 아토피 환자입니다. 조언 부탁
										드려요.</strong>
								</h3>
								<p style="text-align: center; font-size: 14px; padding-top: 7%;">
									<strong style="font-size: 13px;">아토피</strong>
								</p>
								<div class="row">
									<div style="width: 35%; margin-left: 6%; margin-right: 2%;">
										<i class="fa fa-signal" style="font-size: 1px;"></i>
										<h5 style="display: inline; margin-left: -1%; font-size: 1px;">피부과/피부염</h5>
									</div>
									<div style="margin-left: 2%;">
										<h5 style="display: inline; font-size: 1px;">작성자</h5>
									</div>
									<div style="width: 30%; margin-left: 6%;">
										<i class="fa fa-calendar" style="font-size: 1px;"></i>
										<h5 style="display: inline; margin-left: 2%; font-size: 1px;">2022-07-06</h5>
									</div>
								</div>
								<hr style="background-color: white; margin-top: 5px; margin-bottom: 5px;">
								<div class="row">
									<div class="col-sm-6" style="padding-left: 16%;">
										<i class="fa fa-eye"></i>
										<h5 style="display: inline; margin-left: 7%;">84</h5>
									</div>
									<div class="col-sm-6" style="text-align: end; padding-right: 23%;">
										<i class="fa fa-thumbs-o-up"></i>
										<h5 style="display: inline; margin-left: 7%;">21</h5>
									</div>
								</div>
							</div>
						</div>
					</div>
                        <div>
                          <div class="ibox-content" style="border-radius: 12%;border: 2px solid #1ab394;width: 235px; ">
							<div>
								<h3 style="text-align: center; font-size: 20px;">
									<strong style="font-size: 15px;">처음보는 아토피 환자입니다. 조언 부탁
										드려요.</strong>
								</h3>
								<p style="text-align: center; font-size: 14px; padding-top: 7%;">
									<strong style="font-size: 13px;">아토피</strong>
								</p>
								<div class="row">
									<div style="width: 35%; margin-left: 6%; margin-right: 2%;">
										<i class="fa fa-signal" style="font-size: 1px;"></i>
										<h5 style="display: inline; margin-left: -1%; font-size: 1px;">피부과/피부염</h5>
									</div>
									<div style="margin-left: 2%;">
										<h5 style="display: inline; font-size: 1px;">작성자</h5>
									</div>
									<div style="width: 30%; margin-left: 6%;">
										<i class="fa fa-calendar" style="font-size: 1px;"></i>
										<h5 style="display: inline; margin-left: 2%; font-size: 1px;">2022-07-06</h5>
									</div>
								</div>
								<hr style="background-color: white; margin-top: 5px; margin-bottom: 5px;">
								<div class="row">
									<div class="col-sm-6" style="padding-left: 16%;">
										<i class="fa fa-eye"></i>
										<h5 style="display: inline; margin-left: 7%;">84</h5>
									</div>
									<div class="col-sm-6" style="text-align: end; padding-right: 23%;">
										<i class="fa fa-thumbs-o-up"></i>
										<h5 style="display: inline; margin-left: 7%;">21</h5>
									</div>
								</div>
							</div>
						</div>
                        </div>





                    </div>
                </div>
               </div>



	</div>

</div>
<!-- container div -->
<script
		src="https://cdn.jsdelivr.net/npm/handlebars@latest/dist/handlebars.js"></script>

//나의 진료 눌렀을 때 찍히는 템플릿!

<script type="text/x-handlebars-template"  id="reply-list-template" >

{{#each .}}

<tr onclick="window.open('reservation_detail.do','','width=800, height=650, left=500, top=100');return false;">
									<td class="time">{{taDate}}</td>
									<td>{{dId}}</td>
									<td>{{taName}}</td>
									<td style="padding-left: 0px;">
                                <div class="progress">
                                <div class="progress-bar-danger" style="width: {{progressPercentage}}%" role="progressbar" aria-valuenow="43" aria-valuemin="60" aria-valuemax="100"></div>
                            </div></td>
								</tr>
{{/each}}

</script>










<script type="text/javascript" src="http://www.datejs.com/build/date.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/plugins/slick/slick.min.js"></script>

	<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

	<script
		src="<%=request.getContextPath()%>/resources/js/plugins/iCheck/icheck.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/plugins/slick/slick.min.js"></script>

 <!-- Sweet alert -->
    <script src="<%=request.getContextPath()%>/resources/js/plugins/sweetalert/sweetalert.min.js"></script>

	<script>
		$(document).ready(function() {


//나의진료보기 아이체크 했을때!
    $('.i-checks').on('ifChecked',function(event){ //나의 진료 보기
    	// alert('${coNo}');
 		var coNo = '${coNo}';
		console.log("coNo==>"+coNo);



    	 $.ajax({
    		url : 'myTaskChecked.do',
    		data: {'coNo':coNo},
    		dataType:'json', //받는 타입
    		type:'POST',
    		success : function(data){
    			console.log(data);
    			$("tbody#taskTable tr").remove();
    			var template=Handlebars.compile($('#reply-list-template').html());

    			var html = template(data);
    			$('tbody#taskTable').html(html);

    		},
    		error: function(){
    			alert('실패');
    		}

    	})
    });


    //아이체크 풀었을 때!
    $('.i-checks').on('ifUnchecked',function(event){
    	// alert("언체크 표시");
     //	alert('${coNo}');
 		var coNo = '${coNo}';
		console.log("coNo==>"+coNo);



    	 $.ajax({
    		url : 'myTaskUnChecked.do',
    		data: {'coNo':coNo},
    		dataType:'json', //받는 타입
    		type:'POST',
    		success : function(data){
    			console.log("unchecked==>"+data);
    			$("tbody#taskTable tr").remove();
    			var template=Handlebars.compile($('#reply-list-template').html());

    			var html = template(data);
    			$('tbody#taskTable').html(html);

    		},
    		error: function(){
    			alert('실패');
    		}

    	})
    });






			$('.i-checks').iCheck({

				checkboxClass : 'icheckbox_square-green',
				radioClass : 'iradio_square-green',
			});
		});

        $('.demo3').click(function () {
            swal({
                title: "협진을 탈퇴하시겠습니까?",
                text: "",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "탈퇴하기",
                closeOnConfirm: false
            }, function () {
                swal("탈퇴되셨습니다!");
                setTimeout(function(){
		              window.location.reload();
	            },1000);
            });
        });

        $('.slick_demo_2').slick({
            infinite: true,
            slidesToShow: 3.8,
            slidesToScroll: 2,
            centerMode: true,
            responsive: [
                {
                    breakpoint: 1024,
                    settings: {
                        slidesToShow: 3,
                        slidesToScroll: 3,
                        infinite: true,
                        dots: true
                    }
                },
                {
                    breakpoint: 600,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 2
                    }
                },
                {
                    breakpoint: 480,
                    settings: {
                        slidesToShow: 1,
                        slidesToScroll: 1
                    }
                }
            ]
        });

        $(function(){
		    $('.datepicker').datepicker();
		  })




	</script>


</body>
</html>
