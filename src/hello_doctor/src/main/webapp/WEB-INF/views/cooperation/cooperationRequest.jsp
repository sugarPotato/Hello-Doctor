<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>협진요청</title>
<link href="css/plugins/summernote/summernote-bs4.css" rel="stylesheet">
<style>
.form-text{
border:1px solid lightgray;
border-radius: 10px;
 padding : 8px;
 display: block;
 height: 250px;
 overflow:auto;
 padding-left: 20px;
}

.ibox-title{
text-align:center;
padding:10px;

}

.buttons{
text-align:center;
}

.hr-line-dashed{
margin:5px;
}

.ibox-content{
padding-left:20px;
}
.form-group {
    margin-bottom: -1rem;
}
.doctors{
	background-color : #FCF8E8; 
	border-radius: 10px;
	padding : 8px;
 	display: block;
 	height: 100px;
 	overflow:auto;
}
.form-text_modal{
 border:1px solid lightgray;
 border-radius: 10px;
 display: block;
 height: 120px;
 overflow:auto;
 padding-left: 3px;
}



</style>
</head>

<body>
                    <div class="ibox ">
                        <div class="ibox-title">
                            <h3 style="padding-left: 100px;">노혜지 님의 협진요청입니다.<img alt="중요도" src="<%=request.getContextPath()%>/resources/img/siren.png" style="width:20px; height:20px;"><span style="float: right; font-size: 0.8em;">2022-07-04 16:57</span></h3>
                            <select class="form-control m-b" name="account" style="width:20%; float:right; " >수락
                                        <option>수락</option>
                                        <option>거절</option>
                                        <option>보류</option>
                             </select>
                             <button class="btn btn-outline btn-success  dim" type="button" style="width:60px; float:right;">확인</button>       
                        </div>
                        <div class="ibox-content" >

                                <div class="form-group row"><label class="col-sm-2 col-form-label">환자명</label>
                                	<h4>김민수</h4>                        
                                </div>
                               <hr>
								<div class="form-group row"><label class="col-sm-2 col-form-label">증상</label>
                                	<h4>급성폐렴</h4>                        
                                </div>
                                <hr>

                                <div class="form-group row"><label class="col-sm-3 col-form-label">주치의소견</label><br>
                                </div>
                                <br>
                                
                                
                                <div class="form-text" >										
									
									 <h4>안녕하세요. 급성폐렴환자입니다. 협진요청합니다.</h4>		
									<img alt="병" src="<%=request.getContextPath()%>/resources/img/lungs.jpg" style="width:200px; height:200px;">						
							
								</div>

                                <hr>

                                <div class="form-group row"><h4>&emsp;&nbsp;협진요청 받은 의료진</h4>
								</div>
								<br>
								

								<div class="doctors" style="width:640px;">
									<div style="width:70px; height:50px; float:left; text-align:center;">
									<img alt="프로필" src="<%=request.getContextPath()%>/resources/img/user.png" style="width:40px; height:40px;">
									<h5>강현수 <br>호흡기내과</h5>
									</div>
									&nbsp;
									 <div style="width:70px; height:50px; float:left; text-align:center;">
									<img alt="프로필" src="<%=request.getContextPath()%>/resources/img/user.png" style="width:40px; height:40px;">
									<h5>조현영 <br>호흡기내과</h5>
									</div>
									<div style="width:70px; height:50px; float:left; text-align:center;">
									<img alt="프로필" src="<%=request.getContextPath()%>/resources/img/user.png" style="width:40px; height:40px;">
									<h5>이의찬 <br>호흡기내과</h5>
									</div>
									&nbsp;
									 <div style="width:70px; height:50px; float:left; text-align:center;">
									<img alt="프로필" src="<%=request.getContextPath()%>/resources/img/user.png" style="width:40px; height:40px;">
									<h5>이의찬 <br>호흡기내과</h5>
									</div>
								</div>
											
                                </div>

                       </div>

	
</body>
</html>