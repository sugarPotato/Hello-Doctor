<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


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

<style type="text/css">
body {
   width: 1200px;
   margin: 0 auto;
}

.fa-5x {
    font-size: 10em;
}

.fa-3x {
    font-size: 2.5em;
}

.form-control{

	float: right;
    margin-bottom: 20px;
    width: 311px;
}


.registdiv{
    float: left;

}

.loginscreen.middle-box {
    width: 400px;
}

.logo-name {
  color: #353030;
    font-weight: bold;
    letter-spacing: -10px;
    margin-bottom: 0;
    margin-left: 60px;
}

ul{
left: 488px !important;

}

.dropdown-menu {
 left:89px !important;



}

</style>


</head>




<body class="gray-bg">


		 <button class="btn btn-primary " name="phonecheckbtn" type="button" style="position: absolute;margin-left: 703px;margin-top: 636px;border: 2px solid #0ea6d7;background-color: #0ea6d7;z-index: 1;visibility: hidden; ">
                                             <i class="fa fa-check"></i>&nbsp;인증완료</button>

    <div class="middle-box text-center loginscreen   animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name" style="font-size: 50px;">회원가입</h1>
            </div>
            	<h3 style="margin-left: 60px;">HELLO DOCTOR</h3>
           		<div style="width: 200px;height: 130px;margin-left: 123px;">
					<img alt="프로필" src="<%=request.getContextPath()%>/resources/img/profile.png" style="position: absolute; width: 147px;">
						<i class="fa fa-pencil fa-3x" style=" margin-left: 110px; margin-top: 100px; color: #1ab394;"></i>
           		 </div>


            <form class="m-t" role="form"  action="regist" method="post">
                <div class="form-group">
                	<div class="registdiv" style=" margin-left: 50px; padding-top: 8px;">이름</div>
                	<input type="text" class="form-control" required=""  name="dName" id="dName"
                	 placeholder="이름을 입력하세요"
					 onkeyup="this.value=this.value.trim();" >
                </div>
                 <div class="form-group">
            	    <div class="registdiv" style="margin-bottom: 21px; padding-top: 35px;">주민등록번호</div>
            	    <input type="text" class="form-control" style="width: 36%; float: left; margin-left: 10px;" name="firstRnum" id="firstRnum"
            	     required=""><p style="position: absolute;margin-left: 239px;margin-top: 63px;">─</p>
            	    <input type="password" class="form-control" style="width: 36%; float: left; margin-left: 24px;" name="secondRnum" id="secondRnum"
            	     required="">
                </div>
                 <div class="form-group">
                   <div class="registdiv" style="margin-left: 38px; margin-top: 8px;">아이디</div>
                   <input type="text" class="form-control" placeholder="아이디" required="" name="dId" id="dId" placeholder="13글자 영문자,숫자 조합"
                     onkeyup="this.value=this.value.replace(/[\ㄱ-ㅎㅏ-ㅣ가-힣]/g, &#39;&#39;);">
                   <button class="btn btn-primary" style=" position: absolute; float: right; margin-left: 223px; margin-top: 112px;" type="button"
                     		onclick="idCheck_go();">
                   <i class="fa fa-check"></i>&nbsp;중복확인</button>
                </div>
                 <div class="form-group">
                     <div class="registdiv" style="margin-left: 26px; margin-top: 37px;">비밀번호</div>
                     <input type="password" class="form-control passcheck" placeholder="비밀번호" required="" name="pwd" id="pwd"
                       placeholder="20글자 영문자,숫자,특수문자 조합">
                </div>
                 <div class="form-group">
                   <div class="registdiv" style="padding-top: 35px;">비밀번호 확인</div>
                   <input type="password" class="form-control passcheck" placeholder="비밀번호 확인" required="" id="pwdcheck">
                   <span id="alert-success" style="display: none; position: absolute;margin-top: 260px;margin-left: 7px;">비밀번호가 일치합니다.</span>
    				<span id="alert-danger" style="display: none; color: #d92742; font-weight: bold; position: absolute;margin-top: 260px;margin-left: 7px;">비밀번호가 일치하지 않습니다.</span>
                </div>

				<div class="">

					<div style="display: inline-block;width: 100%;">
						<div>
							<div class="registdiv"
								style="text-align: right; display: inline-block; margin-left: 54px; margin-top: 7px;">전공</div>
								<input type="text" placeholder="과를 입력해 주세요"
										class="typeahead_1 form-control"
										style="width: 78%;"
										id="diseasename">
<!-- 							<select name="authority" class="form-control" -->
<!-- 								style="font-size: 0.9em; width: 74px;"> -->
<!-- 								<option value="ROLE_USER">내과</option> -->
<!-- 								<option value="ROLE_MANAGER">외과</option> -->
<!-- 							</select> -->
						</div>

<%-- 						<select name="authority" class="form-control" onclick="<%=request.getContextPath()%>/regist/major" --%>
<!-- 							style="font-size: 0.9em; display: inline-block; width: 111px;" > -->
<!-- 							<option value="ROLE_USER">호흡기 내과</option> -->
<!-- 							<option value="ROLE_MANAGER">소화기 내과</option> -->
<!-- 							<option value="ROLE_ADMIN">감염 내과</option> -->
<!-- 							<option value="ROLE_ADMIN">알레르기 내과</option> -->
<!-- 						</select> -->
<!-- 						<button class="btn btn-primary " type="button" -->
<!-- 							style="display: inline-block; margin-left: 3px; width: 215px; height: 34px;"> -->
<!-- 							<i class="fa fa-check"></i>&nbsp;세부전공 등록 -->
<!-- 						</button> -->
					</div>



				</div>


				<div class="form-group">
                    <div class="registdiv" style="padding-top: 7px; margin-left: 30px;">전화번호</div>
                    <input type="password" class="form-control" placeholder="전화번호" required="" name="phone" id="phone">
                    <button class="btn btn-primary " name="phonebtn" type="button" style="position: absolute;margin-left: 220px;margin-top: 1px;"
                            onclick="OpenWindow('<%=request.getContextPath()%>/regist/phonecheck', 'PopupWin',400,400);">
                                             <i class="fa fa-check"></i>&nbsp;인증요청</button>

                </div>
                 <div class="form-group">
                     <div class="registdiv" style="padding-top: 36px; margin-left: 42px;">이메일</div>
                     <input type="email" class="form-control"placeholder="example@naver.com" required=""
                             name="email"  id="email"     >

                </div>
                 <div class="form-group">
                     <div class="registdiv" style="padding-top: 36px; margin-left: 42px;">OTP</div>
                     <input type="text" class="form-control"placeholder="http://chart.apis...." required=""
                             name="otp"  id="otp"  "  >
                	 <button class="btn btn-primary " type="button" style="position: absolute;margin-left: 221px;margin-top: 97px;" name="otpbtn"
                	         id="otpbtn" onclick="otp_go();">
                                             <i class="fa fa-check"></i>&nbsp;OTP생성</button>

                     <button class="btn btn-primary " type="button" style="position: absolute;margin-left: 244px;margin-top: 97px;
                          border: 2px solid #0ea6d7; background-color: #0ea6d7;  visibility: hidden;"
                          name="otpcopybtn" id="otpcopybtn" >
                                             <i class="fa fa-external-link"></i>&nbsp;이동</button>
                </div>

                  <div class="form-group">
                     <div class="registdiv" style="padding-top: 36px; margin-left: 42px;">KEY</div>
                     <input type="text" class="form-control"placeholder="ABCDEF" required=""
                             name="otpkey"  id="otpkey"  >
                </div>



                <button type="button" class="btn btn-primary block full-width m-b"  onclick="regist_go();">Register</button>

                <a class="btn btn-sm btn-white btn-block" href="login.html">Login</a>
            </form>
        </div>
    </div>

   	<button onclick="OpenWindow('<%=request.getContextPath()%>/regist/phonecheck', 'PopupWin',400,400);">비밀번호 변경</button>
    <!-- Mainly scripts -->
    <script src="<%=request.getContextPath()%>/resources/js/jquery-3.1.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/popper.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/bootstrap.js"></script>
    <!-- iCheck -->
    <script src="<%=request.getContextPath()%>/resources/js/plugins/iCheck/icheck.min.js"></script>
<script
		src="<%=request.getContextPath()%>/resources/js/plugins/typehead/bootstrap3-typeahead.min.js"></script>
    <!-- openWindow -->
    <script src="<%=request.getContextPath()%>/resources/js/common.js"></script>


<script>
 $(document).ready(function(){
     $('.i-checks').iCheck({
         checkboxClass: 'icheckbox_square-green',
         radioClass: 'iradio_square-green',
     });
 });
</script>

<script>
var checkedID = "";
function idCheck_go(){
	//alert('id check btn click');

	var input_ID = $('input[name="dId"]');

	if(!input_ID.val()){
		alert("아이디를 입력하시오");
		input_ID.focus();
		return;
	}

	$.ajax({
		url : "<%=request.getContextPath()%>/doctor/idCheck.do?dId=" + input_ID.val().trim(),
		method : "get",
		success : function(result){
			if(result.toUpperCase() == "DUPLICATED"){
				alert("중복된 아이디 입니다.");
				$('input[name="dId"]').focus();
			}else{
				alert("사용가능한 아이디 입니다.");
				checkedID = input_ID.val().trim();
				$('input[name="dId"]').val(input_ID.val().trim());
			}
		},
		error : function(error){
			alert("시스템 장애로 가입이 불가합니다");
		}
	})
}

//비밀번호 확인
$('.passcheck').focusout(function () {
    var pwd1 = $("#pwd").val();
    var pwd2 = $("#pwdcheck").val();

    if ( pwd1 != '' && pwd2 == '' ) {
        null;
    } else if (pwd1 != "" || pwd2 != "") {
        if (pwd1 == pwd2) {
            $("#alert-success").css('display', 'inline-block');
            $("#alert-danger").css('display', 'none');
        } else {
            alert("비밀번호가 일치하지 않습니다. 비밀번호를 재확인해주세요.");
            $("#alert-success").css('display', 'none');
            $("#alert-danger").css('display', 'inline-block');
        }
    }
});

// 전공 자동완성
$('.typeahead_1').typeahead({
	 autoSelect: true,
    minLength: 2,
    delay: 0,
	source : function(word, process) { //source: 입력시 보일 목록
		var text = {"word": word};
	     $.ajax({
	           url :"<%=request.getContextPath()%>/regist/major"
	         , type : "POST"
	         , dataType: "JSON"
	         , data : 	JSON.stringify(text)// 검색 키워드
	         , contentType : 'application/json'
	         , success : function(response){ 	// 성공
	        	return process(response);
	         }
	         ,error : function(){ //실패
	             alert("자동완성 실패");
	         }
	     });
	 }

});
// var num = 60 * 3;
// var myVar;   
// function time(){
// 	   myVar = setInterval(alertFunc, 1000);     
// 	}   
//     time();
// 	function alertFunc() {
// 		var min = num / 60;
// 		    min = Math.floor(min);
// 		var sec = num - (60 * min);
// 		      console.log(min)
// 		      console.log(sec)  
// 	    var $input = $('.input').val(min + '분' + sec + '초'); 

// 	   if(num == 0){
// 		   clearInterval(myVar)
// 	   }
// 	   num--;

// 	}



function otp_go(){

	$.ajax({
		type:"POST",
		url:"<%=request.getContextPath()%>/otp/",
		success: function(res){
// 			alert("res"+res.url);
			// OtpController에서 QR 주소를 가져옴
			$('input[name=otp]').attr('value',res.url);
			$('button[name=otpbtn]').css('visibility','hidden');
			$('button[name=otpcopybtn]').css('visibility','visible').attr('onclick', 'OpenWindow('+"'"+res.url+"'"+')');
			$('input[name=otpkey]').attr('value',res.encodedKey);

		},
		error: function(xhr){
			alert("오류:"+xhr);
		}
	})

}

function phone_go(){
	$.ajax({
		type:"POST",
		url:"<%=request.getContextPath()%>/otp/",
		success: function(res){
// 			alert("res"+res.url);
			// OtpController에서 QR 주소를 가져옴
			$('button[name=phonebtn]').css('visibility','hidden');
			$('button[name=phonecheckbtn]').css('visibility','visible');

		},
		error: function(xhr){
			alert("오류:"+xhr);
		}
	})


}


function regist_go(){
	//alert("regist btn click");


	if(!$('input[name="dId"]').val()){
		alert("아이디는 필수입니다.")
		return;
	}

	if($('input[name="dId"]').val()!= checkedID){
		alert("아이디는 중복 확인이 필요합니다.")
		return;
	}

	if(!$('input[name="pwd"]').val()){
		alert("패스워드는 필수입니다.")
		return;
	}

	if(!$('input[name="name"]').val()){
		alert("이름은 필수입니다.")
		return;
	}

	if(!$('input[name="registnum"]').val()){
		alert("주민등록번호는 필수입니다.")
		return;
	}

	if(!$('input[name="email"]').val()){
		alert("이메일은 필수입니다.")
		return;
	}

	var form = $('form[role="form"]');
	form.attr({
		"method" : "post",
		"action" : "regist.do"
	})
	form.submit();
}
</script>


</body>

</html>
