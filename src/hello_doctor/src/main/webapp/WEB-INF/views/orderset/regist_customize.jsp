<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<%=request.getContextPath() %>/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/font-awesome/css/font-awesome.css" rel="stylesheet">



    <link href="<%=request.getContextPath() %>/resources/css/plugins/dualListbox/bootstrap-duallistbox.min.css" rel="stylesheet">

    <link href="<%=request.getContextPath() %>/resources/css/animate.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/css/style.css" rel="stylesheet">
</head>
<body>
	<div class="row">
					<div class="col-lg-12">
						<div class="ibox">
							<div class="ibox-title">
								<h5>처방내역 커스터마이징</h5>
							</div>
							<div class="ibox-content" style="height: 420px;">
								<p>My 오더세트에 등록할 처방내역을 선택해주세요.</p>

								<form id="form" action="#" class="wizard-big">
									<select class="form-control dual_select" multiple=""
										style="display: none;">
										<option value="United States" data-sortindex="24">소아용프리마란시럽</option>
										<option value="Australia" data-sortindex="26">소아용에포프림연질캡슐</option>
										<option value="Austria" data-sortindex="27">데스오웬로션</option>
										<option value="United Kingdom" data-sortindex="25">프로토픽연고</option>
									</select>
								</form>
								<div style="text-align: center; margin-top: 22px;">
									<button type="button" class="btn btn-outline btn-success" onclick="OpenWindow('regist_customize','My오더세트추가하기',770,425);">My 오더세트에 추가하기</button>
								</div>
							</div>
						</div>
					</div>

				</div>


			
	<!-- Mainly scripts -->
    <script src="<%=request.getContextPath() %>/resources/js/jquery-3.1.1.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/popper.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/bootstrap.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="<%=request.getContextPath() %>/resources/js/inspinia.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/plugins/pace/pace.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

  

    <!-- Dual Listbox -->
    <script src="<%=request.getContextPath() %>/resources/js/plugins/dualListbox/jquery.bootstrap-duallistbox.js"></script>
    
    
    <script>  
    $(document).ready(function(){

    	  


        $('.dual_select').bootstrapDualListbox({
            selectorMinimalHeight: 160,
            nonSelectedListLabel: "선택 안함",
        	selectedListLabel: "선택함"
        });


    });
    </script>
</body>
</html>