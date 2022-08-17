<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="<%=request.getContextPath()%>/resources/css/plugins/summernote/summernote-bs4.css"
	rel="stylesheet">
<title>My 오더세트 수정</title>
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
</head>
<body>

	<div class="col-lg-12" style="margin-top: 20px;">
		<div class="ibox">
			<div class="ibox-content"
				style="min-height: 377px; height: auto; border-radius: 0px;">
				
				<div style="margin-left: 20px; margin-top: 13px;">
					<h3 class="displayinlineblock">My 오더세트 수정</h3>
					<div style="display: inline-block;float: right;margin-right: 7px;margin-top: -10px;">
						<div class="card-tools" style="display: inline-block;">
							<button id="modisw" type="button" style="border: none; background: none;">
								<i class="fa fa-check-square" aria-hidden="true" style="color: #3E5476;font-size: 28px;vertical-align: -5px;"></i>
							</button>
						</div>
						<div class="card-tools" style="display: inline-block;margin-left: -1px;">
							<button type="button" style="border: none; background: none;" onclick="window.close();">
								<i class="fa fa-reply" aria-hidden="true" style="color: #3E5476;font-size: 28px;vertical-align: -6px;"></i>
							</button>
						</div>
					</div>
				</div>

				<div class="displayinlineblock"
					style="margin-top: 28px; margin-left: 30px; width: 100%;">
					
					<form method="get">

	<div class="form-group" style="display: inline-block; width: 31%;">
							<div class="col-md-6" style="display: contents;">
								<label for="title">작성자</label>
							</div>
							<div class="col-md-6" style="display: contents;">
								<input class=" form-control" type="text" id="title" name="title"
									value="노혜지 / 흉부외과"
									style="display: inline; width: 71%; margin-left: 32px;"
									disabled="disabled">
							</div>
						</div>

						<div class="form-group" style="display: inline-block; width: 39%;">
							<div class="col-md-6" style="display: contents;">
								<label for="title">질병명</label>
							</div>
							<div class="col-md-6" style="display: contents;">
								<input class=" form-control" type="text" id="title" name="title"
									value="아토피"
									style="display: inline; width: 72%; margin-left: 25px;">
							</div>
						</div>

						<div class="form-group"
							style="display: inline-block; margin-left: -23px; width: 22%;">
							<div class="col-md-6" style="display: contents;">
								<label for="title">급여대상</label>
							</div>
							<div class="col-md-6" style="display: contents;">
								<select class="form-control m-b inputinfo" name="account"
									style="margin-left: 19px; display: inline-block; width: 60%;">
									<option>영유아</option>
									<option>소아</option>
									<option>성인</option>
									<option>고령자</option>
									<option>임산부</option>
								</select>
							</div>
						</div>

<div class="form-group row">
							<label class="col-lg-1 col-form-label"
								style="margin-right: 16px;">&nbsp;&nbsp;&nbsp;&nbsp;노티</label>
							<div class="form-group row">

								<textarea class="textarea" name="content" id="content" rows="20"
									placeholder="1000자 내외로 작성하세요." style="display: none;">
										</textarea>
							</div>
						</div>

					<div class="hr-line-dashed"></div>
						<h4 style="margin-bottom: 28px;">추천 약품 검색</h4>

						<div class="form-group row" style="margin-left: 27px;">
							<input style="width: 31%; font-size: 14px; border-radius: 5px;"
								type="text" placeholder="병명을 입력하세요" class="form-control"><span><i
								style="font-size: 1.5em; padding-top: 6px; padding-left: 10px;"
								class="fa fa-search"></i></span>
						</div>
				<div style="" class="table-responsive">
							<table class="table " style="width: 90%;margin-left: 25px;text-align: center;">
								<thead>
									<tr>
										<th style="width: 280px;">약품명</th>
										<th>1회급여량</th>
										<th>하루 투약 횟수</th>
										<th>투약일</th>

									</tr>
								</thead>
								<tbody>
									<tr>
										<td>소아용프리마란시럽</td>
										<td>1(mg)</td>
										<td>3</td>
										<td>3</td>
										<td><i style="margin-right: 6px; font-size: 1.2em;" class="fa fa-plus-circle"></i></td>

									</tr>
									<tr>
										<td>프로토픽연고</td>
										<td>1(회)</td>
										<td>3</td>
										<td>3</td>
										<td><i style="margin-right: 6px; font-size: 1.2em;" class="fa fa-plus-circle"></i></td>

									</tr>
									<tr>
										<td>소아용에포프림인질캡슐</td>
										<td>1(정)</td>
										<td>3</td>
										<td>3</td>
										<td><i style="margin-right: 6px; font-size: 1.2em;" class="fa fa-plus-circle"></i></td>

									</tr>

								</tbody>
							</table>
						</div>
 <div class="hr-line-dashed"></div>
						<h4 style="margin-bottom: 28px;">처방내역</h4>

						<div class="form-group row" style="margin-left: 27px;">
							<input style="width: 31%; font-size: 14px; border-radius: 5px;"
								type="text" placeholder="약품명을 입력하세요" class="form-control">
								<span>
								<i
								style="font-size: 1.5em; padding-top: 6px; padding-left: 10px;"
								class="fa fa-search"></i>&nbsp;
								<i
								style="font-size: 1.7em; padding-top: 6px; padding-left: 10px; vertical-align: -2px;"
								class="fa fa-plus-square"></i>
							</span>
						</div>

						<div style="" class="table-responsive">
							<table class="table " style="width: 90%;margin-left: 25px;text-align: center;">
								<thead>
									<tr>
										<th style="width: 280px;">약품명</th>
										<th>1회급여량</th>
										<th>하루 투약 횟수</th>
										<th>투약일</th>

									</tr>
								</thead>
								<tbody>
									<tr>
										<td>소아용프리마란시럽</td>
										<td>1(mg)</td>
										<td>3</td>
										<td>3</td>
										<td><i style="margin-right: 6px; font-size: 1.2em;" class="fa fa-minus-circle"></i></td>

									</tr>
									<tr>
										<td>프로토픽연고</td>
										<td>1(회)</td>
										<td>3</td>
										<td>3</td>
										<td><i style="margin-right: 6px; font-size: 1.2em;" class="fa fa-minus-circle"></i></td>

									</tr>
									<tr>
										<td>소아용에포프림인질캡슐</td>
										<td>1(정)</td>
										<td>3</td>
										<td>3</td>
										<td><i style="margin-right: 6px; font-size: 1.2em;" class="fa fa-minus-circle"></i></td>

									</tr>

								</tbody>
							</table>
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
	<script>
        $(document).ready(function(){

            $('.summernote').summernote();

       });

        window.onload = function() {
        	summernote_go($('#content'), '<%=request.getContextPath()%>');
		}

		function regist_go() {
			var form = document.registForm;
			if (form.title.value == "") {
				alert("제목은 필수입니다.");
				return;
			}
			form.submit();
		}
	</script>
</body>
</html>