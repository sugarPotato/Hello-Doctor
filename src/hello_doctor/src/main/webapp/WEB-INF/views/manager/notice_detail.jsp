<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
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
</head>
<body style="width: 900px">
	<section class="content container-fluid" style="width: 900px;">
		<div class="row justify-content-center">
			<div class="col-md-9" style="max-width:960px;">
				<div class="card card-outline card-info">
					<div class="card-header">
						
						<div class ="">
						<span style="margin-right: 72%">공지등록</span>
							&nbsp;&nbsp;&nbsp;&nbsp;
							<button style="margin-left: 8%" type="button" class="btn btn-warning" id="cancelBtn" onclick="CloseWindow();" >확 인</button>
						</div>
					</div><!--end card-header  -->
					<div class="card-body pad">
						<form role="form" method="post" action="regist.do" name="registForm">
							<div class="form-group">
								<label for="writer">작성자  </label> 
								<input type="text" id="writer" readonly
									name="writer" class="form-control" value="${loginUser.id }" style="width: 25%; display: inline-block;">
								&nbsp;&nbsp;&nbsp;&nbsp;
								
								<label for="writer" style="margin-left: 24%">작성일  </label> 
								<input type="text" id="writer" readonly
									name="writer" class="form-control" value="" style="width:35%; display: inline-block;">
							</div>
							
							<div class="form-group">
								<label for="title">제 목</label> 
								<input type="text" id="title"
									name='title' class="form-control" placeholder="제목을 쓰세요">
							</div>							
							
							<div class="form-group">
								<label for="content">내 용</label>
								<textarea class="textarea" name="content" id="content" rows="20"
									cols="90" placeholder="1000자 내외로 작성하세요." ></textarea>
							</div>
						</form>
					</div><!--end card-body  -->
					<div class="card-footer" style="display:none">
					
					</div><!--end card-footer  -->
				</div><!-- end card -->				
			</div><!-- end col-md-12 -->
		</div><!-- end row -->
    </section>
</body>
</html>