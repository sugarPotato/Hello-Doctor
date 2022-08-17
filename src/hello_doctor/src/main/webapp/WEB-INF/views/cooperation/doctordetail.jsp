<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>진료 등록</title>

<style>
p {
    margin-top: 0;
    margin-bottom: 0.3rem;
}
</style>

</head>
<body>
	<div class="card-header " style="margin-right: 0px; margin-left: 0px;" >
						<h4 class="col-md-8">의료진 상세보기</h4>



     			<div class="user-button">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <button type="button" class="btn btn-primary btn-sm btn-block"><i class="fa fa-wechat"></i> 1:1 채팅하기</button>
                                        </div>
                                        <div class="col-md-4">
                                            <button onclick="window.open('takeover.do','','width=800, height=555, left=500, top=100');return false;" type="button" style="background-color: #FF6B1A;color: white;"class="btn btn-default btn-sm btn-block"><i class="fa fa-handshake-o" aria-hidden="true"></i> 인수인계하기</button>
                                        </div>
                                        <div class="col-md-4">
                                        <button type="button" class="btn btn-default btn-sm btn-block" id="cancelBtn"
								onclick="window.close();">닫 기</button>
                                        </div>

                                    </div>
                                </div>







					</div>
<div class="row">



                            <div >


                            <img alt="프로필" src="<%=request.getContextPath()%>/resources/img/doctorchoi.jpg" style="width: 250px;height: 290px;text-align: left;border-radius: 23px;margin-left: 45px;margin-top: 52px;">

</div>


<div style="margin-left: 30px;margin-top: 30px;width: 420px;">
                                <h3><strong>최선미</strong></h3>
                                <p><i class="fa fa-map-marker"></i>
              <label><strong>교수실:</strong>&nbsp;&nbsp;</label>본원304호 <br>

                              </p>

                                <h5>
                                    About me

                                </h5>
                                <p>
                                <label><strong>전공:</strong>&nbsp;&nbsp;</label>호흡기내과 <br>
                               <label><strong>세부전공:</strong>&nbsp;&nbsp;</label> 폐질환, 폐이식<br>
                                <label><strong>연락처:</strong>&nbsp;&nbsp;</label> 010-2768-8228
                                </p>
                                <p style="font-weight: bold;">전체진료</p>
                                <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>의료행위</th>
                                    <th>날짜</th>

                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>수술</td>
                                    <td>2022-07-12</td>

                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>입원치료</td>
                                    <td>2022-07-11</td>

                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>외래</td>
                                    <td>2022-06-15</td>

                                </tr>
                                </tbody>
                            </table>

             </div>
<br>
</div>


</body>
</html>