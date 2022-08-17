<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.container {
	max-width: none;
}

.row {
	margin-top: 2px;
	margin-bottom: 2px;
}

.col-md-6 {
	height: 500px;
}

.col-md-4 {
	height: 400px;
}

.ibox-content {
	padding: 8px 8px 8px 8px;
}

.ibox-content-2 {
	border: 3px solid #1F4690;
	border-radius: 20px;
}

h4 {
	margin-left: 15px;
}
</style>
</head>
<body>

	<div class="container">

		<div class="row">
			<div class="col-md-6">
				<div class="ibox-content">
					<h3 style="color: black;">
						진료히스토리<i class="fa fa-plus" style="float: right;"></i>
					</h3>


					<table class="table table-hover">
						<thead style="background: cadetblue;">
							<tr>
								<th style="width: 28%;">환자명</th>
								<th style="width: 45%;">주상병</th>
								<th>진료일</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>김민수(19920701-1)</td>
								<td>경추 추간판 탈출증</td>
								<td>2022-07-07 16:25</td>
							</tr>
							<tr>
								<td>이순자(19920701-1)</td>
								<td>관절염</td>
								<td>2022-07-07 16:25</td>
							</tr>
							<tr>
								<td>김민수(19920701-1)</td>
								<td>경추 추간판 탈출증</td>
								<td>2022-07-07 16:25</td>
							</tr>
							<tr>
								<td>김민수(19920701-1)</td>
								<td>경추 추간판 탈출증</td>
								<td>2022-07-07 16:25</td>
							</tr>
							<tr>
								<td>이순자(19920701-1)</td>
								<td>관절염</td>
								<td>2022-07-07 16:25</td>
							</tr>
							<tr>
								<td>김민수(19920701-1)</td>
								<td>경추 추간판 탈출증</td>
								<td>2022-07-07 16:25</td>
							</tr>
							<tr>
								<td>이순자(19920701-1)</td>
								<td>관절염</td>
								<td>2022-07-07 16:25</td>
							</tr>
							<tr>
								<td>김민수(19920701-1)</td>
								<td>경추 추간판 탈출증</td>
								<td>2022-07-07 16:25</td>
							</tr>
							<tr>
								<td>김민수(19920701-1)</td>
								<td>경추 추간판 탈출증</td>
								<td>2022-07-07 16:25</td>
							</tr>
							<tr>
								<td>김민수(19920701-1)</td>
								<td>경추 추간판 탈출증</td>
								<td>2022-07-07 16:25</td>
							</tr>

						</tbody>
					</table>
				</div>

			</div>
			<div class="col-md-6" style="background-color:white; height:490px; padding-left:5px;" >
				<h3 style="color: black; padding-top:10px; margin-bottom: 18px">
					&nbsp;협진히스토리<i class="fa fa-plus" style="float: right; padding-bottom:10px;"></i>

				</h3>


						<div class="contact-box" style="border: 3px solid #377D71; ">

								<strong>환자명 &emsp;김소미(성인/여) &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;종료사유&emsp;완치</strong>
								<p style="margin-bottom: 8px;"></p>
								<strong>주상병 &emsp;간암</strong>
								<p style="margin-bottom: 8px;"></p>
								<strong>부상병 &emsp;당뇨</strong>
								<p style="margin-bottom: 8px;"></p>
								<strong>주치의 &emsp;강현수(호흡기내과)</strong>
								<p style="margin-bottom: 8px;"></p>
								<strong>시작일 &emsp;2022-01-03 &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;종료일&emsp;2022-03-01</strong>
								<p style="margin-bottom: 8px;"></p>

						</div>
						<div class="contact-box" style="border: 3px solid #377D71; ">

								<strong>환자명 &emsp;김소미(성인/여) &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;종료사유&emsp;완치</strong>
								<p style="margin-bottom: 8px;"></p>
								<strong>주상병 &emsp;간암</strong>
								<p style="margin-bottom: 8px;"></p>
								<strong>부상병 &emsp;당뇨</strong>
								<p style="margin-bottom: 8px;"></p>
								<strong>주치의 &emsp;강현수(호흡기내과)</strong>
								<p style="margin-bottom: 8px;"></p>
								<strong>시작일 &emsp;2022-01-03 &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;종료일&emsp;2022-03-01</strong>
								<p style="margin-bottom: 8px;"></p>

						</div>

			</div>
		</div>


		<div class="row">
			<div class="col-md-4" style="padding-right: 0px;">
				<div class="ibox-content">
					<h3 style="color: black;">
						&nbsp;알림<i class="fa fa-plus" style="float: right;"></i>
					</h3>
					<table class="table table-hover">

						<tbody>
							<tr>
								<td><img alt="프로필" src="<%=request.getContextPath()%>/resources/img/notification.png" style="width: 20px; height: 20px;">호흡기내과 강현수 님의 협진 요청이 있습니다.</td>
							</tr>
							<tr>
								<td><img alt="프로필" src="<%=request.getContextPath()%>/resources/img/notification.png" style="width: 20px; height: 20px;">가정의학과 박태정 님의 협진 요청이 있습니다.</td>
							</tr>
							<tr>
								<td><img alt="프로필" src="<%=request.getContextPath()%>/resources/img/notification.png" style="width: 20px; height: 20px;">호흡기내과 강현수 님의 협진 요청이 있습니다.</td>
							</tr>
							<tr>
								<td>&emsp;&nbsp;&nbsp;호흡기내과 강현수 님의 협진 요청이 있습니다.</td>
							</tr>
							<tr>
								<td>&emsp;&nbsp;&nbsp;호흡기내과 강현수 님의 협진 요청이 있습니다.</td>
							</tr>
							<tr>
								<td>&emsp;&nbsp;&nbsp;호흡기내과 강현수 님의 협진 요청이 있습니다.</td>
							</tr>
							<tr>
								<td>&emsp;&nbsp;&nbsp;호흡기내과 강현수 님의 협진 요청이 있습니다.</td>
							</tr>
							<tr>
								<td>&emsp;&nbsp;&nbsp;호흡기내과 강현수 님의 협진 요청이 있습니다.</td>
							</tr>
							<tr>
								<td>&emsp;&nbsp;&nbsp;호흡기내과 강현수 님의 협진 요청이 있습니다.</td>
							</tr>
						</tbody>
					</table>
				</div>

			</div>
			<div class="col-md-4">
				<div class="ibox-content">
					<h3 style="color: black;">
						&nbsp;공지사항<i class="fa fa-plus" style="float: right;"></i>
					</h3>

					<table class="table table-hover">

						<tbody>
							<tr>
								<td><img alt="프로필" src="<%=request.getContextPath()%>/resources/img/red.png" style="width: 8px; height: 8px;">&nbsp;세미나실 알림공지입니다.</td>
								<td><i class="fa fa-calendar"></i>2022-07-08</td>
							</tr>
							<tr>
								<td><img alt="프로필" src="<%=request.getContextPath()%>/resources/img/red.png" style="width: 8px; height: 8px;">&nbsp;약품이 업데이트되었습니다.</td>
								<td><i class="fa fa-calendar"></i>2022-07-08</td>
							</tr>
							<tr>
								<td>&emsp;약품이 업데이트되었습니다.</td>
								<td><i class="fa fa-calendar"></i>2022-07-08</td>
							</tr>
							<tr>
								<td>&emsp;약품이 업데이트되었습니다.</td>
								<td><i class="fa fa-calendar"></i>2022-07-08</td>
							</tr>
							<tr>
								<td>&emsp;약품이 업데이트되었습니다.</td>
								<td><i class="fa fa-calendar"></i>2022-07-08</td>
							</tr>
							<tr>
								<td>&emsp;약품이 업데이트되었습니다.</td>
								<td><i class="fa fa-calendar"></i>2022-07-08</td>
							</tr>
							<tr>
								<td>&emsp;약품이 업데이트되었습니다.</td>
								<td><i class="fa fa-calendar"></i>2022-07-08</td>
							</tr>
							<tr>
								<td>&emsp;약품이 업데이트되었습니다.</td>
								<td><i class="fa fa-calendar"></i>2022-07-08</td>
							</tr>
							<tr>
								<td>&emsp;약품이 업데이트되었습니다.</td>
								<td><i class="fa fa-calendar"></i>2022-07-08</td>
							</tr>
						</tbody>
					</table>
				</div>

			</div>
			<div class="col-md-4" style="background-color: white; height: 385px;">
				<h3 style="color: black;">
					&nbsp;My Log<i class="fa fa-plus" style="float: right; padding-bottom: 10px; padding-top: 10px;"></i>
				</h3>
				<div class="col-lg-12">
					<div>


						<div>

							<div class="timeline-item width330">
								<div class="row">

									<div class="col-3 date" style="padding-left: 14px;">

										<i class="fa fa-briefcase"></i> <span style="margin-left: -5px;"></span><br> <small class="text-navy">2022-06-29 <br></small> <small class="text-navy">09:00pm</small>



									</div>
									<div class="col-7 content no-top-border">
										<p class="m-b-xs">
											<strong>[CaseDiscussion] 의견등록</strong>
										</p>

										<p style="margin-bottom: 8px;">#처음보는 아토피 환자입니다.조언부탁드립니다</p>

									</div>
								</div>
							</div>


							<div class="timeline-item width330">
								<div class="row">

									<div class="col-3 date" style="padding-left: 14px;">

										<i class="fa fa-file-text"></i> <span style="margin-left: -5px;"></span><br> <small class="text-navy">2022-06-28 <br></small> <small class="text-navy">09:00pm</small>



									</div>
									<div class="col-7 content ">
										<p class="m-b-xs">
											<strong>[CaseDiscussion] 의견수정</strong>
										</p>

										<p style="margin-bottom: 8px;">#처음보는 아토피 환자입니다.조언부탁드립니다</p>

									</div>
								</div>
							</div>


							<div class="timeline-item width330">
								<div class="row">

									<div class="col-3 date" style="padding-left: 14px;">

										<i class="fa fa-file-text"></i> <span style="margin-left: -5px;"></span><br> <small class="text-navy">2022-06-28 <br></small> <small class="text-navy">09:00pm</small>



									</div>
									<div class="col-7 content ">
										<p class="m-b-xs">
											<strong>[CaseDiscussion] 의견삭제</strong>
										</p>

										<p style="margin-bottom: 8px;">#처음보는 아토피 환자입니다.조언부탁드립니다</p>

									</div>
								</div>
							</div>


						</div>
					</div>
				</div>




			</div>
		</div>
	</div>

</body>
</html>