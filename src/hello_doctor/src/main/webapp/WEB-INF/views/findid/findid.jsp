<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/font-awesome/css/font-awesome.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/css/animate.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/css/style.css"
	rel="stylesheet">
<meta charset="utf-8">
<title>아이디/비밀번호 찾기</title>
<style type="text/css">
li {
	width: 50%;
}

a {
	text-align: center;
}

table {
	text-align: center;
	margin: 5px;
}
td{
	padding: 5px;
}
input {
	background-color: #ffffff;
	background-image: none;
	border: 1px solid #e5e6e7;
	border-radius: 1px;
	padding: 6px 12px;
}
.user_input{
	width: 200px;
}
</style>
</head>
<body>
	<div class="wrapper wrapper-content animated fadeIn">

		<div class="row">
			<div class="col-lg-6">
				<div class="tabs-container">
					<ul class="nav nav-tabs" role="tablist">
						<li><a class="nav-link active" data-toggle="tab"
							href="#tab-1"> 아이디 찾기</a></li>
						<li><a class="nav-link" data-toggle="tab" href="#tab-2">비밀번호
								찾기</a></li>
					</ul>
					<div class="tab-content">
						<div role="tabpanel" id="tab-1" class="tab-pane active">
							<div class="panel-body">
								<input type="checkbox"> <span>가입한 전화번호로 찾기</span>
								<form>
								<table>
									<tr>
										<td><span>전화번호</span></td>
										<td><input type="text" placeholder="전화번호을 입력해주세요." class="user_input">

											<td><button class="btn btn-success">확인</button></td>
									</tr>
								</table>
								</form>
								<br>
								<input type="checkbox">
								<span>주민등록번호로 찾기</span>
								<form>
								<table>
									<tr>
										<td><span>주민등록번호</span></td>
										<td><input type="text" placeholder="주민등록번호를 입력해주세요." class="user_input">


										<td><button class="btn btn-success">확인</button></td>
									</tr>
								</table>
								</form>
							</div>
						</div>
						<div role="tabpanel" id="tab-2" class="tab-pane">
							<div class="panel-body">
								<input type="checkbox">
								<span>가입한 전화번호로 찾기</span>
								<form>
									<table>
										<tr>
											<td>
												<span>이름</span>
											</td>
											<td>
												<input type="text" placeholder="이름을 입력해주세요" class="user_input">
											</td>
										</tr>
										<tr>
											<td>
												<span>전화번호</span>
											</td>
											<td>
												<input type="text" placeholder="전화번호을 입력해주세요" class="user_input">
											</td>
											<td>
												<button class="btn btn-success">확인</button>
											</td>
										</tr>
									</table>
								</form>
								<input type="checkbox">
								<span>주민등록번호로 찾기</span>
								<form>
									<table>
										<tr>
											<td>
												<span>이름</span>
											</td>
											<td>
												<input type="text" placeholder="이름을 입력해주세요" class="user_input">
											</td>
										</tr>
										<tr>
											<td>
												<span>주민등록번호</span>
											</td>
											<td>
												<input type="text" placeholder="주민등록번호를 입력해주세요" class="user_input">
											</td>
											<td>
												<button class="btn btn-success">
													확인
												</button>
											</td>
										</tr>
									</table>
								</form>
							</div>
						</div>
					</div>


				</div>
			</div>




		</div>
	</div>
	<!-- Mainly scripts -->
<script
												src="<%=request.getContextPath()%>/resources/js/jquery-3.1.1.min.js"></script>
											<script
												src="<%=request.getContextPath()%>/resources/js/popper.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/bootstrap.js"></script>
	<script
												src="<%=request.getContextPath()%>/resources/js/plugins/metisMenu/jquery.metisMenu.js"></script>
	<script
												src="<%=request.getContextPath()%>/resources/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

	<!-- Custom and plugin javascript -->
	<script src="<%=request.getContextPath()%>/resources/js/inspinia.js"></script>
	<script
												src="<%=request.getContextPath()%>/resources/js/plugins/pace/pace.min.js"></script>


										</body>
</html>