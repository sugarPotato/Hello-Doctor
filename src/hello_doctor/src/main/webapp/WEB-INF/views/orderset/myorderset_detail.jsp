<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="<%=request.getContextPath()%>/resources/css/plugins/summernote/summernote-bs4.css"
	rel="stylesheet">
<title>Insert title here</title>
<style>

.ibox-title {
	padding: 10px 5px 0px 10px;
}
.note-editor.note-frame .note-editing-area .note-editable {
	width: 866px;
}
.displayinlineblock {
	display: inline-block;
}
</style>
<style>
.col-md-12 {
	padding: 10px;
	height: 200px;
}

.row {
	margin-bottom: 10px;
	margin-top: 10px;
}

tr {
	text-align: center;
}

.col-8 {
	max-width: 100%;
}

.contact-box {
	padding: 10px;
	color: black;
	opacity: 40%;
	height: 300px;
	border-radius: 10px;
	padding-bottom: 30px;
	width: 23.5%;
	margin-left: 9px;
	margin-right: 6px;
	opacity: 80%;
}

.list-group {
	font-size: 1.1em;
}

button.dim {
	float: right;
	margin-bottom: 5px !important;
}

.displayinlineblock {
	display: inline-block;
}

.datestyle {
	width: 90px;
	padding: 3px;
	text-align: center;
}
</style>
</head>
<body>

	<div class="col-lg-12" style="margin-top: 20px;">
		<div class="ibox">
			<div class="ibox-content"
				style="min-height: 377px; height: auto; border-radius: 0px;">
				
				<div style="margin-left: 20px; margin-top: 13px;">
					<h3 class="displayinlineblock">아토피</h3>
				<span> / 피부과</span>

				
					<div style="display: inline-block;float: right;margin-right: 7px;margin-top: -10px;">

						<button class="btn btn-outline btn-success" type="button" 
							id="regist" onclick="OpenWindow('myorderset_upload.do','My오더세트업로드',550,360);">
							<i class="fa fa-s1ign-out ">오더세트 업로드</i>
						</button>
						<div class="filebox" style="margin-left: 13px; display: inline; width: 2%;">
						<i class="fa fa-cog" data-toggle="dropdown" type="button" aria-expanded="false" style="font-size: 23px;vertical-align: -5px;"></i>
						<ul class="dropdown-menu" x-placement="bottom-start" style="position: absolute; top: 131px; left: 929px; will-change: top, left; min-width: 6rem;">
							<li><a onclick="subgoPage('/orderset/myorderset_modify.do')">수정</a></li>
							<li><a href="delete.do">삭제</a></li>
						</ul>
					</div>
					<div class="card-tools" style="display: inline-block;">
						<button type="button" style="border: none; background: none;" onclick="window.close();">
							<i class="fa fa-th-large" aria-hidden="true" style="color: #3E5476;font-size: 23px;vertical-align: -6px;"></i>
						</button>
					</div>
					</div>
				</div>

				<div class="displayinlineblock"
					style="margin-top: 28px; margin-left: 30px; width: 100%;">
					
					<div class="bg-primary p-xs b-r-xl datediv datestyle displayinlineblock">2022-06-27</div>
				<div class=" displayinlineblock eyelike" style="margin-left: 10px; font-size: 17px; vertical-align: -3px">
					<i class="fa fa-eye">20</i> <i class="fa fa-thumbs-o-up" style="margin-left: 10px; cursor: pointer;">10</i>
				</div>

				<form method="get" style="width: 100%;">

					<div class="form-group" style="margin-top: 26px;display: inline-block;width: 32%;">
						<div class="col-md-6" style="display: contents;">
							<label for="title">작성자</label>
						</div>
						<div class="col-md-6" style="display: contents;">
							<input class=" form-control" type="text" id="title" name="title" value="노혜지 / 흉부외과" style="display: inline; width: 71%; margin-left: 32px;" disabled="disabled">
						</div>
					</div>
					<div class="form-group" style="display: inline-block;width: 38%;">
						<div class="col-md-6" style="display: contents;">
							<label for="title">질병명</label>
						</div>
						<div class="col-md-6" style="display: contents;">
							<input class=" form-control" type="text" id="title" name="title" value="아토피" style="display: inline;width: 72%;margin-left: 13px;" disabled="disabled">
						</div>
					</div>
					<div class="form-group" style="display: inline-block;margin-left: -30px;width: 22%;">
						<div class="col-md-6" style="display: contents;">
							<label for="title">급여대상</label>
						</div>
						<div class="col-md-6" style="display: contents;">
							<input class=" form-control" type="text" id="title" name="title" value="소아" style="display: inline;width: 59%;margin-left: 12px;" disabled="disabled">
						</div>
					</div>



						<div class="form-group row">
							<label class="col-lg-1 col-form-label" style="width: 9%;">&nbsp;&nbsp;&nbsp;&nbsp;노티</label>
							<textarea class="textarea" name="content"  rows="20"
								style="padding: 15px; width: 79%; height: 130px; border-radius: 20px;"
								placeholder="1000자 내외로 작성하세요." disabled="disabled">가려움 호소</textarea>
						</div>

						<div class="hr-line-dashed"></div>

					<div class="form-group row">
						<h4>처방내역</h4>
						<div style="margin-left: 100px;" class="table-responsive">
							<table class="table " style="width: 84%;">
								<thead>
									<tr>

										<th></th>
										<th style="width: 280px;">추천 약명</th>
										<th>1회급여량</th>
										<th>하루 투약 횟수</th>
										<th>투약일</th>

									</tr>
								</thead>
								<tbody>
									<tr>
										<td></td>
										<td>소아용프리마란시럽</td>
										<td>1(mg)</td>
										<td>3</td>
										<td>3</td>

									</tr>
									<tr>
										<td><div class="icheckbox_square-green" style="position: relative;">
												<input type="checkbox" class="i-checks" name="input[]" style="position: absolute; opacity: 0;">
												<ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
											</div></td>
										<td>프로토픽연고</td>
										<td>1(회)</td>
										<td>3</td>
										<td>3</td>

									</tr>
									<tr>
										<td><div class="icheckbox_square-green" style="position: relative;">
												<input type="checkbox" class="i-checks" name="input[]" style="position: absolute; opacity: 0;">
												<ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
											</div></td>
										<td>소아용에포프림인질캡슐</td>
										<td>1(정)</td>
										<td>3</td>
										<td>3</td>

									</tr>

								</tbody>
							</table>
						</div>
					</div>


						<div class="hr-line-dashed"></div>
<h4 style="margin-bottom: 28px;">사용된 진료 내역</h4>

			
						<div style="" class="table-responsive">
							<table class="table " style="width: 90%;margin-left: 25px;text-align: center;">
								<thead>
									<tr>
										<th>환자명</th>
										<th>의료행위</th>
										<th>날짜</th>

									</tr>
								</thead>
								<tbody>
									<tr>
										<td>이정규(남)</td>
										<td>수술</td>
										<td>2022-07-13</td>
										<td><i style="margin-right: 6px; font-size: 1.2em;" class="fa fa-minus-circle"></i></td>

									</tr>
									<tr>
										<td>이정규(남)</td>
										<td>수술</td>
										<td>2022-07-13</td>
										<td><i style="margin-right: 6px; font-size: 1.2em;" class="fa fa-minus-circle"></i></td>

									</tr>
									<tr>
										<td>이정규(남)</td>
										<td>수술</td>
										<td>2022-07-13</td>
										<td><i style="margin-right: 6px; font-size: 1.2em;" class="fa fa-minus-circle"></i></td>

									</tr>

								</tbody>
							</table>
						</div>

						
						
						<div class="hr-line-dashed"></div>
						
						<div class="form-group row">
							<label class="col-lg-1 col-form-label" style="">&nbsp;&nbsp;&nbsp;&nbsp;결과</label>
							<textarea class="textarea" name="content" id="content" rows="20"
								style="padding: 15px; width: 77%; height: 130px; border-radius: 20px; margin-left: -2px;"
								placeholder="1000자 내외로 작성하세요." ></textarea>
							<button class="btn btn-outline btn-success dim" type="button"
								style="height: 54px; width: 8%; margin-top: 33px; margin-left: 20px;">결과 등록</button>
						</div>


                            </form>
                                </div>
</div>
</div>
                                </div>
                  
<div style="height: 100px;"></div>
	<!-- SUMMERNOTE -->
	<script
		src="<%=request.getContextPath()%>/resources/js/plugins/summernote/summernote-bs4.js"></script>
	
</body>
</html>