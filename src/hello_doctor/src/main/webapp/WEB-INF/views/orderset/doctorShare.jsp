<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">



<title>의료진 조직도</title>



<link
	href="<%=request.getContextPath()%>/resources/css/plugins/jsTree/style.min.css"
	rel="stylesheet">

<link href="<%=request.getContextPath()%>/resources/css/chart.css"
	rel="stylesheet">

<style>
.jstree-open>.jstree-anchor>.fa-folder:before {
	content: "\f07c";
}

.jstree-default .jstree-icon.none {
	width: 0;
}

#detailProfile2{
		height: 300px;

}
#detailProfilePic{
margin-left: 70px;

}

#detailtext{
 padding-left : 40px;
}
.fadeInRight{
	padding:0;
}
.closebutton {
	font-size: 20px;
	color: red;
}
</style>

</head>

<body>



	<div id="wrapper">


		<div id="page-wrapper" class="gray-bg" style="width: 1100px;">
			<div class="header">
				<div class="displayinline padding10">
					<h3>의료진 조직도</h3>
				</div>
				<div class="displayinline floatright padding10">
					<button class="btn btn-white btn-sm " type="submit"
						onclick="window.close();">
						닫기 <i class="fa fa-window-close-o" aria-hidden="true"></i>
					</button>
				</div>
				<hr style="margin-top: -5px;">
			</div>

			<div class="wrapper wrapper-content animated fadeInRight">

				<div class="row">
					<div class="col-lg-4" style="max-width: 25%;">
						<div class="ibox ">

							<div class="ibox-content cartscroll"
								style="width: 251px; height:470px;">

								<div id="jstree1">
									<ul>
										<li class="jstree-open">진료과
											<ul>

												<c:forEach items="${major}" var="i">
													<li class="jstree-open" onclick="searchDoctor('${i.maNo}')">${i.maName}</li>
												</c:forEach>

											</ul>
										</li>

									</ul>
								</div>

							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="ibox ">
							<div class="ibox-content  cartscroll"
								id="majorProfileList" style="width: 521px; height:470px;"></div>
						</div>
					</div>

					<div class="col-lg-3">
						<div class="contact-box center-version">

							<div id="detailProfile2"></div>
							<h4 class="m-t-md textcenter">나와 협진한 내역</h4>
							<ol class="marginleft10" style="min-height: 50px;" id="withme">

							</ol>

							<div class="contact-box-footer">
								<div class="m-t-xs btn-group">
									<a class="btn btn-xs btn-white"><i
										class="fa fa-wechat"></i> Chat </a> <a
										class="btn btn-xs btn-white" id="addDoctor"><i class="fa fa-user-plus"></i>
										추가하기</a>
								</div>
							</div>

						</div>
					</div>


				</div>
				<div class="displayinline padding10">
					<h3 style="display: inline;">오더세트 공유 의료진</h3>
					<a style="position: absolute; right: 15px;" id="addDone"
						class="btn btn-xs btn-white"><i
						class="fa fa-save"></i> 공유 완료 </a>

				</div>

				<hr style="margin-top: -5px;">

				<div class="ibox">
					<div class="ibox-content " style="height: 178px;">
						<h3></h3>
						<div class="user-friends ">
							<div class="box">
								<div id="tab">
									<ul id="coWorker">


									</ul>
								</div>
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
	<script src="<%=request.getContextPath()%>/resources/js/popper.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/bootstrap.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/plugins/metisMenu/jquery.metisMenu.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

	<!-- Custom and plugin javascript -->
	<script src="<%=request.getContextPath()%>/resources/js/inspinia.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/plugins/pace/pace.min.js"></script>

	<script
		src="<%=request.getContextPath()%>/resources/js/plugins/jsTree/jstree.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/handlebars@latest/dist/handlebars.js"></script>


	<script>
		$(document).ready(function() {

			$('#jstree1').jstree({
				'core' : {
					'check_callback' : true
				},
				'plugins' : [ 'types', 'dnd' ],
				'types' : {
					'default' : {
						'icon' : 'fa fa-folder'
					},
					'html' : {
						'icon' : 'fa fa-file-code-o'
					},
					'svg' : {
						'icon' : 'fa fa-file-picture-o'
					},
					'css' : {
						'icon' : 'fa fa-file-code-o'
					},
					'img' : {
						'icon' : 'fa fa-file-image-o'
					},
					'js' : {
						'icon' : 'fa fa-file-text-o'
					}

				}
			});

			$('#using_json').jstree({
				'core' : {
					'data' : [ 'Empty Folder', {
						'text' : 'Resources',
						'state' : {
							'opened' : true
						},
						'children' : [ {
							'text' : 'css',
							'children' : [ {
								'text' : 'animate.css',
								'icon' : 'none'
							}, {
								'text' : 'bootstrap.css',
								'icon' : 'none'
							}, {
								'text' : 'main.css',
								'icon' : 'none'
							}, {
								'text' : 'style.css',
								'icon' : 'none'
							} ],
							'state' : {
								'opened' : true
							}
						}, {
							'text' : 'js',
							'children' : [ {
								'text' : 'bootstrap.js',
								'icon' : 'none'
							}, {
								'text' : 'inspinia.min.js',
								'icon' : 'none'
							}, {
								'text' : 'jquery.min.js',
								'icon' : 'none'
							}, {
								'text' : 'jsTree.min.js',
								'icon' : 'none'
							}, {
								'text' : 'custom.min.js',
								'icon' : 'none'
							} ],
							'state' : {
								'opened' : true
							}
						}, {
							'text' : 'html',
							'children' : [ {
								'text' : 'layout.html',
								'icon' : 'none'
							}, {
								'text' : 'navigation.html',
								'icon' : 'none'
							}, {
								'text' : 'navbar.html',
								'icon' : 'none'
							}, {
								'text' : 'footer.html',
								'icon' : 'none'
							}, {
								'text' : 'sidebar.html',
								'icon' : 'none'
							} ],
							'state' : {
								'opened' : true
							}
						} ]
					}, 'Fonts', 'Images', 'Scripts', 'Templates', ]
				}
			});

		});
	</script>

	<script type="text/x-handlebars-template" id="majorProfile">

{{#each.}}
	<div class="col-md-12" onclick="detailProfile('{{dId}}')">

	<div class="profile-image">
		<img src='<%=request.getContextPath()%>/cooperation/getPic?dPic={{dPic}}' class="shiftleft rounded-circle circle-border m-b-md" alt="profile">
	</div>
	<div class="profile-info padding10">
		<div class="">
			<div>
				<h4>{{maName}}</h4>
				<h3 class="no-margins font-bold padding3">{{dName}}</h3>
				<span class="label margintop5 " style="color: grey;">세부전공</span>
				<p class="fontsize11 padding3">{{smName}}</p>
			</div>
		</div>
	</div>
</div>
 {{/each}}
	</script>
	<script type="text/x-handlebars-template" id="detailProfile">

<img alt="image" id="detailProfilePic"
								class="rounded-circle widhei200 shiftleft"
								style="width: 100px; height: 100px;"
								src="<%=request.getContextPath()%>/cooperation/getPic?dPic={{dPic}}">
								<p class="fontsize11 font-bold textcenter">
									<span><i class="fa fa-circle text-navy color{{status}} "></i>{{statusResult}}</span>

								</p>
								<div id="detailtext">
								<h3 class="m-b-xs">
									<strong>{{dName}}</strong>
								</h3>

								<div class="font-bold">[{{maName}}]</div> <br> <span
								class="font-bold">세부전공</span>
								<div>{{smName}}</div>
								<address class="m-t-md">
									<strong>연락처</strong><br>{{tel}}<br>
								<input type="hidden" value="{{dId}}" id="hiddenId">
								</address>
								</div>
	</script>

	<script type="text/x-handlebars-template" id="coList">

{{#each.}}
<li>{{pName}}/{{coDisease}}/{{resultDate}}</li>

 {{/each}}
	</script>
	<script type="text/x-handlebars-template" id="simpleProfile">

<li class="removeProfile">
											<div
												style="width: 70px; height: 50px; float: left; text-align: center; margin: 0 0 0 0;">
												<a><img alt="image" class="rounded-circle " style="margin: 0 0 0 0;"
													src="<%=request.getContextPath()%>/cooperation/getPic?dPic={{dPic}}">

				<button type="button" class="close pic1" aria-label="Close" onclick="proFileremove(this)"><span aria-hidden="true" class="closebutton">×</span></button>
												</a>
												<h5>
													<strong>{{dName}}</strong> <br>{{maName}}
													<input type="hidden" class="addDoctors" value="{{dId}}">
												</h5>
											</div>
										</li>
	</script>



	<script type="text/javascript">
	function searchDoctor(maNo){
		var text = {"maNo" : maNo};

		 $.ajax({
	           url :"<%=request.getContextPath()%>/doctor/majorDoctors"
	         , type : "POST"
	         , dataType: "JSON"
	         , data : 	JSON.stringify(text)// 검색 키워드
	         , contentType : 'application/json'
	         , success : function(data){ 	// 성공
	        		var template= Handlebars.compile($('#majorProfile').html());
					   var html = template(data);
					   $('#majorProfileList').html(html);
	         }



	})
	}
	function detailProfile(dId){
		var text = {"dId" : dId};

		 $.ajax({
	           url :"<%=request.getContextPath()%>/doctor/detailProfile"
	         , type : "POST"
	         , dataType: "JSON"
	         , data : 	JSON.stringify(text)// 검색 키워드
	         , contentType : 'application/json'
	         , success : function(data){ 	// 성공
	        	 	console.log(data)
	        	 	detailDoctor =   data.detailDoctor;
	        		var template= Handlebars.compile($('#detailProfile').html());
					   var html = template(detailDoctor);
					   $('#detailProfile2').html(html);
					coDoctor = data.coDoctor;
	        		var template= Handlebars.compile($('#coList').html());
					   var html = template(coDoctor);
					   $('#withme').html(html);
	         }
	})
	}
	$(document).on('click', '#addDoctor', function(){
		dId = $('#hiddenId').val();
		text = {"dId" : dId};
		 $.ajax({
	           url :"<%=request.getContextPath()%>/doctor/simpleProfile",
				type : "POST",
				dataType : "JSON",
				data : JSON.stringify(text)// 검색 키워드
				,
				contentType : 'application/json',
				success : function(data) { // 성공
					printData(data, $('#coWorker'), $('#simpleProfile'))
				}
			})

		})


		$(document).on('click', '#addDone', function(){

			  var ret = []
			  $('.addDoctors').each(function(index,item){
			    ret.push({"dId" :$(this).val()})
			  });
			  var text = {"oNo" : '${param.oNo}',
							"list" : ret
			  }
			  $.ajax({
		           url :"<%=request.getContextPath()%>/orderset/doctorShare"
		         , type : "POST"
		         , data : 	JSON.stringify(text)// 검색 키워드
		         , contentType : 'application/json'
		         , success : function(data){ 	// 성공
		        	 window.opener.shareSuccess();
					window.close();
		         }
			  })
		})

		function proFileremove(e){
		$(e).parents('.removeProfile').remove();
	}
	</script>

</body>

</html>
