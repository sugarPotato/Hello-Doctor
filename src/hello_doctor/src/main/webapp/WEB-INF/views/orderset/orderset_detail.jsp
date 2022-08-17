<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ordersetVo" value="${dataMap.ordersetVo }" />
<c:set var="drugList" value="${dataMap.drugList }" />
<c:set var="ordersetList" value="${dataMap.ordersetList }" />
<c:set var="ordersetReplyList" value="${dataMap.ordersetReplyList }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
if('${from}'){
		url =  "?page=/orderset/orderset_detail.do?oNo=${ordersetVo.oNo}"
	   var renewURL = window.parent.location.href;

	      renewURL = renewURL.substring(0, renewURL.indexOf(".do")+3);

	      // 현재 주소 중 .do 뒤 부분이 있다면 날려버린다.

	      url = url.replace(/&/g,"amp;");

	       renewURL += url;
	      // 페이지를 리로드하지 않고 페이지 주소만 변경할 때 사용

	       window.parent.history.pushState(url, null, renewURL);
}


</script>
<link
	href="<%=request.getContextPath()%>/resources/css/plugins/sweetalert/sweetalert.css"
	rel="stylesheet">
<style>
.col-md-12 {
	padding: 10px;
	height: 200px;
}

.row {
	margin-bottom: 10px;
	margin-top: 10px;
}

tr {
	text-align: center;
}

.col-8 {
	max-width: 100%;
}

.contact-box {
	padding: 10px;
	color: black;
	opacity: 40%;
	height: 300px;
	border-radius: 10px;
	padding-bottom: 30px;
	width: 23.5%;
	margin-left: 10.6px;
	margin-right: 6px;
	opacity: 80%;
}

.list-group {
	font-size: 1.1em;
}

button.dim {
	float: right;
	margin-bottom: 5px !important;
}

.displayinlineblock {
	display: inline-block;
}

.datestyle {
	width: 90px;
	padding: 3px;
	text-align: center;
}

.dongle p {
	margin-bottom: 2px;
}

.textaline {
	text-align: center;
}
</style>
<script type="text/javascript">


</script>
</head>
<body>

	<div id="top" class="col-lg-13" style="margin-top: 10px;">
		<div class="ibox">
			<div class="ibox-content"
				style="min-height: 377px; height: auto; border-radius: 0px;">
				<div style="margin-left: 20px; margin-top: 13px;">
					<h3 class="displayinlineblock">${ordersetVo.oTitle}</h3>
					<span> / ${ordersetVo.oCla}</span>

					<div
						style="display: inline-block; float: right; margin-right: 26px; vertical-align: 2px;">
						<button type="button" class="btn btn-outline btn-success"
							onclick="OpenWindow('regist_customize.do','My오더세트추가하기',770,457);">My
							오더세트에 추가하기</button>
						<button type="button" class="btn btn-outline btn-success"
							onclick="OpenWindow('share.do?oNo=${param.oNo}','공유하기',1100,700);">공유하기</button>
						<c:if test="${doctorLogin.dId eq ordersetVo.docId}">
							<div class="filebox"
								style="margin-left: 13px; display: inline; width: 2%;">
								<i class="fa fa-cog" data-toggle="dropdown" type="button"
									aria-expanded="false"
									style="font-size: 23px; vertical-align: -5px;"></i>
								<ul class="dropdown-menu" x-placement="bottom-start"
									style="position: absolute; top: 131px; left: 929px; will-change: top, left; min-width: 6rem;">
									<li><a onclick="subgoPage('/orderset/orderset_modifyForm.do?oNo=${ordersetVo.oNo}')">수정</a></li>
									<li><a onclick="subgoPage('/orderset/orderset_remove?oNo=${ordersetVo.oNo}')" >삭제</a></li>
								</ul>
							</div>
						</c:if>
						<div class="card-tools" style="display: inline-block;">
							<button type="button" style="border: none; background: none;"
								onclick="subgoPage('/orderset/orderset_list.do');">
								<i class="fa fa-th-large" aria-hidden="true"
									style="color: #3E5476; font-size: 23px; vertical-align: -6px;"></i>
							</button>
						</div>
					</div>
				</div>


				<div class="displayinlineblock"
					style="margin-top: 28px; margin-left: 30px; width: 100%;">
					<div
						class="bg-primary p-xs b-r-xl datediv datestyle displayinlineblock">${ordersetVo.oRegdate}</div>
					<div class=" displayinlineblock eyelike"
						style="margin-left: 10px; font-size: 17px; vertical-align: -3px">
						<i class="fa fa-eye">${ordersetVo.oViewcnt}</i> <a
							onclick="recommand()"> <i id="recomandBtn"
							class="fa fa-thumbs-o-up"
							style="margin-left: 10px; cursor: pointer;"><span
								id="recoSpan">${ordersetVo.recoCnt}</span></i>
						</a>
					</div>

					<form method="get" style="width: 100%;">

						<div class="form-group"
							style="margin-top: 26px; display: inline-block; width: 32%;">
							<div class="col-md-6" style="display: contents;">
								<label for="title">작성자</label>
							</div>
							<div class="col-md-6" style="display: contents;">
								<input class=" form-control" type="text" id="title" name="title"
									value="${ordersetVo.dName} / ${ordersetVo.oCla}"
									style="display: inline; width: 71%; margin-left: 32px;"
									disabled="disabled">
							</div>
						</div>
						<div class="form-group" style="display: inline-block; width: 38%;">
							<div class="col-md-6" style="display: contents;">
								<label for="title">주상병</label>
							</div>
							<div class="col-md-6" style="display: contents;">
								<input class=" form-control" type="text" id="title" name="title"
									value="${ordersetVo.oDname}"
									style="display: inline; width: 72%; margin-left: 13px;"
									disabled="disabled">
							</div>
						</div>
						<div class="form-group"
							style="display: inline-block; margin-left: -30px; width: 22%;">
							<div class="col-md-6" style="display: contents;">
								<label for="title">급여대상</label>
							</div>
							<div class="col-md-6" style="display: contents;">
								<input class=" form-control" type="text" id="title" name="title"
									value="${ordersetVo.oTarget}"
									style="display: inline; width: 59%; margin-left: 12px;"
									disabled="disabled">
							</div>
						</div>



						<div class="form-group row">
							<label class="col-lg-1 col-form-label" style="width: 9%;">&nbsp;&nbsp;&nbsp;&nbsp;노티</label>
							<textarea class="textarea" name="content" id="content" rows="20"
								style="padding: 15px; width: 79%; height: 130px; border-radius: 20px;"
								 disabled="disabled">${ordersetVo.oNoti}</textarea>
						</div>

						<div class="hr-line-dashed"></div>

						<div class="form-group row">
							<h4>처방내역</h4>
							<div style="margin-left: 100px;" class="table-responsive">
								<table class="table " style="width: 84%;">
									<thead>
										<tr>
											<th></th>
											<th style="width: 280px;">약명</th>
											<th>1회급여량</th>
											<th>하루 투약 횟수</th>
											<th>투약일</th>

										</tr>
									</thead>
									<tbody>
										<c:forEach items="${drugList}" var="drug">
											<tr>
												<td></td>
												<td>${drug.oDrug}</td>
												<td>${drug.quantity}</td>
												<td>${drug.dgAday}</td>
												<td>${drug.dgDays}</td>
											</tr>

										</c:forEach>


									</tbody>
								</table>
							</div>
						</div>


						<div class="hr-line-dashed"></div>


						<div class="form-group row">
							<label class="col-lg-1 col-form-label" style="width: 9%;">&nbsp;&nbsp;주의사항</label>
							<textarea class="textarea" name="content" id="content" rows="20"
								style="padding: 15px; width: 79%; height: 130px; border-radius: 20px;"
								placeholder="1000자 내외로 작성하세요." disabled="disabled">${ordersetVo.oCaution}</textarea>
						</div>
						<div class="form-group row">
							<label class="col-lg-1 col-form-label" style="width: 9%;">&nbsp;&nbsp;&nbsp;&nbsp;결과</label>
							<textarea class="textarea" name="content" id="content" rows="20"
								style="padding: 15px; width: 79%; height: 130px; border-radius: 20px;"
								placeholder="1000자 내외로 작성하세요." disabled="disabled">${ordersetVo.oResult}</textarea>
						</div>

					</form>

				</div>
			</div>
		</div>
	</div>


	<div class="col-lg-13" style="margin-top: -8px;">
		<div class="ibox ">
			<div class="ibox-title"
				style="background-color: lightgray; padding: 0px;">
				<h3 style="padding: 14px;">연관오더세트</h3>
			</div>
			<div class="ibox-content" style="height: auto; border-radius: 0px;">

				<div class="row">

					<c:forEach items="${ordersetList}" var="orderset">

						<div class="contact-box" style="border: 2px solid #1872AB;">
							<div class="col-8">
								<a
									onclick=" subgoPage('/orderset/orderset_detail.do?from=list&oNo=${orderset.orderset.oNo}#top'); ">
									<h4>
										<strong>${orderset.orderset.oTitle}(${orderset.orderset.oTarget})</strong>&emsp;<i
											class="fa fa-thumbs-o-up"> ${orderset.orderset.recoCnt}</i>
									</h4>


									<div
										class=" bg-primary p-xs b-r-xl datediv datestyle displayinlineblock"
										style="width: 60px; margin-top: 5px;">처방내역</div>
									<div class="textaline dongle"
										style="margin-top: 10px; height: 116px; font-size: 14px;">
										<c:forEach items="${orderset.drugList}" var="drug">
											<p>${drug.oDrug}</p>
										</c:forEach>

									</div>
								</a>
								<hr style="background-color: black;">
								<div>
									<h4>${orderset.orderset.oCla} / ${orderset.orderset.dName}</h4>
									<h4>조회수 ${orderset.orderset.oViewcnt}회 &nbsp;•&nbsp;
										${orderset.orderset.oRegdate}</h4>
									<div></div>
								</div>
							</div>
						</div>
					</c:forEach>

					<c:if test="${empty ordersetList}">
						<div style="margin: 0 auto;">
							<h4>연관 오더세트가 없습니다.</h4>
						</div>
					</c:if>
				</div>
			</div>

		</div>

	</div>
	<div class="col-lg-13" style="margin-top: -8px;">

		<div class="ibox ">
			<div class="ibox-title"
				style="background-color: lightgray; padding: 0px;">
				<h3 style="padding: 14px;">&nbsp;피드백</h3>
			</div>

			<c:if test="${doctorLogin.dId ne ordersetVo.docId}">
				<div class="ibox-content">
				  <form  method="post" action="ordersetFeedBack_regist">
					<strong><img alt="프로필"
						src="<%=request.getContextPath()%>/resources/img/user.png"
						style="width: 40px; height: 40px;">&emsp;${doctorLogin.dName}/${ordersetVo.myCla}</strong>
					<button class="btn btn-outline btn-success dim" type="submit">등록</button>

						<textarea class="form-control" name="fbResult"
							placeholder="피드백을 작성하세요."
							style="height: 115px; margin-top: 10px;" ></textarea>

                    <input type="hidden" name="docId" value="${doctorLogin.dId}">
                    <input type="hidden" name="oNo" value="${ordersetVo.oNo}">
				 </form>
				</div>
			</c:if>

			<c:if test="${empty ordersetReplyList}">
				<div class="ibox-content">
					<div style="margin: 0 auto; text-align: center;">
						<h4>등록된 피드백이 없습니다.</h4>
					</div>
				</div>
			</c:if>



<!-- ------------------------------------------------------------------------------------------------------------------ -->
			<div class="ibox-content no-padding">
				<ul class="list-group">
					<c:forEach items="${ordersetReplyList}" var="reply">

						<li class="list-group-item"><strong> <img alt="프로필"
								src="<%=request.getContextPath()%>/resources/img/user.png"
								style="width: 40px; vertical-align: -13px; height: 40px;">
								&emsp;${reply.dName}/${reply.maName} &emsp;<span id="fDate">${reply.fbRegdate}</span>
								<button id="updateFeedbackGo" class="btn btn-outline btn-success dim" type="button" onclick="updateFeedbackGo(this)" style="display: none;">수정</button>
								<c:if test="${doctorLogin.dId eq reply.docId}">
									<div class="filebox" id="feedbackDivBtn"
										style="margin-left: 13px; display: inline; width: 2%;">
										<i class="fa fa-cog" data-toggle="dropdown" type="button"
											aria-expanded="false"
											style="font-size: 21px; vertical-align: -3px;"></i>
										<ul class="dropdown-menu" x-placement="bottom-start"
											style="position: absolute; top: 131px; left: 929px; will-change: top, left; min-width: 6rem;">
											<li><a onclick="updateFeedback(this)">수정</a></li>
											<li><a onclick="deleteFeedback(this)">삭제</a></li>
										</ul>
									</div>
								</c:if>
						</strong>
							<textarea class="form-control"  id="fbResultTa"
								placeholder="피드백을 작성하세요."
								style="height: 115px; margin-top: 10px; display: none;" >${reply.fbResult}</textarea>
							<div id="fbResultDiv"
								style="padding: 10px; width: 98%; margin: 0 auto; margin-top: 7px;">
								${reply.fbResult}</div>
							<input id="fbNo" type="hidden" value="${reply.fbNo}">
						</li>
					</c:forEach>



				</ul>
			</div>
<!-- ------------------------------------------------------------------------------------------------------------------ -->
		</div>
	</div>


	<input id="dId" type="hidden" value="${doctorLogin.dId}">
	<input id="rStatus" type="hidden" value="${ordersetVo.rStatus}">
	<input id="oNo" type="hidden" value="${ordersetVo.oNo}">
	<input id="recoCnt" type="hidden" value="${ordersetVo.recoCnt}">

	<div style="height: 100px;"></div>

	<script src="<%=request.getContextPath()%>/resources/js/open.js"></script>
<script
		src="<%=request.getContextPath()%>/resources/js/plugins/sweetalert/sweetalert.min.js"></script>
	<c:if test="${from eq 'regist' }">
	<script>
		alert("피드백이 등록되었습니다.");
	</script>
</c:if>
	<script>

$(document).ready(function(){
	var rStatus = $('#rStatus').val();
	if(rStatus == "1"){
		$('#recomandBtn').attr("class","fa fa-thumbs-up");
	}else{
		$('#recomandBtn').attr("class","fa fa-thumbs-o-up");
	}

});


function recommand(){
	var rStatus = $('#rStatus').val();
	var dId = $('#dId').val();
	var oNo = $('#oNo').val();
	var recoCnt = $('#recoSpan').html();
	var changeRs;

	if(rStatus == "1"){
		$('#recomandBtn').attr("class","fa fa-thumbs-o-up");
		$('#rStatus').val("0");
		changeRs = "0"

	}else{
		$('#recomandBtn').attr("class","fa fa-thumbs-up");
		$('#rStatus').val("1");
		changeRs = "1"
	}


	var data = {
			"changeRs":changeRs,
			"dId":dId,
			"oNo":oNo,
			"recoCnt":recoCnt
	}
	$.ajax({
		url:"<%=request.getContextPath()%>/orderset/update_recom",
				type : 'post',
				data : JSON.stringify(data),
				contentType : 'application/json',
				success : function(data) {
					$('#rStatus').val(data.rStatus);
					$('#recoSpan').html(data.recoCnt);
				},
				error : function(error) {
					alert('실패했습니다.');
					AjaxErrorSecurityRedirectHandler(error.status);
				}
			});

		}

	var change = null;

function updateFeedback(aa){
	var fli  = $(aa).parents("li");
	var fbtn = fli.find('#feedbackDivBtn');
	var fta  = fli.find("textarea");
	var fdiv = fli.find('#fbResultDiv');
	var fgo = fli.find('#updateFeedbackGo');


	if(change != aa ){
		var oldFli  = $(change).parents("li")
		oldFli.find('#feedbackDivBtn').css("display","inline-block");
		oldFli.find("textarea").hide();
		oldFli.find('#fbResultDiv').css("display","inline-block");
		oldFli.find("#updateFeedbackGo").hide();
	}
		fgo.css("display","inline-block")
		fbtn.css("display","none");
	    fta.show();
	    fdiv.css("display","none");
	    change = aa;

}




function updateFeedbackGo(aa){
	var fli = $(aa).parents("li");
	var fbResult = fli.find("textarea").val();
	var fbNo = fli.find("#fbNo").val();
	var fDate = fli.find("#fDate").html();

	var fbtn = fli.find('#feedbackDivBtn');
	var fta  = fli.find("textarea");
	var fdiv = fli.find('#fbResultDiv');
	var fgo = fli.find('#updateFeedbackGo');


	console.log(fbResult, fbNo, fDate );

	var data = {
			"fbResult":fbResult,
			"fbNo":fbNo

	}
	$.ajax({
		url:"<%=request.getContextPath()%>/orderset/update_feedback",
		type:'post',
		data:JSON.stringify(data),
		contentType:'application/json',
		success:function(data){
			fdiv.html(data.fbResult);
			fDate = data.fbRegdate

			fbtn.css("display","inline-block");
			fta.hide();
			fdiv.css("display","inline-block");
			fgo.hide();
		},
		error:function(error){
			alert('실패했습니다.');
			AjaxErrorSecurityRedirectHandler(error.status);
		}
	});

}

function deleteFeedback(aa){

	var fli = $(aa).parents("li");
	var fbNo = fli.find("#fbNo").val();

	var data = {
			"fbNo":fbNo
	}
	$.ajax({
		url:"<%=request.getContextPath()%>/orderset/delete_feedback",
		type:'post',
		data:JSON.stringify(data),
		contentType:'application/json',
		success:function(data){
			alert("삭제되었습니다.");
			fli.hide();

		},
		error:function(error){
			alert('실패했습니다.');
			AjaxErrorSecurityRedirectHandler(error.status);
		}
	});
}
function shareSuccess(){
    swal({
           title: "오더세트 공유",
           text: "성공적으로 오더세트가 공유되었습니다.",
           type: "success",
           showCancelButton: true,
           confirmButtonColor: "#DD6B55",
           confirmButtonText: "OK",
           closeOnConfirm: false
       })



}



	</script>
<c:if test="${from eq 'modify' }">
	<script>
		alert("오더세트가 수정되었습니다.");
	</script>
</c:if>
</body>
</html>



