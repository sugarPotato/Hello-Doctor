<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link
	href="<%=request.getContextPath()%>/resources/css/plugins/sweetalert/sweetalert.css"
	rel="stylesheet">
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
<body style="width: 900px;">
	<section class="content container-fluid" style="width: 900px;">
		<div class="row justify-content-center">
			<div class="col-md-9" style="max-width:960px;">
				<div class="card card-outline card-info">
					<div class="card-header">
						
						<div class ="">
						<span style="margin-right: 72%">공지등록</span>
							<button type="button" class="btn btn-primary" id="registBtn" onclick="regist_go();">등 록</button>
							&nbsp;&nbsp;&nbsp;&nbsp;
							<button type="button" class="btn btn-warning" id="cancelBtn" onclick="CloseWindow();" >취 소</button>
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
    <script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
    <script
		src="<%=request.getContextPath()%>/resources/js/plugins/sweetalert/sweetalert.min.js"></script>
	<script type="text/javascript">
	function regist_go(){
		var title = document.getElementById("title").value;
		var content = document.getElementById("content").value;
		if(title == ""){
			blank_title();
			return false;
		}else if(content == ""){
			blank_content();
			return false;
		}else{
			success_regist();
			
		}
			
	}
	function blank_title(){
		swal({
            title: "제목은 필수 사항입니다.",
            text: "",
            type: "warning"
        });
	}
	function blank_content(){
		swal({
            title: "내용은 필수 사항입니다.",
            text: "",
            type: "warning"
        });
	
	}
	function success_regist(){
		swal({
            title: "공지사항을 전송하시겠습니까?",
            text: "제목 : 약품업데이트",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "확인",
            cancelButtonText: "취소",
            closeOnConfirm: false,
            closeOnCancel: false 
        }, function (isConfirm) {
        	if(isConfirm){
        		swal("", "공지사항을 사용자에게 전송합니다.", "success");
                setTimeout(function(){
                	window.opener.location.reload();
                   window.close();
                },2000);
                
                form.submit();
        	}else{
        		swal("공지사항 전송을 취소합니다.");
        		 setTimeout(function(){             
                     swal.close();
                  },1000);
        	}
            
            
        });
	}
	</script>
</body>
</html>