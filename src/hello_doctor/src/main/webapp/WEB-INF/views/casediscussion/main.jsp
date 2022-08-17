<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="bottomList" value="${dataMap.bottomList }"/>
<c:set var="major" value="${dataMap.major }"/>
<c:set var="top" value="${dataMap.top }"/>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>

    <link href="<%=request.getContextPath()%>/resources/css/plugins/slick/slick.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/css/plugins/slick/slick-theme.css" rel="stylesheet">


<style>
.col-8 {
	max-width: 100%;
}

.img-responsive {
	width: 20px;
	height: 20px;
	object-fit: cover;
}

#pagediv {
	position: absolute;
	margin: -150px 0px 0px -200px;
	top: 108%;
	left: 57%;
	padding: 3px;
}

.contact-box {
	border-radius: 5%;
}

.slick-initialized .slick-slide {
	margin-right: 2%;
}

.slick-slide {
	margin: 0 30px;

}

.slick-list {
	margin: 0 -30px;

}

.slick-prev {
    z-index: 1;
}



</style>

</head>
<body>

	<div style="padding-top: 2%; margin-bottom: 2%;">
		<div class="col-sm-12" style="text-align: end;">
			<button type="button" class="btn btn-w-m btn-primary" onclick="subgoPage('/case/registForm')">의견공유</button>
		</div>
	</div>



	<div class="row">
			<div style="color: white;width: 26%;margin-left: 5%;" onclick="subgoPage('/case/detail.do?from=list&disNo=${top[0].disNo}&dId=${doctorLogin.dId }')" type="button">
			<div class="contact-box" style="background: #fb3939;">
				<div>
					<h3 style="text-align: center; font-size: 20px;">
						<strong>${top[0].disTitle }</strong>
					</h3>
					<p style="text-align: center; font-size: 14px; padding-top: 7%;">
						<strong>${top[0].disDName }</strong>
					</p>
					<div class="row">
						<div style="width: 35%;margin-left: 5%;">
							<i class="fa fa-signal" style=""></i>
							<h5 style="display: inline; margin-left: 6%;">${top[0].maName }</h5>
						</div>
						<div style="margin-left: 5%;">
							<h5 style="display: inline;">${top[0].dId }</h5>
						</div>
						<div style="width: 30%;margin-left: 6%;">
							<i class="fa fa-calendar" style=""></i>
							<h5 style="display: inline; margin-left: 6%;">${top[0].disDate }</h5>
						</div>
					</div>
					<hr style="background-color: white;margin-top: 5px;margin-bottom: 5px;">
					<div class="row">
						<div class="col-sm-6" style="padding-left: 16%;">
							<i class="fa fa-eye"></i>
							<h5 style="display: inline; margin-left: 7%;">${top[0].disCnt }</h5>
						</div>
						<div class="col-sm-6" style="text-align: end; padding-right: 23%;">
							<i class="fa fa-thumbs-o-up"></i>
							<h5 style="display: inline; margin-left: 7%;">${top[0].recom }</h5>
						</div>
					</div>
				</div>

			</div>
		</div>
		<div style="color: white;width: 26%;margin-left: 5%;" onclick="subgoPage('/case/detail.do?from=list&disNo=${top[1].disNo}&dId=${doctorLogin.dId }')">
			<div class="contact-box" style="background: #fbb039;">
				<div>
					<h3 style="text-align: center; font-size: 20px;">
						<strong>${top[1].disTitle }</strong>
					</h3>
					<p style="text-align: center; font-size: 14px; padding-top: 7%;">
						<strong>${top[1].disDName }</strong>
					</p>
					<div class="row">
						<div style="width: 35%;margin-left: 5%;">
							<i class="fa fa-signal" style=""></i>
							<h5 style="display: inline; margin-left: 6%;">${top[1].maName }</h5>
						</div>
						<div style="margin-left: 5%;">
							<h5 style="display: inline;">${top[1].dId }</h5>
						</div>
						<div style="width: 30%;margin-left: 6%;">
							<i class="fa fa-calendar" style=""></i>
							<h5 style="display: inline; margin-left: 6%;">${top[1].disDate }</h5>
						</div>
					</div>
					<hr style="background-color: white;margin-top: 5px;margin-bottom: 5px;">
					<div class="row">
						<div class="col-sm-6" style="padding-left: 16%;">
							<i class="fa fa-eye"></i>
							<h5 style="display: inline; margin-left: 7%;">${top[1].disCnt }</h5>
						</div>
						<div class="col-sm-6" style="text-align: end; padding-right: 23%;">
							<i class="fa fa-thumbs-o-up"></i>
							<h5 style="display: inline; margin-left: 7%;">${top[1].recom }</h5>
						</div>
					</div>
				</div>

			</div>
		</div>

		<div style="color: white;width: 26%;margin-left: 5%;" onclick="subgoPage('/case/detail.do?from=list&disNo=${top[2].disNo}&dId=${doctorLogin.dId }')">
			<div class="contact-box" style="background: #00b400;">
				<div>
					<h3 style="text-align: center; font-size: 20px;">
						<strong>${top[2].disTitle }</strong>
					</h3>
					<p style="text-align: center; font-size: 14px; padding-top: 7%;">
						<strong>${top[2].disDName }</strong>
					</p>
					<div class="row">
						<div style="width: 35%;margin-left: 5%;">
							<i class="fa fa-signal" style=""></i>
							<h5 style="display: inline; margin-left: 6%;">${top[2].maName }</h5>
						</div>
						<div style="margin-left: 5%;">
							<h5 style="display: inline;">${top[2].dId }</h5>
						</div>
						<div style="width: 30%;margin-left: 6%;">
							<i class="fa fa-calendar" style=""></i>
							<h5 style="display: inline; margin-left: 6%;">${top[2].disDate }</h5>
						</div>
					</div>
					<hr style="background-color: white;margin-top: 5px;margin-bottom: 5px;">
					<div class="row">
						<div class="col-sm-6" style="padding-left: 16%;">
							<i class="fa fa-eye"></i>
							<h5 style="display: inline; margin-left: 7%;">${top[2].disCnt }</h5>
						</div>
						<div class="col-sm-6" style="text-align: end; padding-right: 23%;">
							<i class="fa fa-thumbs-o-up"></i>
							<h5 style="display: inline; margin-left: 7%;">${top[2].recom }</h5>
						</div>
					</div>
				</div>

			</div>
		</div>

</div>

	<div class="row" style="background: white; margin: 0px auto; padding-top: 2%;">
		<div class="col-sm-6">
			<h5 style="font-size: 20px;margin-left: 3%;">도움이 필요해요</h5>
		</div>
		<div class="col-sm-6" style="">
			<h5 style="text-align: end; margin-top: 2.5%; margin-right: 3%;">2022-06-27</h5>
		</div>
		<hr style="width: 95%">
		<div class="col-lg-6">
                <div class="ibox ">
                    <div class="ibox-content">
						<table class="table">
							<thead style="">

										<tr style="border-bottom: hidden;" onclick="subgoPage('/case/detail.do?from=list&disNo=${major[0].disNo}&dId=${doctorLogin.dId }')" type="button">
											<th style="display: inline-block; padding-left: 2px; border-bottom: hidden; width: 378px;">
												<p style="display: inline; color: #17ce17; font-size: 18px; margin-right: 1%;">1</p>
												${major[0].disTitle }</th>
											<td style="display: inline-block; border-top: hidden; width: 500px; padding-top: 1px; height: 10px;">
													${major[0].disContent }
											</td>
										</tr>

								<tr style="border-bottom: hidden;" onclick="subgoPage('/case/detail.do?from=list&disNo=${top[1].disNo}&dId=${doctorLogin.dId }')" type="button">
									<th
										style="display: inline-block; padding-left: 2px; border-bottom: hidden; width: 378px;"><p
											style="display: inline; color: #17ce17; font-size: 18px; margin-right: 1%;">2</p>
										${major[1].disTitle }</th>
									<td
										style="display: inline-block; border-top: hidden; width: 500px; padding-top: 1px; height: 10px;">
									${major[1].disContent }
									</td>
								</tr>
								<tr style="border-bottom: hidden;" onclick="subgoPage('/case/detail.do?from=list&disNo=${top[2].disNo}&dId=${doctorLogin.dId }')" type="button">
									<th
										style="display: inline-block; padding-left: 2px; border-bottom: hidden; width: 378px;"><p
											style="display: inline; color: #17ce17; font-size: 18px; margin-right: 1%;">3</p>
										${major[2].disTitle }</th>
									<td
										style="display: inline-block; border-top: hidden; width: 500px; padding-top: 1px; height: 10px;">
										${major[2].disContent }
									</td>
								</tr>
							</thead>
						</table>
					</div>
              </div>

         </div>

         <div class="col-lg-6">
              <div class="ibox ">
                  <div class="ibox-content">
				<table class="table">
					<thead style="">
						<tr style="border-bottom: hidden;" onclick="subgoPage('/case/detail.do?from=list&disNo=${top[3].disNo}&dId=${doctorLogin.dId }')" type="button">
							<th
								style="display: inline-block; padding-left: 2px; border-bottom: hidden; width: 378px;"><p
									style="display: inline; color: #17ce17; font-size: 18px; margin-right: 1%;">4</p>
								${major[3].disTitle }</th>
							<td
								style="display: inline-block; border-top: hidden; width: 500px; padding-top: 1px; height: 10px;">
								${major[3].disContent }
							</td>
						</tr>
						<tr style="border-bottom: hidden;" onclick="subgoPage('/case/detail.do?from=list&disNo=${top[4].disNo}&dId=${doctorLogin.dId }')" type="button">
							<th
								style="display: inline-block; padding-left: 2px; border-bottom: hidden; width: 378px;"><p
									style="display: inline; color: #17ce17; font-size: 18px; margin-right: 1%;">5</p>
								${major[4].disTitle }</th>
							<td
								style="display: inline-block; border-top: hidden; width: 500px; padding-top: 1px; height: 10px;">
								${major[4].disContent }
							</td>
						</tr>
						<tr style="border-bottom: hidden;" onclick="subgoPage('/case/detail.do?from=list&disNo=${top[5].disNo}&dId=${doctorLogin.dId }')" type="button">
							<th
								style="display: inline-block; padding-left: 2px; border-bottom: hidden; width: 378px;"><p
									style="display: inline; color: #17ce17; font-size: 18px; margin-right: 1%;">6</p>
								${major[5].disTitle }</th>
							<td
								style="display: inline-block; border-top: hidden; width: 500px; padding-top: 1px; height: 10px;">
								${major[5].disContent }
							</td>
						</tr>
					</thead>
				</table>
			</div>
        	</div>
		</div>
	</div>

	<div class="wrapper wrapper-content" style="background: white; margin-top: 2%;">
            <div class="row">
            <div class="col-sm-6">
					<h5 style="font-size: 20px; margin-left: 3%;">최신글</h5>
				</div>
				<div class="col-sm-6" style="">
					<h5 style="margin-top: 2.5%;margin-right: 1%;display: inline;margin-left: 81%;">전체보기</h5>
					<i class="fa fa-external-link" style="display: inline;font-size: 16px;" onclick="subgoPage('/case/list.do')" type="button"></i>
				</div>
			</div>


			<hr style="width: 95%">
            <div class="row justify-content-md-center" style="padding-top: 2%;">
                <div class="col-lg-9">
				<div class="slick_demo_2">
						<c:if test="${!empty bottomList}">
								<c:forEach items="${bottomList }" var="blist">


                        <div>
                           <div class="ibox-content" style="border-radius: 12%;border: 2px solid #1ab394;width: 235px;" onclick="location.href='detail.do'" type="button">
							<div>
								<h3 style="text-align: center; font-size: 20px;">
									<strong style="font-size: 15px;">${blist.disTitle }</strong>
								</h3>
								<p style="text-align: center; font-size: 14px; padding-top: 7%;">
									<strong style="font-size: 13px;">${blist.disDName }</strong>
								</p>
								<div class="row">
									<div style="width: 35%; margin-left: 6%; margin-right: 2%;">
										<i class="fa fa-signal" style="font-size: 1px;"></i>
										<h5 style="display: inline; margin-left: -1%; font-size: 1px;">${blist.maName }/${blist.dId }</h5>
									</div>
									<div style="margin-left: 2%;">
										<h5 style="display: inline; font-size: 1px;"></h5>
									</div>
									<div style="width: 30%; margin-left: 6%;">
										<i class="fa fa-calendar" style="font-size: 1px;"></i>
										<h5 style="display: inline; margin-left: 2%; font-size: 1px;">${blist.disDate }</h5>
									</div>
								</div>
								<hr style="background-color: white; margin-top: 5px; margin-bottom: 5px;">
								<div class="row">
									<div class="col-sm-6" style="padding-left: 16%;">
										<i class="fa fa-eye"></i>
										<h5 style="display: inline; margin-left: 7%;">${blist.disCnt }</h5>
									</div>
									<div class="col-sm-6" style="text-align: end; padding-right: 23%;">
										<i class="fa fa-thumbs-o-up"></i>
										<h5 style="display: inline; margin-left: 7%;">${blist.recom }</h5>
									</div>
								</div>
							</div>
						</div>
                        </div>
                        </c:forEach>
						</c:if>
                    </div>
                </div>
               </div>


</div>
<script src="<%=request.getContextPath()%>/resources/js/plugins/slick/slick.min.js"></script>
<script type="text/javascript">

// window.onload = function(){

// 	var majorSpan = $(".majorSpan").find('p');
// 	var majorSubstring = majorSpan.text().substring(0, 3);
// 	alert(majorSubstring);
// 	// majorSpan.text().substring(0, 20);
// 	majorSpan.innerHTML = majorSubstring;
// 	alert("asdf");
// }


</script>
 <script>
        $(document).ready(function(){



            $('.slick_demo_2').slick({
                infinite: true,
                slidesToShow: 3,
                slidesToScroll: 1,
                centerMode: true,
                responsive: [
                    {
                        breakpoint: 1024,
                        settings: {
                            slidesToShow: 3,
                            slidesToScroll: 3,
                            infinite: true,
                            dots: true
                        }
                    },
                    {
                        breakpoint: 600,
                        settings: {
                            slidesToShow: 2,
                            slidesToScroll: 2
                        }
                    },
                    {
                        breakpoint: 480,
                        settings: {
                            slidesToShow: 1,
                            slidesToScroll: 1
                        }
                    }
                ]
            });


        });


    </script>

</body>
</html>