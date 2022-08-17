<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>INSPINIA | Register</title>

    <link href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/css/animate.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/css/style.css" rel="stylesheet">



<style>


.row{

    width: 80%;
    margin-left: 0px;
    margin-top: 20px;

}
</style>


</head>

<body class="gray-bg" style="background: white;overflow: hidden;">

	<div class="row-main">
 		<div class="col-sm-12">
	           <h1 class="logo-name" style="font-size: 30px;color: black;border-bottom: solid #e7eaec;letter-spacing: -3px;">전화번호 인증 확인</h1>
         </div>
 	</div>

 	<div class="row">
 		<div class="col-sm-12"><input type="text" class="form-control" placeholder="인증번호 입력" required=""></div>
 	</div>
 	<p style="margin-left: 15px; color: red;" class="input"></p>
 	<div class="row" style="display: inline-block;">
 		<div class="col-sm-6"><button type="submit" class="btn btn-w-m btn-primary" style=" float: left; width: 45%;">확인</button></div>
 		<div class="col-sm-6"><button type="submit" class="btn btn-w-m btn-primary" style=" float: right; width: 45%; background: #dc5c5c; border-color: #dc5c5c;" onclick="window.close()">취소</button></div>
 	</div>

 	 <!-- Mainly scripts -->
    <script src="<%=request.getContextPath()%>/resources/js/jquery-3.1.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/popper.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/bootstrap.js"></script>
    <!-- iCheck -->
    <script src="<%=request.getContextPath()%>/resources/js/plugins/iCheck/icheck.min.js"></script>

<script>
var num = 60 * 3;
var myVar;   
function time(){
	   myVar = setInterval(alertFunc, 1000);     
	}   
    time();
	function alertFunc() {
		var min = num / 60;
		    min = Math.floor(min);
		var sec = num - (60 * min);
		      console.log(min)
		      console.log(sec)  
	   $('.input').text(min + '분' + sec + '초'); 

	   if(num == 0){
		   clearInterval(myVar)
	   }
	   num--;

	}

</script>


</body>
</html>