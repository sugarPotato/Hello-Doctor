<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@ include file="header.jsp" %>
		<h1>aaa${admin}</h1>
			<div class="update_cure">
				<div>
				<a href="#" onclick="">
					<div style="margin-left: 79%">

						<img
							src="https://img.icons8.com/fluency-systems-filled/16/000000/pills.png" />
						<span>최근 업데이트 일</span> <span>2022-06-28</span>
					</div>
					<div style="margin-left: 80%">
						<span>업데이트 안한지 : </span> <span>30일이 지났습니다.</span>
					</div>
				</a>
				</div>
			</div>
			<br>
			<div class="div_body">
				<div class="div_title" style="width: 58%">
					<br> <a href="#"><span style="margin-left: 15px;">신규 회원가입</span></a> <br> <br>
					<div style="padding: 15px 10px 10px 15px">
						<form>
							<table class="manager_table">
								<thead>
									<tr>
										<th>이름</th>
										<th width="20%">주민등록번호</th>
										<th>아이디</th>
										<th>진료실 호수</th>
										<th>연구실 호수</th>
										<th>IP</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>강현수</td>
										<td>970213-1******</td>
										<td>qwrqw12!</td>
										<td>304호</td>
										<td>204호</td>
										<td><a href="#">등록</a></td>
									</tr>
									<tr>
										<td>강현수</td>
										<td>970213-1******</td>
										<td>qwrqw12!</td>
										<td>304호</td>
										<td>204호</td>
										<td><a href="#">등록</a></td>
									</tr>
									<tr>
										<td>강현수</td>
										<td>970213-1******</td>
										<td>qwrqw12!</td>
										<td>304호</td>
										<td>204호</td>
										<td><a href="#">등록</a></td>
									</tr>
									<tr>
										<td>강현수</td>
										<td>970213-1******</td>
										<td>qwrqw12!</td>
										<td>304호</td>
										<td>204호</td>
										<td><a href="#">등록</a></td>
									</tr>

								</tbody>
							</table>
						</form>
					</div>
				</div>

				<div class="div_title" style="width: 38%">
					<br> <a href="#"><span style="margin-left: 15px">최근
							공지 사항</span></a> <br> <br>
					<div style="padding: 15px 10px 10px 15px">
						<form>
							<table class="manager_table">
								<thead>
									<tr>
										<th>공지번호</th>
										<th>공지제목</th>
										<th>일시</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>강현수</td>
										<td>소아과</td>
										<td>2022-01-11</td>
									</tr>
									<tr>
										<td>강현수</td>
										<td>소아과</td>
										<td>2022-01-11</td>
									</tr>
									<tr>
										<td>강현수</td>
										<td>소아과</td>
										<td>2022-01-11</td>
									</tr>
									<tr>
										<td>강현수</td>
										<td>소아과</td>
										<td>2022-01-11</td>
									</tr>
									<tr>
										<td>강현수</td>
										<td>소아과</td>
										<td>2022-01-11</td>
									</tr>
								</tbody>
							</table>
						</form>
					</div>
				</div>
			</div>
			<br>
			<div class="col-lg-12" style="width: 100%; height:">
				<div class="ibox ">
					<div class="ibox-title">
						<h5>의료진 현황</h5>
					</div>
					<div class="ibox-content">
						<div style="height: 50%">
							<canvas style="height: 50%" id="barChart" height="140"></canvas>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>

	<!-- Mainly scripts -->
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

	<!-- Flot -->
	<script
		src="<%=request.getContextPath()%>/resources/js/plugins/flot/jquery.flot.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/plugins/flot/jquery.flot.resize.js"></script>


	<!-- Peity -->
	<script
		src="<%=request.getContextPath()%>/resources/js/plugins/peity/jquery.peity.min.js"></script>
	<!-- Peity demo -->
	<script
		src="<%=request.getContextPath()%>/resources/js/demo/peity-demo.js"></script>
	<!-- chart js -->
	<script
		src="<%=request.getContextPath()%>/resources/js/plugins/chartJs/Chart.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/commons.js"></script>
	<script type="text/javascript">
		$(function() {
			var barData = {
				labels : [ "January", "February", "March", "April", "May",
						"June", "July", "August", "September", "October",
						"November", "December" ],
				datasets : [ {
					label : "입사수",
					backgroundColor : 'rgba(220, 220, 220, 0.5)',
					pointBorderColor : "#fff",
					data : [ 65, 59, 80, 81, 56, 55, 40, 25, 52, 65, 11, 20 ]
				},
				{
					label : "퇴직자수",
					backgroundColor : 'rgba(50, 110, 211, 0.5)',
					pointBorderColor : "#fff",
					data : [ 65, 59, 80, 81, 56, 55, 40, 25, 52, 65, 11, 20 ]
				},
				{
					label : "현재의료진수",
					backgroundColor : 'rgba(26,179,148,0.5)',
					borderColor : "rgba(26,179,148,0.7)",
					pointBackgroundColor : "rgba(26,179,148,1)",
					pointBorderColor : "#fff",
					data : [ 28, 48, 40, 19, 86, 27, 90, 30, 80, 11, 14, 60 ]
				} ]
			};

			var barOptions = {
				responsive : true
			};

			var ctx2 = document.getElementById("barChart").getContext("2d");
			new Chart(ctx2, {
				type : 'bar',
				data : barData,
				options : barOptions
			});
		});
	</script>

	<script>
		$(document)
				.ready(
						function() {

							var d1 = [ [ 1262304000000, 6 ],
									[ 1264982400000, 3057 ],
									[ 1267401600000, 20434 ],
									[ 1270080000000, 31982 ],
									[ 1272672000000, 26602 ],
									[ 1275350400000, 27826 ],
									[ 1277942400000, 24302 ],
									[ 1280620800000, 24237 ],
									[ 1283299200000, 21004 ],
									[ 1285891200000, 12144 ],
									[ 1288569600000, 10577 ],
									[ 1291161600000, 10295 ] ];
							var d2 = [ [ 1262304000000, 5 ],
									[ 1264982400000, 200 ],
									[ 1267401600000, 1605 ],
									[ 1270080000000, 6129 ],
									[ 1272672000000, 11643 ],
									[ 1275350400000, 19055 ],
									[ 1277942400000, 30062 ],
									[ 1280620800000, 39197 ],
									[ 1283299200000, 37000 ],
									[ 1285891200000, 27000 ],
									[ 1288569600000, 21000 ],
									[ 1291161600000, 17000 ] ];

							var data1 = [ {
								label : "Data 1",
								data : d1,
								color : '#17a084'
							}, {
								label : "Data 2",
								data : d2,
								color : '#127e68'
							} ];
							$.plot($("#flot-chart1"), data1, {
								xaxis : {
									tickDecimals : 0
								},
								series : {
									lines : {
										show : true,
										fill : true,
										fillColor : {
											colors : [ {
												opacity : 1
											}, {
												opacity : 1
											} ]
										},
									},
									points : {
										width : 0.1,
										show : false
									},
								},
								grid : {
									show : false,
									borderWidth : 0
								},
								legend : {
									show : false,
								}
							});

							var lineData = {
								labels : [ "January", "February", "March",
										"April", "May", "June", "July" ],
								datasets : [
										{
											label : "Example dataset",
											backgroundColor : "rgba(26,179,148,0.5)",
											borderColor : "rgba(26,179,148,0.7)",
											pointBackgroundColor : "rgba(26,179,148,1)",
											pointBorderColor : "#fff",
											data : [ 48, 48, 60, 39, 56, 37, 30 ]
										},
										{
											label : "Example dataset",
											backgroundColor : "rgba(220,220,220,0.5)",
											borderColor : "rgba(220,220,220,1)",
											pointBackgroundColor : "rgba(220,220,220,1)",
											pointBorderColor : "#fff",
											data : [ 65, 59, 40, 51, 36, 25, 40 ]
										} ]
							};

							var lineOptions = {
								responsive : true
							};

							var ctx = document.getElementById("lineChart")
									.getContext("2d");
							new Chart(ctx, {
								type : 'line',
								data : lineData,
								options : lineOptions
							});

						});
	</script>



</body>
</html>