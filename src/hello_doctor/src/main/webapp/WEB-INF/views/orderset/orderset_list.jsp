<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="ordersetList" value="${dataMap.ordersetList }" />


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	border-radius: 20px;
	padding-bottom: 28px;
}

p {
	margin-top: 0;
	margin-bottom: 0.3rem;
}

.title_2 {
	display: inline;
	text-align: center;
}

.row>.col-lg-4>.contact-box {
	width: 340px;
	box-shadow: 1px 1px 1px #000;
}

.backblue {
	background: aliceblue;
}

.row {
	margin-left: -25px;
}
</style>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="css/plugins/toastr/toastr.min.css" rel="stylesheet">

<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

</head>

<body>
	<div class="row wrapper border-bottom white-bg page-heading">
		<div class="col-lg-9">
			<h3 style="margin-top: 20px;">공유된 오더세트</h3>
		</div>
	</div>

	<div class="wrapper wrapper-content animated fadeInRight" style="    padding: 10px 10px 40px;">
	<div class="title_2" style="margin-top: 11px;">
					<a style="font-size: 1.1em;display: inline-block;cursor: pointer;margin-left: 10px;width: 10%;" onclick="subgoPage('/orderset/orderset_registform.do')"> <i class="fa fa-plus-square-o" style="vertical-align: -3px; font-size: 23px;">&nbsp;</i><span style="font-size: 15px;">등록하기</span></a>
					<p style="display: inline-block;text-align: right;width: calc(53% - 4px);">
						<input style="display: inline; white-space: nowrap; zoom: 1.3; vertical-align: -2px;" type="checkbox" id="mineCheck" value="Y" ${cri.mineCheck eq 'Y' ? 'checked' : ''} > <label for="a" style="font-size: 1.1em;">내가 등록한 오더세트</label>
					</p>
					&nbsp;&nbsp;

					<div class="search" style="display: inline-block;width: calc(33% - 0px);text-align: right;">
						<select name="searchType" class="form-control" style="height: 31px; width: 90px; text-align: left; font-size: 1em; display: inline-block;" >
							<option selected value="cdt" ${cri.searchType eq 'cdt' ? 'selected':'' }>전체</option>
							<option value="c" ${cri.searchType eq 'c' ? 'selected':'' } >전공분야</option>
							<option value="t" ${cri.searchType eq 't' ? 'selected':'' }>상병명</option>
							<option value="d" ${cri.searchType eq 'd' ? 'selected':'' }>작성자</option>
						</select>
						<input name="keyword" class="form-control" style="display: inline-block; height: 31px; width: 170px; vertical-align: 1px;" type="text" value="${param.keyword}" >
						<a onclick="list_go(1);" ><i style="font-size: 1.5em; " class="fa fa-search"></i></a>
					</div>
				</div>

		<div class="row" style="margin-top: 10px;">

		<c:forEach items="${ordersetList}" var="orderset" >
			<div class="col-lg-3">
				<div class="contact-box center-version">

					<a onclick="subgoPage('/orderset/orderset_detail.do?from=list&oNo=${orderset.orderset.oNo}')" style="min-height: 226px;">
						<h3>
							<strong>${orderset.orderset.oTitle}(${orderset.orderset.oTarget})</strong>&emsp;&emsp;
							<i class="fa fa-eye"> ${orderset.orderset.oViewcnt}</i>&emsp;<i class="fa fa-thumbs-o-up"> ${orderset.orderset.recoCnt}</i>
						</h3>
						<br>
						<c:forEach items="${orderset.drugList}" var="drug"  begin="0" end="4" step="1" >
							<p>${drug.oDrug}</p>
						</c:forEach>


					</a>
					<div class="contact-box-footer">
						<div class="m-t-xs btn-group">
								<h4>${orderset.orderset.oCla} / ${orderset.orderset.dName}&nbsp;&nbsp;&nbsp;${orderset.orderset.oRegdate}</h4>
						</div>
					</div>
				</div>
			</div>

		</c:forEach>





		</div>
		<!--end row -->

			<nav aria-label="Navigation">
				<ul class="pagination justify-content-center m-0">
					<li class="page-item">
						<a class="page-link" href="javascript:list_go(1);">
							<i class="fa fa-angle-double-left"></i>
						</a>
					<li class="page-item">
						<a class="page-link" href="javascript:list_go(1);">
							<i class="fa fa-angle-left"></i>
						</a>
					</li>

					<c:forEach var="pageNum" begin="${pageMaker.startPage }"
											 end="${pageMaker.endPage }" >
						<li class="page-item ${cri.page == pageNum?'active':''}">
							<a class="page-link" href="javascript:list_go('${pageNum}');" >${pageNum }</a>
						</li>

					</c:forEach>


					<li class="page-item">
						<a class="page-link" href="javascript:list_go(1);">
							<i class="fa fa-angle-right"></i>
						</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="javascript:list_go(${pageMaker.realEndPage });">
							<i class="fa fa-angle-double-right"></i>
						</a>
					</li>
				</ul>
			</nav>


	</div>



	<div style="height: 100px;"></div>
	<!-- Mainly scripts -->
	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
	<script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/open.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
	<script src="js/inspinia.js"></script>
	<script src="js/plugins/pace/pace.min.js"></script>
	<script>

	function list_go(page){
		  url = "/orderset/orderset_list.do";

		  var mineCheck = "";
		   var searchType = $('select[name="searchType"]').val();
		   var keyword = $('input[name="keyword"]').val();
		   if($("#mineCheck").is(":checked")){
		  	 mineCheck = $('#mineCheck').val();
		   }
		   subgoPage(url+"?page="+page+"&perPageNum=9&searchType="+searchType+"&keyword="+keyword+"&mineCheck="+mineCheck);
		}

	  $("#mineCheck").change(function(){
	        if($("#mineCheck").is(":checked")){
	        	list_go(1)
	        }else{
	        	list_go(1)
	        }
	    });
	</script>

<c:if test="${from eq 'regist' }">
	<script>
		alert("오더세트가 등록되었습니다.");
	</script>
</c:if>
<c:if test="${from eq 'remove' }">
	<script>
		alert("오더세트가 삭제되었습니다.");
	</script>
</c:if>
</body>
</html>