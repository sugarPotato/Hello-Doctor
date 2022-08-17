<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<c:set var="pageMaker" value="${dataMap.pageMaker}" />
<c:set var="cri" value="${dataMap.pageMaker.cri}" />
<c:set var="cooList" value="${dataMap.cooList}" />
<c:set var="dId" value="${dId}"/>


<c:set var="issueList" value="${issueList}" />
<c:set var="historyCommentList" value="${historyCommentList}" />
<c:set var="notiList" value="${notiList}" />
<c:set var="approveList" value="${approveList}" />
<c:set var="myApproveList" value="${myApproveList}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


 <link href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Toastr style -->
    <link href="<%=request.getContextPath()%>/resources/css/plugins/toastr/toastr.min.css" rel="stylesheet">

    <link href="<%=request.getContextPath()%>/resources/css/animate.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/css/style.css" rel="stylesheet">














<style>
* {
}



.container {
	max-width: none;
}

.row {
	margin-bottom: -10px;
	margin-top: 5px;
}

.col-md-3, .col-md-4, .col-md-5, .col-md-9, .col-md-8 {
	padding-left: 5px;
	padding-right: 5px;
	height: 400px;
}
.col-md-6{
padding-bottom: 15px;
}

.col-3 {
	height: 63px;
}

.ibox-content {
	padding: 0px;
}

.list-group.clear-list .list-group-item {
	padding: 2px;
}

.btn btn-primary btn-rounded {
	color: white;
	padding: 10px 10px;
}

.p-xs {
	padding: 5px;
	width: 30%;
	text-align: center;
	font-size: 2.5em;
}

.btn-group {
	float: middle;
}

.input-group {
	width: 50%;
}

.contact-box {
	padding: 1px;
	margin-bottom: 1px;
	height:78.5px;
}

element.style {
	display: inline-block;
}
.input-group{
	float: right;
	margin-bottom: 7px;
}

.btn-group_1{
text-align:center;
margin-top: -2px;

}

.btn-group_2{
text-align:center;
margin-top: -15px;
}



p {
    margin-top: 0;
    margin-bottom: 0.2rem;
}

.joinBox {
   width: 162px;
    height: 140px;
   margin-bottom: 3px;
font-size: 1.08em;
    margin-left: 4px;
    margin-top: 6px;
}
.joinBox hr{
    margin-top: -1px;
}

.joinBox p {
    margin-top: -9px;
    margin-bottom: 0.2rem;

}
.col-lg-4 {

    flex: 0 0 33.333333%;
    max-width: 30.88888%;
    padding-left: 4%;

}

</style>
</head>

<body>

	<div class="container">
		<h2>
			My 협진
			</h2>
			<hr style="background-color:black;">


			<div class="row" style="margin-top: -10px;">
				<div class="col-md-6" style="margin-bottom: 7px;">
					<div class="top ibox">
 						<div class="" style="float: left; font-size: 12px;"><h3>참여중인 협진
 						<i style="font-size:1.4em;display: inline;"class="fa fa-arrow-circle-o-right"></i> </h3>
 						</div>



				<%-- <div id="keyword" class="card-tools" style="width:450px;">
					<div class="input-group row">
						<select class="form-control col-md-4" name="searchType" id="searchType">
							<option value="tcw"  ${cri.searchType eq 'tcw' ? 'selected':'' }>전 체</option>
							<option value="t" ${cri.searchType eq 't' ? 'selected':'' }>환자이름</option>
							<option value="w" ${cri.searchType eq 'w' ? 'selected':'' }>주상병</option>
							<option value="c" ${cri.searchType eq 'c' ? 'selected':'' }>주치의</option>
						</select>
						<input  class="form-control" type="text" name="keyword" placeholder="검색어를 입력하세요." value="${param.keyword}"/>
						<span class="input-group-append">
							<button class="btn btn-primary" type="button" onclick="list_go(1);"
							data-card-widget="search">
								<i class="fa fa-fw fa-search"></i>
							</button>
						</span>
					</div>
				</div> --%>



						<div class="input-group" >
							<input placeholder="Search" type="text" class="form-control form-control-sm"> <span class="input-group-append">
							</span>
						</div>
					</div>

					<div class="ibox-content" style="width:103%;">
<div class="row">

<c:forEach items="${cooList}" var="coo">

                                 <div style=  "color:white;"class="col-lg-4 "  onclick="subgoPage('/cooperation/detail.do?coNo=${coo.coNo}')">
                                   <c:if test="${coo.coDoc eq dId}">
                                    <div class="joinBox" style="background-color: #ef5a5a;border-radius: 12%;">
                                     </c:if>

                                     <c:if test="${coo.coDoc ne dId}">
                                    <div class="joinBox" style="background-color: #ffe83e;border-radius: 12%;">
                                     </c:if>

                                        <div class="panel-body"style="text-align: center;">

                                        <p style="text-align: 3px 3px 6px black;">${coo.pName}&nbsp;&nbsp;${coo.pRnum}</p><hr>
                                            <p><strong>주상병:&nbsp;&nbsp;${coo.coDisease}</strong></p><hr>
                                            <p><strong>주치의:&nbsp;&nbsp;${coo.coDoc}</strong></p><hr>
                                            <p><strong>최근진료일</strong><br>
                                            <fmt:formatDate value="${coo.maxDate}" pattern="yyyy-MM-dd"/></p>
                                        </div>

                                    </div>
                                </div>


</c:forEach>








                            </div>













						<%-- <table class="table table-hover">
							<thead>
								<tr>
									<th width="27%;">환자정보</th>
									<th width="30%;">주상병</th>
									<th>주치의</th>
									<th>최근진료일</th>
								</tr>
							</thead>

							<tbody>

							<c:forEach items="${cooList}" var="coo">

							<tr onclick="subgoPage('/cooperation/detail.do')">
									<td>${coo.pName}&nbsp;&nbsp;${coo.pRnum}</td>
									<td>${coo.coDisease}</td>
									<td>${coo.coDoc}</td>
									<td><fmt:formatDate value="${coo.maxDate}" pattern="yyyy-MM-dd"/></td>

								</tr>
</c:forEach>




								<tr onclick="subgoPage('/cooperation/detail.do')">
									<td>오태정 810623-1</td>
									<td>기흉</td>
									<td>노혜지</td>
									<td>2022-07-05</td>
								</tr>
								<tr>
									<td>김남수 491130-1</td>
									<td>기흉</td>
									<td>이의찬</td>
									<td>2022-07-05</td>
								</tr>
								<tr>
									<td>이수미 810623-1</td>
									<td>기흉</td>
									<td>이정규</td>
									<td>2022-07-05</td>
								</tr>
								<tr>
									<td>김수민 810623-1</td>
									<td>기흉</td>
									<td>노혜지</td>
									<td>2022-07-05</td>
								</tr>
								<tr>
									<td>이수미 810623-1</td>
									<td>기흉</td>
									<td>이정규</td>
									<td>2022-07-05</td>
								</tr>
								<tr>
									<td>김수민 810623-1</td>
									<td>기흉</td>
									<td>노혜지</td>
									<td>2022-07-05</td>
								</tr>
								<tr>
									<td>김수민 810623-1</td>
									<td>기흉</td>
									<td>노혜지</td>
									<td>2022-07-05</td>
								</tr>

							</tbody>

						</table> --%>
						<!-- <div class="btn-group_1">
							<button type="button" class="btn btn-white">
								<i class="fa fa-chevron-left"></i>
							</button>
							<button class="btn btn-white">1</button>
							<button class="btn btn-white  active">2</button>
							<button class="btn btn-white">3</button>
							<button class="btn btn-white">4</button>
							<button type="button" class="btn btn-white">
								<i class="fa fa-chevron-right"></i>
							</button>
						</div>
 -->













<br>
						<div class="btn-group_1">
							<%@ include file="/WEB-INF/views/common/pagination.jsp" %>

						</div>

<br>

					</div>
				</div>

				<div class="col-md-6">
					<!-- <div class="bg-primary p-xs b-r-xl" style="font-size: 12px; margin-bottom: 10px">특이사항</div> -->
					 <div class="" style="font-size: 12px; margin-bottom: 10px"><h3>특이사항</h3></div>
					<a class="view_all" href="#" style="float: right;
    font-size: 12px;
    margin-top: -14px;"> 전체보기 </a><span style="clear: both;"></span>

					<div class="ibox-content" style="width: 110%;">

<table class="table">
							<thead style="">
							<c:forEach items="${issueList}" var="issue">


							<tr style="border-bottom: hidden;" onclick="window.open('significantDetail.do','','width=800, height=440, left=500, top=100');return false;" type="button">
									<th
										style="display: inline-block; padding-left: 2px; border-bottom: hidden; width: 378px;"><p
											style="display: inline; color: #17ce17; font-size: 18px; margin-right: 1%;">1</p>
										${issue.pName}${issue.pRnum}/주상병:${issue.coDisease}/<fmt:formatDate value="${issue.mDate}" pattern="yyyy-MM-dd"/></th>
									<td
										style="display: inline-block; border-top: hidden; width: 500px; padding-top: 1px;">
										<i class="fa fa-minus" style="margin-right: 1%;"></i>${issue.issContent}
									</td>
								</tr>


							</c:forEach>




							</thead>
						</table>




					</div>
				</div>
			</div>


			<div class="row" style="margin-top: -25px;">

							<div class="col-md-4" style="height: 400px;">
					<div style="padding-bottom: 16px;">
						<div class="" style="font-size: 12px; margin-bottom: -8px;"><h3>협진요청</h3>

						</div>

<a class="view_all" href="#" style="float: right; font-size: 12px;"> 전체보기 </a><span style="clear: both;"></span>
					</div>
					<div class="ibox-content table-responsive">
						<table class="table table-hover no-margins">
							<thead>
								<tr>
									<th>요청날짜</th>
									<th>요청한 사람</th>
									<th>상태</th>
								</tr>
							</thead>
							<tbody>

<c:forEach items="${notiList}" var="noti">

<tr onclick="window.open('cooperationRequest.do','','width=800, height=700, left=500, top=100');return false;">
									<td><i class="fa fa-clock-o"></i><fmt:formatDate value="${noti.notiDate}" pattern="yyyy-MM-dd"/></td>
									<td>${noti.reqdId}</td>

									<c:if test="${noti.mysetting eq'수락'}">
                                     <td><span class="label label-danger">수락</span></td>
									</c:if>

									<c:if test="${noti.mysetting eq'거절'}">
                                     <td><span class="label label-warning">거절</span></td>
									</c:if>

								</tr>


</c:forEach>


								<tr>
									<td><i class="fa fa-clock-o"></i>2022-06-29 15:20</td>
									<td>김기웅</td>
									<td><span class="label label-warning">거절</span></td>

								</tr>
								<tr>
									<td><i class="fa fa-clock-o"></i>2022-06-29 15:20</td>
									<td>김민지</td>
									<td><span class="label label-danger">수락</span></td>


								</tr>
								<tr>
									<td><i class="fa fa-clock-o"></i>2022-06-29 15:20</td>
									<td>서난희</td>
									<td><span class="label label-danger">수락</span></td>

								</tr>
								<tr>
									<td><i class="fa fa-clock-o"></i>2022-06-29 15:20</td>
									<td>이종민</td>
									<td><span class="label label-default">보류</span></td>

								</tr>
								<tr>
									<td><i class="fa fa-clock-o"></i>2022-06-29 15:20</td>
									<td>노혜지</td>
									<td><span class="label label-danger">수락</span></td>

								</tr>
								<tr>
									<td><i class="fa fa-clock-o"></i>2022-06-29 15:20</td>
									<td>오지현</td>
									<td><span class="label label-danger">수락</span></td>
								</tr>
								<tr>
									<td><i class="fa fa-clock-o"></i>2022-06-29 15:20</td>
									<td>이정수</td>
									<td><span class="label label-warning">거절</span></td>

								</tr>



							</tbody>
						</table>
					</div>
				</div>













				<div class="col-md-4" style="height: 400px;">
					<div class="" style="margin-bottom: 15px; font-size: 12px;"><h3>승인요청</h3></div>
                <div class="">
                    <div class="tabs-container">
                        <ul class="nav nav-tabs" role="tablist">
                            <li><a class="nav-link" data-toggle="tab" href="#tab-1">주치의포지션</a></li>
                            <li><a class="nav-link active" data-toggle="tab" href="#tab-2">의료진포지션</a></li>
                        </ul>
                        <div class="tab-content">
                            <div role="tabpanel" id="tab-1" class="tab-pane">
                                <div class="panel-body">


<a class="view_all" href="#" style="float: right;
    font-size: 12px;
    margin-top: -14px;"> 전체보기 </a><span style="clear: both;"></span>
	<table class="table table-hover">
							<thead>
								<tr>
									<th width="37%;">환자정보</th>
									<th width="25%;">주상병</th>
									<th width= "27%;">요청의료진</th>
									<th>분류</th>
								</tr>
							</thead>

							<tbody>

							<c:forEach var="approve" items="${approveList}">


							<tr onclick="window.open('approveRegistDetail.do','','width=730, height=666, left=500, top=100');return false;">
									<td>${approve.pName}&nbsp;${approve.pRnum} </td>
									<td>${approve.coDisease}</td>
									<td>${approve.dId}</td>
									<td>${approve.tnStatusResult}</td>
								</tr>

							</c:forEach>


								<tr onclick="window.open('approveModifyDetail.do','','width=730, height=590, left=, top=100');return false;">
									<td>오태정 810623-1</td>
									<td>기흉</td>
									<td>노혜지</td>
									<td>수정</td>
								</tr>
								<tr  onclick="window.open('approveDeleteDetail.do','','width=730, height=590, left=500, top=100');return false;">
									<td>이수미 810623-1</td>
									<td>기흉</td>
									<td>이정규</td>
									<td>삭제</td>
								</tr>
								<tr>
									<td>김민수 510421-1</td>
									<td>기흉</td>
									<td>강현수</td>
									<td>등록</td>
								</tr>
								<tr>
									<td>이수미 510421-1</td>
									<td>기흉</td>
									<td>이정규</td>
									<td>수정</td>
								</tr>
								<tr>
									<td>김민수 510421-1</td>
									<td>기흉</td>
									<td>강현수</td>
									<td>삭제</td>
								</tr>

							</tbody>
						</table>
				<!-- 		<div class="btn-group_2">
							<button type="button" class="btn btn-white">
								<i class="fa fa-chevron-left"></i>
							</button>
							<button class="btn btn-white">1</button>
							<button class="btn btn-white  active">2</button>
							<button class="btn btn-white">3</button>
							<button class="btn btn-white">4</button>
							<button type="button" class="btn btn-white">
								<i class="fa fa-chevron-right"></i>
							</button>
						</div>
 -->




                                </div>
                            </div>
                            <div role="tabpanel" id="tab-2" class="tab-pane active">
                                <div class="panel-body">

<a class="view_all" href="#" style="float: right;
    font-size: 12px;
    margin-top: -14px;"> 전체보기 </a><span style="clear: both;"></span>
	<table class="table table-hover">
							<thead>
								<tr>
									<th width="37%;">환자정보</th>
									<th width="25%;">주상병</th>
									<th width= "27%;">주치의</th>
									<th>상태</th>
								</tr>
							</thead>

							<tbody>

							<c:forEach var="myapprove" items="${myApproveList}">


							<tr onclick="window.open('approveRegistDetail.do','','width=730, height=666, left=500, top=100');return false;">
									<td>${myapprove.pName}&nbsp;${myapprove.pRnum} </td>
									<td>${myapprove.coDisease}</td>
									<td>${myapprove.coDoc}</td>
									<td>${myapprove.taStatusResult}</td>
								</tr>

							</c:forEach>


								<tr onclick="window.open('approveModifyDetail.do','','width=730, height=590, left=, top=100');return false;">
									<td>오태정 810623-1</td>
									<td>기흉</td>
									<td>노혜지</td>
									<td>수정</td>
								</tr>
								<tr  onclick="window.open('approveDeleteDetail.do','','width=730, height=590, left=500, top=100');return false;">
									<td>이수미 810623-1</td>
									<td>기흉</td>
									<td>이정규</td>
									<td>삭제</td>
								</tr>
								<tr>
									<td>김민수 510421-1</td>
									<td>기흉</td>
									<td>강현수</td>
									<td>등록</td>
								</tr>
								<tr>
									<td>이수미 510421-1</td>
									<td>기흉</td>
									<td>이정규</td>
									<td>수정</td>
								</tr>
								<tr>
									<td>김민수 510421-1</td>
									<td>기흉</td>
									<td>강현수</td>
									<td>삭제</td>
								</tr>

							</tbody>
						</table>
				<!-- 		<div class="btn-group_2">
							<button type="button" class="btn btn-white">
								<i class="fa fa-chevron-left"></i>
							</button>
							<button class="btn btn-white">1</button>
							<button class="btn btn-white  active">2</button>
							<button class="btn btn-white">3</button>
							<button class="btn btn-white">4</button>
							<button type="button" class="btn btn-white">
								<i class="fa fa-chevron-right"></i>
							</button>
						</div> -->






                                </div>
                            </div>
                        </div>


                    </div>
                </div>
				</div>






				<div class="col-md-4" style="height: 400px;">
					<div class="" style="margin-bottom: 10px; font-size: 12px;"><h3>협진코멘트</h3></div>
	<a class="view_all" href="#" style="float: right;
    font-size: 12px;
    margin-top: -14px;"> 전체보기 </a><span style="clear: both;"></span>






<c:forEach items="${historyCommentList}" var="comment">
<div class="contact-box">
						<a class="row">
							<div class="col-3">
								<div class="text-center">
									<img alt="프로필" src="${comment.dPic}" style="width: 40px; height: 40px;">
									<div class="m-t-xs font-bold">${comment.dId}</div>
								</div>
							</div>
							<div class="col-9">
								<h5>
									호흡기내과<i class="fa fa-clock-o" style="float: right; padding-right: 10px;">
									<fmt:formatDate value="${comment.comDate}" pattern="yyyy-MM-dd"/>
									</i>
								</h5>
								<br> <strong>${comment.comContent}</strong><br>

							</div>
						</a>
					</div>
</c:forEach>

					<div class="contact-box">
						<a class="row">
							<div class="col-3">
								<div class="text-center">
									<img alt="프로필" src="<%=request.getContextPath()%>/resources/img/user.png" style="width: 40px; height: 40px;">
									<div class="m-t-xs font-bold"></div>
								</div>
							</div>
							<div class="col-9">
								<h5>
									호흡기내과<i class="fa fa-clock-o" style="float: right; padding-right: 10px;"> 2022-06-29 09:00pm</i>
								</h5>
								<br> <strong>해당 환자 기흉 수술 전 당 수치 검사필요</strong><br>

							</div>
						</a>
					</div>

					<div class="contact-box">
						<a class="row">
							<div class="col-3">
								<div class="text-center">
									<img alt="프로필" src="<%=request.getContextPath()%>/resources/img/user.png" style="width: 40px; height: 40px;">
									<div class="m-t-xs font-bold">강현수</div>
								</div>
							</div>
							<div class="col-9">
								<h5>
									호흡기내과<i class="fa fa-clock-o" style="float: right; padding-right: 10px;"> 2022-06-29 09:00pm</i>
								</h5>
								<br> <strong>해당 환자 기흉 수술 전 당 수치 검사필요</strong><br>

							</div>
						</a>
					</div>



				</div>

			</div>
	</div>



<!-- Mainly scripts -->
<script src="<%=request.getContextPath()%>/resources/js/jquery-3.1.1.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/popper.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="<%=request.getContextPath()%>/resources/js/inspinia.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/plugins/pace/pace.min.js"></script>











	<script>





/* function (){
	window.open("http://localhost/ddit/cooperation/significantDetail.do", "","width=600, height=400, left=500, top=300")
} */

//pagination func
function list_go(page,url){
	if(!url) url="/cooperation/coopermain.do";

	var jobForm=$('#jobForm');
	jobForm.find("[name='page']").val(page);
//	jobForm.find("[name='perPageNum']").val($('select[name="perPageNum"]').val());
	var searchType = jobForm.find("[name='searchType']").val($('select[name="searchType"]').val());
	var keyword = jobForm.find("[name='keyword']").val($('input[name="keyword"]').val());
	subgoPage(url+"?page="+page+"&perPageNum=9&searchType="+searchType.val()+"&keyword="+keyword.val());

	/*
jobForm.attr({
	action:url,
	method:'get'
	}).submit();*/

}

</script>


</body>
</html>