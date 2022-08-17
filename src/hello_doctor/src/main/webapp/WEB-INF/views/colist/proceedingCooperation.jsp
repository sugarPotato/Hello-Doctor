<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="proceedingCooperation" value="${dataMap.proceedingCooperation}" />


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<%=request.getContextPath()%>/resources/css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/css/animate.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/css/style.css" rel="stylesheet">
<style>
.col-8 {
	max-width: 100%;
}

.img-responsive {
	width: 20px;
	height: 20px;
	object-fit: cover;
}

#pagediv {
	position: absolute;
	margin: -150px 0px 0px -200px;
	top: 108%;
	left: 57%;
	padding: 3px;
}

a:link {
	color: black;
	text-decoration: none;
}

a:visited {
	color: black;
	text-decoration: none;
}

.contact-box {
	width: 340px;
}

p {
	margin-top: 0;
	margin-bottom: 0.5rem;
}
</style>

</head>

<body>
	<h2 style="color:black;">진행중인 협진</h2>
	<hr style="background-color:black;">
	<div class="col-sm-12" style="margin-bottom: -30px;">
	<input style="display: inline; white-space: nowrap; zoom: 1.3; vertical-align: text-top;" type="checkbox" id="chk_select"> <label for="chk_select" style="font-size: 1.3em;">내 전공</label>
	<a onclick="goPage_1()" class="atag" style="font-size: 1.1em; font-weight:bold; margin-left: 679px;">진행중</a>&nbsp;&nbsp;|
	<a onclick="goPage_2()" class="atag" style="font-size: 1.1em;">완료</a>&nbsp;&nbsp;

	<select class="form-control" name="searchType" style="height: 31px; width: 95px; text-align: center; font-size: 1em; display: inline-block;" name="searhlist">
		<option value="cwt" ${cri.searchType eq 'cwt' ? 'selected':'' }>검색</option>
		<option value="w" ${cri.searchType eq 'w' ? 'selected':'' }>진단명</option>
		<option value="t" ${cri.searchType eq 't' ? 'selected':'' }>주치의</option>
		<option value="c" ${cri.searchType eq 'c' ? 'selected':'' }>환자명</option>
	</select>

	<input class="form-control" name="keyword" style="display: inline-block; height: 31px; width: 170px;" type="text" value="${param.keyword }" /> &nbsp;&nbsp;
	<i style="font-size: 1.5em;" class="fa fa-search" onclick="proceedinglist_go(1)"></i>
</div>

	<br>
	<br>

	<div id="all-wrapper">
		<div id="inner-wrapper">

			<div class="row">
				<c:forEach items="${proceedingCooperation}" var="proceeding">
					<div class="col-lg-4" style="padding-left: 22px;">
						<div class="contact-box demo3" style="box-shadow: 1px 1px 1px 1px #000;" onclick="cooperationDetail('${proceeding.proceeding.coRelease}')">
							<div class="col-8">
								<h3>
									<strong>협진시작일&nbsp;&nbsp;${proceeding.proceeding.coStartDate} </strong>&emsp;&emsp;&emsp;&emsp;
									<c:if test="${proceeding.proceeding.coRelease eq '비공개'}">
										<i style="font-size: 1.5em; color: gold;" class="fa fa-lock"></i>
									</c:if>
									<c:if test="${proceeding.proceeding.coRelease eq '공개'}">
										<i style="font-size: 1.5em; color: gold;" class="fa fa-unlock"></i>
									</c:if>
								</h3>

								<p>${proceeding.proceeding.coDisease} | ${proceeding.proceeding.pName}</p>
								<p>주치의 &emsp; ${proceeding.proceeding.dName} ${proceeding.proceeding.maName}
								<p>의료진 &emsp;</p>
								<div class="doctors">
									<c:forEach items="${proceeding.doctors}" var="doctors">
									 ${doctors.dName} | ${doctors.maName}&emsp;
								</c:forEach>

								</div>
							</div>

						</div>
					</div>
				</c:forEach>


			</div>


			<div>
				<%@ include file="/WEB-INF/views/common/paginationProceeding.jsp" %>
			</div>
		</div>
	</div>
<%-- 	<script src="<%=request.getContextPath()%>/resources/js/open.js"></script> --%>
		<script src="<%=request.getContextPath()%>/resources/js/plugins/sweetalert/sweetalert.min.js"></script>
	<script>

function goPage_1() {
	subgoPage("/colist/proceedingCooperation.do");
}
function goPage_2() {
	subgoPage("/colist/completeCooperation.do");
}

function cooperationDetail(coRelease) {
	if (coRelease == '공개') {
		subgoPage('/cooperation/detail.do');
	} else {
			swal({
				title : "접근불가",
				text : "비공개된 협진입니다.",
				type : "warning",
				confirmButtonColor : "#DD6B55",
				closeOnConfirm : false
			});
	}
}


$(document).ready(function(){
    $("#chk_select").change(function(){
        if($("#chk_select").is(":checked")){
            //alert("체크박스 체크했음!");
        	subgoPage("/colist/myCooperationProceeding.do");
        }else{
            //alert("체크박스 체크 해제!");
        }
    });
});

</script>

</body>
</html>