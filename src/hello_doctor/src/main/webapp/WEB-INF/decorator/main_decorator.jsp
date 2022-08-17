<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>INSPINIA | Dashboard</title>

    <link href="<%=request.getContextPath() %>/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Toastr style -->
    <link href="<%=request.getContextPath() %>/resources/css/plugins/toastr/toastr.min.css" rel="stylesheet">

    <!-- Gritter -->
    <link href="<%=request.getContextPath() %>/resources/js/plugins/gritter/jquery.gritter.css" rel="stylesheet">
	<!-- 협진요청바로가기 -->


<!-- 	수정 -->
    <link href="<%=request.getContextPath() %>/resources/css/animate.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/css/animate2.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/css/style.css" rel="stylesheet">
     <!-- Mainly scripts -->
    <script src="<%=request.getContextPath() %>/resources/js/jquery-3.1.1.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/popper.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/bootstrap.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script type="text/javascript">

	window.onload=function(){

	   goPage('${page}');

	   var page = '${page}';

	   page = page.replace(/&/g,"amp;");

	   changeurl(page);

	}



	function goPage(url){

	   $('iframe[name="ifr"]').attr("src","<%=request.getContextPath() %>"+url);

	   // HTML5지원브라우저에서 사용가능

	   if(typeof(history.pushState) == "function"){

	      // 현재 주소를 가져온다.

	      var renewURL = location.href;

	      // 현재 주소 중 .do 뒤 부분이 있다면 날려버린다.
	      renewURL = renewURL.substring(0, renewURL.indexOf(".do")+3);

	       renewURL += "?page="+url;

	      // 페이지를 리로드하지 않고 페이지 주소만 변경할 때 사용

	      history.pushState(url, null, renewURL);

	   }else{
	      location.hash = "#" + url;
	   }

	}
	function changeurl(url){

		   var renewURL = location.href;

		   // 현재 주소 중 .do 뒤 부분이 있다면 날려버린다.

		   renewURL = renewURL.substring(0, renewURL.indexOf(".do")+3);

		   renewURL += "?page="+url

		   // 페이지를 리로드하지 않고 페이지 주소만 변경할 때 사용

		   history.pushState(url, null, renewURL);
		}

	function printData(dataArr,target,templateObject,removeClass){

		   var template=Handlebars.compile(templateObject.html());

		   var html = template(dataArr);

		   $(removeClass).remove();

		   target.append(html);

		}
	function openchat(){

		window.open("chatForm", "","width=680, height=550, left=500, top=200")

	}


	</script>
<style type="text/css">
	body {
		width:1200px;
		margin: 0 auto;
}
.nav {
  display: flex;
  flex-wrap: wrap;
  padding-left: 0;
  margin-bottom: 0;
  list-style: none;
}
.navbar {
    position: relative;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    -ms-flex-align: center;
    align-items: center;
    -ms-flex-pack: justify;
    justify-content: space-between;
    padding: 0.5rem 1rem;
}

</style>

<%-- <decorator:head /> --%>

</head>
<body class="light-skin pace-done mini-navbar">

<div>

<%@ include file="./main/header.jsp" %>
<decorator:body />


</div>


    <!-- Flot -->
    <script src="<%=request.getContextPath() %>/resources/js/plugins/flot/jquery.flot.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/plugins/flot/jquery.flot.spline.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/plugins/flot/jquery.flot.resize.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/plugins/flot/jquery.flot.pie.js"></script>

    <!-- Peity -->
    <script src="<%=request.getContextPath() %>/resources/js/plugins/peity/jquery.peity.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/demo/peity-demo.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="<%=request.getContextPath() %>/resources/js/inspinia.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/plugins/pace/pace.min.js"></script>


    <!-- jQuery UI -->
    <script src="<%=request.getContextPath() %>/resources/js/plugins/jquery-ui/jquery-ui.min.js"></script>

    <!-- GITTER -->
    <script src="<%=request.getContextPath() %>/resources/js/plugins/gritter/jquery.gritter.min.js"></script>

    <!-- Sparkline -->
    <script src="<%=request.getContextPath() %>/resources/js/plugins/sparkline/jquery.sparkline.min.js"></script>

    <!-- Sparkline demo data  -->
    <script src="<%=request.getContextPath() %>/resources/js/demo/sparkline-demo.js"></script>

    <!-- ChartJS-->
    <script src="<%=request.getContextPath() %>/resources/js/plugins/chartJs/Chart.min.js"></script>

    <!-- Toastr -->
    <script src="<%=request.getContextPath() %>/resources/js/plugins/toastr/toastr.min.js"></script>


	<!-- 프로필 상태 변경 -->
	<script>

		function status(input){

			// header.jsp에서 받은 input의 값을 가져온다.
			var data  = {"status" : input}
		$.ajax({
			type:"POST",
			url:"<%=request.getContextPath()%>/doctorstatus/num",
			data:JSON.stringify(data),
			contentType:"application/json",
			success:function(res){
					   const res1 = $.trim(res);
// 					   alert(res1);

						// 진료중 상태..
		                if (res1 == '1') {

		                	$("#profileborder").css("border", "2px solid #23af43");
		                	$("#profile").css("color", "#23af43");
// 							$(".profile-image").attr({
// 								'profile-image' :

// 							});
		                // 수술중 상태..
		                }else if(res1 =='2'){
		                	$("#profileborder").css("border", "2px solid #dc3545");
							$("#profile").css("color", "#dc3545");

						// 자리비움 상태..
		                }else{
		                	$("#profileborder").css("border", "2px solid #1c84c6");
							$("#profile").css("color", "#1c84c6");

		                }

			},
			error:function(xhr){
				alert("오류"+xhr);
			}
		})
	}


	</script>


    <script>
        $(document).ready(function() {

            let toast = $('.toast');

            setTimeout(function() {
                toast.toast({
                    delay: 5000,
                    animation: true
                });
                toast.toast('show');

            }, 2200);

            var data1 = [
                [0,4],[1,8],[2,5],[3,10],[4,4],[5,16],[6,5],[7,11],[8,6],[9,11],[10,30],[11,10],[12,13],[13,4],[14,3],[15,3],[16,6]
            ];
            var data2 = [
                [0,1],[1,0],[2,2],[3,0],[4,1],[5,3],[6,1],[7,5],[8,2],[9,3],[10,2],[11,1],[12,0],[13,2],[14,8],[15,0],[16,0]
            ];
            $("#flot-dashboard-chart").length && $.plot($("#flot-dashboard-chart"), [
                data1, data2
            ],
                    {
                        series: {
                            lines: {
                                show: false,
                                fill: true
                            },
                            splines: {
                                show: true,
                                tension: 0.4,
                                lineWidth: 1,
                                fill: 0.4
                            },
                            points: {
                                radius: 0,
                                show: true
                            },
                            shadowSize: 2
                        },
                        grid: {
                            hoverable: true,
                            clickable: true,
                            tickColor: "#d5d5d5",
                            borderWidth: 1,
                            color: '#d5d5d5'
                        },
                        colors: ["#1ab394", "#1C84C6"],
                        xaxis:{
                        },
                        yaxis: {
                            ticks: 4
                        },
                        tooltip: false
                    }
            );

            var doughnutData = {
                labels: ["App","Software","Laptop" ],
                datasets: [{
                    data: [300,50,100],
                    backgroundColor: ["#a3e1d4","#dedede","#9CC3DA"]
                }]
            } ;


            var doughnutOptions = {
                responsive: false,
                legend: {
                    display: false
                }
            };


            var ctx4 = document.getElementById("doughnutChart").getContext("2d");
            new Chart(ctx4, {type: 'doughnut', data: doughnutData, options:doughnutOptions});

            var doughnutData = {
                labels: ["App","Software","Laptop" ],
                datasets: [{
                    data: [70,27,85],
                    backgroundColor: ["#a3e1d4","#dedede","#9CC3DA"]
                }]
            } ;


            var doughnutOptions = {
                responsive: false,
                legend: {
                    display: false
                }
            };


            var ctx4 = document.getElementById("doughnutChart2").getContext("2d");
            new Chart(ctx4, {type: 'doughnut', data: doughnutData, options:doughnutOptions});

        });

        $(window).bind("scroll", function () {
            let toast = $('.toast');
            toast.css("top", window.pageYOffset + 20);

        });
        function calcHeight(){

        	//find the height of the internal page

        	var the_height=

        	document.getElementById('the_iframe').contentWindow.

        	document.body.scrollHeight;



        	//change the height of the iframe

        	document.getElementById('the_iframe').height = the_height;



        	document.getElementById('the_iframe').scrolling = "no";

        	document.getElementById('the_iframe').style.overflow = "hidden";

        	}
        </script>
<!--     </script> -->




</body>

</html>

