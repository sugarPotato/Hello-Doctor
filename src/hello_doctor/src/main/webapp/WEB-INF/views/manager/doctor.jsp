<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="list" value="${dataMap.list }"/>
<%@ include file="header.jsp" %>

	<div class="container">
		<div class="row">
			<div class="col-sm-3">
				<h1>의료진 관리</h1>
			</div>

			<div class="row" style="margin-right: 20px; max-height: 30px; margin-top: 2%; margin-left: 50%">
				<select>
					<option>이름</option>
					<option>전공</option>
				</select> <input type="text" placeholder="검색어를 입력하세요">
				<div class="input-group-append">
					<button class="btn btn-primary btn-sm" type="button">검색</button>
				</div>
			</div>
		</div>
		<br> <br>
		<table class="table table-bordered"
			style="text-align: center; text-align: center; width: 100%;">
			<thead>
				<tr>
					<th style="width: 10%">이름</th>
					<th style="width: 10%">생년월일</th>
					<th style="width: 20%">전화번호</th>
					<th>전공</th>
					<th style="width: 10%">의료진 상태</th>
					<th style="width: 10%">상태변경</th>
					<th>IP</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${!empty list }">
					<c:forEach items="${list }" var="list" varStatus="count">
						<tr>
							<td>${list.dName }</td>
							<td>${list.residentNum }</td>
							<td>${list.tel }</td>
							<td>${list.maName }</td>
						<c:if test="${list.status == '1'}">
							<td>재직</td>
						</c:if>
						<c:if test="${list.status == '2'}">
							<td>정직</td>
						</c:if>
						<c:if test="${list.status == '3'}">
							<td>퇴직</td>
						</c:if>
							<td style="margin: 20px;"><button class="btn btn-success btn-xs">상태변경</button></td>
							<td><a href="ip_manager">ip추가</a></td>
						</tr>
					</c:forEach>
				</c:if>


			</tbody>
		</table>

		<div>


		</div>

	</div>



	<!-- Mainly scripts -->
	<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
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
	<script src="<%=request.getContextPath()%>/resources/js/plugins/sweetalert/sweetalert.min.js"></script>
		<script>
	  $(".btn-success").on("click", function(){
		  OpenWindow("./change","의료진 상태 변경",400,600);
	  })
	</script>
	<script>
	$(document).ready(function(){
// 		var acc = $(".accStatus").text();
// 		alert(acc);
	});
	</script>
</body>
</html>