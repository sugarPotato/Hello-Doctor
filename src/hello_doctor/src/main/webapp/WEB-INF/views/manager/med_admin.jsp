<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

	<div class="container">
		<div class="row">
			<div class="col-md-2" style="max-width: 55%">
				<h1>약품 관리</h1>
			</div>
			<div class="row"
				style="margin-right: 20px; max-height: 30px; margin-top: 2%; margin-left: 44%">
				<select>
					<option>약품명</option>
					<option>약품코드</option>
				</select> <input type="text" placeholder="검색어를 입력하세요">
				<div class="input-group-append">
					<button class="btn btn-primary btn-sm" type="button">검색</button>
				</div>
			</div>

			<div class="row" style="margin-top: 2%">
				<button class="btn btn-success update_btn" style="max-height: 30px;">약품정보
					업데이트</button>
			</div>
		</div>
		<br> <br>
		<table class="table table-bordered"
			style="text-align: center; text-align: center; width: 100%;">
			<thead>
				<tr>
					<th style="width:25%">약품명</th>
					<th>약품코드</th>
					<th>급여여부</th>
					<th>등록일</th>
					<th>존재여부</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="drug">라베나정 20mg</td>
					<td>ME000001</td>
					<td>Y</td>
					<td>2018/08/09</td>
					<td>
						<div class="form-check abc-checkbox abc-checkbox-success">
							<input class="form-check-input" class="" type="checkbox">
						</div>
					</td>
				</tr>
				<tr>
					<td class="drug">라베나정 20mg</td>
					<td>ME000001</td>
					<td>Y</td>
					<td>2018/08/09</td>
					<td>
						<div class="form-check abc-checkbox abc-checkbox-success">
							<input class="form-check-input" class="" type="checkbox">
						</div>
					</td>
				</tr>
				<tr>
					<td class="drug">라베나정 20mg</td>
					<td>ME000001</td>
					<td>Y</td>
					<td>2018/08/09</td>
					<td>
						<div class="form-check abc-checkbox abc-checkbox-success">
							<input class="form-check-input" class="" type="checkbox">
						</div>
					</td>
				</tr>
				<tr>
					<td class="drug">라베나정 20mg</td>
					<td>ME000001</td>
					<td>Y</td>
					<td>2018/08/09</td>
					<td>
						<div class="form-check abc-checkbox abc-checkbox-success">
							<input class="form-check-input" class="" type="checkbox">
						</div>
					</td>
				</tr>
				<tr>
					<td class="drug">라베나정 20mg</td>
					<td>ME000001</td>
					<td>Y</td>
					<td>2018/08/09</td>
					<td>
						<div class="form-check abc-checkbox abc-checkbox-success">
							<input class="form-check-input" class="" type="checkbox">
						</div>
					</td>
				</tr>
				<tr>
					<td class="drug">라베나정 20mg</td>
					<td>ME000001</td>
					<td>Y</td>
					<td>2018/08/09</td>
					<td>
						<div class="form-check abc-checkbox abc-checkbox-success">
							<input class="form-check-input" class="" type="checkbox">
						</div>
					</td>
				</tr>
				<tr>
					<td class="drug">라베나정 20mg</td>
					<td>ME000001</td>
					<td>Y</td>
					<td>2018/08/09</td>
					<td>
						<div class="form-check abc-checkbox abc-checkbox-success">
							<input class="form-check-input" class="" type="checkbox">
						</div>
					</td>
				</tr>
				<tr>
					<td class="drug">라베나정 20mg</td>
					<td>ME000001</td>
					<td>Y</td>
					<td>2018/08/09</td>
					<td>
						<div class="form-check abc-checkbox abc-checkbox-success">
							<input class="form-check-input" class="" type="checkbox">
						</div>
					</td>
				</tr>
				<tr>
					<td class="drug">라베나정 20mg</td>
					<td>ME000001</td>
					<td>Y</td>
					<td>2018/08/09</td>
					<td>
						<div class="form-check abc-checkbox abc-checkbox-success">
							<input class="form-check-input" class="" type="checkbox">
						</div>
					</td>
				</tr>
				<tr>
					<td class="drug">라베나정 20mg</td>
					<td>ME000001</td>
					<td>Y</td>
					<td>2018/08/09</td>
					<td>
						<div class="form-check abc-checkbox abc-checkbox-success">
							<input class="form-check-input" class="" type="checkbox">
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		<div>
			<ul class="pagination " style="justify-content: center;">
				<li class="footable-page-arrow"><a data-page="first"
					href="#first">«</a></li>
				<li class="footable-page-arrow"><a data-page="prev"
					href="#prev">‹</a></li>
				<li class="footable-page"><a data-page="0" href="#">1</a></li>
				<li class="footable-page"><a data-page="1" href="#">2</a></li>
				<li class="footable-page"><a data-page="2" href="#">3</a></li>
				<li class="footable-page active"><a data-page="3" href="#">4</a></li>
				<li class="footable-page"><a data-page="4" href="#">5</a></li>
				<li class="footable-page-arrow"><a data-page="next"
					href="#next">›</a></li>
				<li class="footable-page-arrow"><a data-page="last"
					href="#last">»</a></li>
			</ul>

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
	  $('input:checkbox').click(function () {
          swal({
              title: "약품을 추가/삭제하시겠습니까?",
              text: "약품명 : 라베나정 20mg",
              type: "warning",
              showCancelButton: true,
              confirmButtonColor: "#DD6B55",
              confirmButtonText: "확인",
              closeOnConfirm: false
          }, function () {
              swal("", "약품 정보 수정에 성공했습니다.", "success");
              setTimeout(function(){        	  
	              window.location.reload();
              },1000);
              
          });
          
      });
	</script>
</body>
</html>