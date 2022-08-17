<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"  ></script>
<script type="text/x-handlebars-template"  id="drug-list-template" >

<table id="durgTable" class="table" style="width: 90%;margin-left: 25px;text-align: center;">
		<thead>
			<tr>
				<th style="width: 280px;">추천약품명</th>
				<th>1회급여량</th>
				<th>하루 투약 횟수</th>
				<th>투약일</th>
			</tr>
	   </thead>
	   <tbody>

  {{#each .}}
	<tr>
		<td>{{cureName}}</td>
		<td>{{pQuantity}}</td>
		<td>{{pAday}}</td>
		<td>{{pDays}}</td>
		<td> <a id="append_a" onclick="apendtr(this)"
				<i style="margin-right: 6px; font-size: 1.2em;" class="fa fa-plus-circle"></i>
			 </a>
		</td>
    </tr>
  {{/each}}

	  </tbody>
</table>
</script>

<script>

if($('#myDrugList >tbody tr').length == 0 ){
 	$('#myDrugList >tbody').append("<tr id='deftr'><td colspan='4' style='color: gray;'>처방내역을 추가하세요.</td></tr>")

}




$('.typeahead_1').typeahead({
 autoSelect: true,
 minLength: 2,
 delay: 0,
source : function(word, process) { //source: 입력시 보일 목록
	var text = {"deKo": word};
     $.ajax({
           url :"<%=request.getContextPath()%>/medi/searchdisease"
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
$('.typeahead_2').typeahead({
 autoSelect: true,
minLength: 2,
delay: 0,
source : function(word, process) { //source: 입력시 보일 목록
	var text = {"meName": word};
     $.ajax({
           url :"<%=request.getContextPath()%>/medi/searchmedicine"
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



//regist
function drug_list(){
	var keyword = $('#keyword').val();
	var data = {
			"keyword":keyword
	}
	$.ajax({
		url:"<%=request.getContextPath()%>/orderset/drugList",
		type:'post',
		data:JSON.stringify(data),
		contentType:'application/json',
		success:function(data){
			var source = $('#drug-list-template').html();
			var template = Handlebars.compile(source);
			var html = template(data);
			$('#durgTable').remove();
			$('#drug_list').after(html);

			if($('#durgTable >tbody tr').length == 0 ){
				 $('#durgTable').append("<tr><td colspan='4' style='color: gray;'>해당 상병명에 관한 추천약품이 존재하지 않습니다.</td></tr>")

			}
		},
		error:function(error){
			alert('실패했습니다.');
			AjaxErrorSecurityRedirectHandler(error.status);
		}
	});
}

function drugcheck(rname){
	var mydrugs=$('#myDrugList >tbody').find("tr");


	for(var i=0; i < mydrugs.length ; i++){
		var mydname = mydrugs.eq(i).find("td").eq(0).text();
		console.log("mydname : " + mydname);
		if(mydname == rname){
			alert("이미 추가한 약품입니다.");
			return false;
		}

	}


}



function apendtr(a) {
	var rname = $(a).parents("tr").find("td").eq(0).text();
	var mydrugs=$('#myDrugList >tbody').find("tr");


	for(var i=0; i < mydrugs.length ; i++){
		var mydname = mydrugs.eq(i).find("td").eq(0).text();
		console.log("mydname : " + mydname);
		if(mydname == rname){
			alert("이미 추가한 약품입니다.");
			return false;
		}

	}




	var tds = $(a).parents("tr").find("td");
	var c=[];

	for(var i=0 ; i < tds.length - 1 ; i++){
		c[i] = tds.eq(i).text();
	}

	var deftr = document.getElementById("deftr");

	if(deftr!=null && deftr){
			deftr.remove();
		}

	$('#myDrugList >tbody')
			.append(
					"<tr id='append_tr'><td><input type='hidden' name='oDrug' value='"+c[0]+ "' >"
							+ c[0]
							+ "</td><td><input type='number' name='quantity' value='"+c[1]+ "' >"
							+ "</td><td><input type='number' name='dgAday' value='"+c[2]+ "' >"
							+ "</td><td><input type='number' name='dgDays' value='"+c[3]+ "' >"
							+ "</td><td onclick='removetr(this)'><a><i style='margin-right: 6px; font-size: 1.2em;' class='fa fa-minus-circle'></i></a></td></tr>")


}

function removetr(aa) {
	$(aa).parents("tr").remove();
	if($('#myDrugList >tbody tr').length == 0 ){
			 $('#myDrugList >tbody').append("<tr id='deftr'><td colspan='4' style='color: gray;'>처방내역을 추가하세요.</td></tr>")

		 }
}

function appendDrug(){
	   var meName = $(".typeahead_2").val();
		var mydrugs=$('#myDrugList >tbody').find("tr");


		for(var i=0; i < mydrugs.length ; i++){
			var mydname = mydrugs.eq(i).find("td").eq(0).text();
			console.log("mydname : " + mydname);
			if(mydname == meName){
				alert("이미 추가한 약품입니다.");
				return false;
			}

		}

		var deftr = document.getElementById("deftr");

		if(deftr!=null && deftr){
				deftr.remove();
			}

		$('#myDrugList >tbody')
				.append(
						"<tr id='append_tr'><td><input type='hidden' name='oDrug' value='"+meName+ "' >"
								+ meName
								+ "</td><td><input type='number' name='quantity' value='"+0+ "' >"
								+ "</td><td><input type='number' name='dgAday' value='"+0+ "' >"
								+ "</td><td><input type='number' name='dgDays' value='"+0+ "' >"
								+ "</td><td onclick='removetr(this)'><a><i style='margin-right: 6px; font-size: 1.2em;' class='fa fa-minus-circle'></i></a></td></tr>")


	}
</script>

