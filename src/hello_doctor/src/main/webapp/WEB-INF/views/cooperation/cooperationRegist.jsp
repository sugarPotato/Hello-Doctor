<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>협진요청</title>
<link href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/resources/font-awesome/css/font-awesome.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/animate.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/css/style.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/css/plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/css/plugins/summernote/summernote-bs4.css" rel="stylesheet">
<style>
.form-text {
	border: 1px solid lightgray;
	border-radius: 10px;
	padding: 8px;
	display: block;
	height: 250px;
	overflow: auto;
	padding-left: 20px;
}

.ibox-title {
	text-align: center;
	padding: 10px;
}

.buttons {
	text-align: center;
}

.hr-line-dashed {
	margin: 5px;
}

.ibox-content {
	padding-left: 70px;
}

.form-group {
	margin-bottom: -1rem;
}

.doctors {
	background-color: #FCF8E8;
	border-radius: 10px;
	padding: 8px;
	display: block;
	height: 121px;
	overflow: auto;
}

#tab ul {
	overflow-y: hidden;
	white-space: nowrap;
	overflow-x: auto;
	margin-left: -10px;
	padding: 10px 10px;
	width: 400px;
	height: 115px;
}
.btn-success{
	margin-left: 18px;

}
#tab ul li {
	display: inline-block;
	padding: 10px 10px;
	margin-right: 10px;
}

.doctors::-webkit-scrollbar {
	width: 10px;
}

.doctors::-webkit-scrollbar-thumb {
	background-color: #FF8C25;
	border-radius: 10px;
	background-clip: padding-box;
	border: 2px solid transparent;
}

.doctors::-webkit-scrollbar-track {
	background-color: #e0e0e0;;
	border-radius: 10px;
	box-shadow: inset 0px 0px 5px white;
}
.textarea{
height: 200px;
}
.diseaseName{
	width:180px;
	text-align: center;
}
#coDoctor{
	font-size: 20px;
	font-weight: bold;
}
#pastReco{
font-size: 20px;
font-weight: bold;
margin-left : 200px;
}
.overflow{
	display: block;
	height: 140px;
	overflow: auto;
}
th{
text-align: center;
}
</style>
<script type="text/javascript">
if('${result}' == 'success'){
 window.opener.coSuccess();
 window.close();

}
if('${result}' == 'fail'){
	 window.opener.coFail();
	 window.close();

}

</script>
</head>

<body style="width: 900px;" class="light-skin">

	<div class="ibox ">
		<div class="ibox-title">
			<h3 style="padding-left: 80px;">
				협진 요청
				<img alt="중요도" src="<%=request.getContextPath()%>/resources/img/siren.png" style="width: 20px; height: 20px;">
			</h3>
				<span style="margin-left: 570px; width: 208px; margin-top: -37px; position: absolute; right: 20px;">
					<button class="btn btn-primary dim" type="button" id="regist">협진 생성</button>

					<button class="btn btn-warning dim" type="button" onclick="windowclose()">생성 취소</button>
				</span>

		</div>
		<div class="ibox-content">
		<form action="regist" method="post" id="cooperationRegist">

			<div class="form-group row">
				<label style="font-weight: bold; font-size: 1.1em;" class="col-sm-2 col-form-label">환자명</label>
				<h4>${patientinfo.pName}</h4>
			</div>




			<hr>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">주상병</label>
				<h4 id="maindisease"></h4>
			</div>
			<br>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">부상병</label>
				<h4 id="subdisease"></h4>
			</div>
			<hr>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">공개여부</label>

				<select name="coRelease">
						<option value="Y">공개</option>
						<option value="N">비공개</option>
				</select>


			</div>



			<br>
			<hr>

			<br>


				<label >주치의 소견</label> <br>
				<br>
				<textarea class="textarea summernote" name="coOpinion" id="content" placeholder="1000자 내외로 작성하세요." style="display: none;">
										</textarea>

			<br>
			<hr>




			<div class="form-group row">
				<span id="coDoctor">&emsp;&nbsp;협진 요청 의료진</span>
				<button class="btn btn-success " type="button" onclick="window.open('doctorInvite.do','','width=1100, height=1020, left=500, top=100');"><i class="fa fa-plus-square" ></i>&nbsp;&nbsp;<span class="bold">의료진 등록</span></button>

				<span id="pastReco">과거 진료 내역</span>
			</div>
			<br>


			<div class="doctors" id="tab" style="width: 320px; float: left; overflow-y: hidden; display: inline-block; height: 125px; margin-right: 40px; margin-top: 10px;">
			<input type="hidden" id="addDoctors" value="">
				<ul id="simpleProfile">


				</ul>

			</div>
			<div class="ibox " style="display: inline;">

				<table class="table table-hover overflow" style="width: 55%;">
					<thead>
					<tr>
					<th>진료일</th>
					<th>주상병</th>
					<th>주치의(전공)</th>
					</tr>

					</thead>
					<c:forEach items="${pastreco}" var="i">
								<tr>
									<td class="recordtablelist" onclick="pastchart('${i.mNo}')">${i.mDate}</td>
								<td class="diseaseName">${i.dName }</td>
								<td>${i.doName}(${i.maName})</td>
								</tr>

					</c:forEach>
				</table>


			</div>

			<div id="formdiv" style="display: none;">
			<input type="hidden" value="${patientinfo.pNo}" name="pNo">
			<input type="hidden" id="mainD" name="coDisease">

			</div>
			</form>
		</div>



	</div>
	<!-- SUMMERNOTE -->
	<script src="https://cdn.jsdelivr.net/npm/handlebars@latest/dist/handlebars.js"></script>
   <script src="<%=request.getContextPath()%>/resources/js/jquery-3.1.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/popper.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/bootstrap.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/plugins/summernote/summernote-bs4.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/plugins/datapicker/bootstrap-datepicker.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>



<script type="text/x-handlebars-template" id="coWorker">

	{{#each.}}

	<li>
						<div style="width: 70px; height: 50px; float: left; text-align: center;">
							<img class="rounded-circle"src="getPic?dPic={{dPic}}" style="width: 40px; height: 40px;">
							<h5>
								{{dName}} <br>{{maName}}
							</h5>
							<input type="hiddne" value="{{dId}}" name="doId" >
						</div>
					</li>
 {{/each}}
	</script>


	<script>
  	function request_deny(){
			window.open("<%=request.getContextPath()%>/cooperation/request_deny.do", "","width=600, height=400, left=500, top=300");
		}
  	</script>
	<script>
	function addDoctor(){
		temp = $('#addDoctors').val();
		ret = temp.split(',');
		console.log(ret)
		text = [];
		for(let i=0; i< ret.length; i++) {
			text.push(ret[i]);
		}
		 $.ajax({
	           url :"<%=request.getContextPath()%>/doctor/simpleProfile2",
				type : "POST",
				dataType : "JSON",
				data : JSON.stringify(text)// 검색 키워드
				,
				contentType : 'application/json',
				success : function(data) { // 성공
					var template= Handlebars.compile($('#coWorker').html());
					   var html = template(data);
					   $('#simpleProfile').html(html);
				}
			})
	}
        window.onload = function() {
        	test =   window.opener.$('#diseaseresult');

        	selectbox= test.find('.selectbox');
        	length = selectbox.length;
			subresult = "";
        	for(let i=0; i<length; i++){
        		if(selectbox.eq(i).val() == "주상병"){
				$('#mainD').val(test.find('tr').eq(i).find('td').eq(0).text());
				$('#maindisease').text(test.find('tr').eq(i).find('td').eq(0).text());

        		}else if(selectbox.eq(i).val() == "부상병"){
        			subD = "<input type='hidden' value='"+test.find('tr').eq(i).find('td').eq(0).text()+"' name='subDName'>";
        			$('#formdiv').append(subD);
        			subresult += test.find('tr').eq(i).find('td').eq(0).text() + " | ";

        		}
        	}
        			$('#subdisease').text(subresult);
        	summernote_go($('.summernote'), '<%=request.getContextPath()%>');
		}

		function regist_go() {
			var form = document.registForm;
			if (form.title.value == "") {
				alert("제목은 필수입니다.");
				return;
			}

			form.submit();

		}


		$('#regist').on('click', function(){

			$('#cooperationRegist').submit();
		})

		function windowclose(){

		}

	</script>
</body>
</html>