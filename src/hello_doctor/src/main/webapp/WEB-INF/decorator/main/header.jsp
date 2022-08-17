<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
      <script src="<%=request.getContextPath()%>/resources/js/common.js"></script>

        <div id="" class="gray-bg dashbard-1">
        <div class="" style="margin-left: 5%;">
        <nav class="" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
<!--             <form role="search" class="navbar-form-custom" action="search_results.html"> -->
<!--                 <div class="form-group"> -->
<!--                     <input type="text" placeholder="Search for something..." class="form-control" name="top-search" id="top-search"> -->
<!--                 </div> -->
<!--             </form> -->
        </div>

            <ul class="nav navbar-top-links navbar-right">
            	<li class="nav-header">

<!--                         <div class="dropdown profile-element"> -->
<!--                         	<a href="indexPage.do"> -->
<%-- 	                            <img alt="image" class="rounded-circle" src="<%=request.getContextPath()%>/resources/css/img/logo2.png" width="70px" height="70px"/> --%>
<!--                         	</a> -->
<!--                         </div> -->
                        <div class="logo-element">
                            <img src="<%=request.getContextPath()%>/resources/img/logo2.png" width="50px" height="50px" onclick="location.href='/ddit/index.do'">
<!--                         	<p style="font-weight: bold;display: inline;">Hello Doctor </p> -->
                        </div>
                    </li>

					<li style="margin-left: 0px;">
						<span class="m-r-sm text-muted welcome-message"></span>
					</li>

					<li class="dropdown">
                        <a href="javascript:goPage('/main/index.do')">
                       	<span class="" style="position: absolute;margin-top: 3px;margin-left: 29px;">Home</span>
                        <i class="fa fa-home" style="font-size: 1.8em;"></i></a>
                    </li>

					<li style="font-size: 15px;"><span
						class="m-r-sm text-muted welcome-message" style="margin-left: 40px">│</span>
					</li>
				<li class="dropdown">
                        <a href="javascript:goPage('/medi/chart.do')">
                        <span class="" style="position: absolute;margin-top: 3px;margin-left: 24px;width: 35px;">진료</span>
                        <i class="fa fa-stethoscope" style="font-size: 1.8em;"></i> </a>
                    </li>

                    <li style="font-size: 15px;"><span
						class="m-r-sm text-muted welcome-message" style="margin-left: 40px">│</span>
					</li>

                     <li class="dropdown">
                        <a onclick="goPage('/colist/coworklist.do')" class="dropdown-toggle count-info" data-toggle="dropdown"><i class="fa fa-group" style="font-size: 1.8em;"></i>
                        <span class="" style="position: absolute;margin-top: 3px;width: 35px;">협진</span>
                        </a>
                        <ul class="dropdown-menu dropdown-alerts" style="width:150px; margin-right: -87px;""  >
                            <li><a href="javascript:goPage('/cooperation/coopermain.do')">My협진</a></li>
                        </ul>
                    </li>

                     <li style="font-size: 15px;"><span
						class="m-r-sm text-muted welcome-message" style="margin-left: 40px">│</span>
					</li>

                     <li class="dropdown">
                        <a href="javascript:goPage('/scheduler/main.do')">
                         <span class="" style="position: absolute;margin-top: 3px;width: 76px;">스케줄</span>
                        <i class="fa fa-calendar" style="font-size: 1.8em;"></i></a>
                    </li>

                    <li style="font-size: 15px;"><span
						class="m-r-sm text-muted welcome-message" style="margin-left: 40px">│</span>
					</li>

                     <li class="dropdown">
                        <a href="javascript:goPage('/case/main.do')">
                        <span class="" style="position: absolute;margin-top: 3px;width: 60px;">C.D</span>
                        <img src="https://img.icons8.com/external-outline-design-circle/66/000000/external-discussion-activities-outline-design-circle.png" style="width:25px; height: 25px"/></a>
                    </li>

                    <li style="font-size: 15px;"><span
						class="m-r-sm text-muted welcome-message" style="margin-left: 40px">│</span>
					</li>

                     <li class="dropdown">
                        <a onclick="goPage('/orderset/main.do')" class="dropdown-toggle count-info" data-toggle="dropdown" >
                        <span class="" style="position: absolute;margin-top: 3px;width: 87px;">오더세트</span>
                        <i class="fa fa-flask" style="font-size: 1.8em;"></i> </a>
                        <ul class="dropdown-menu dropdown-alerts" style="width:150px; margin-right: -115px;" >
                        	<li><a href="javascript:goPage('/orderset/orderset_list.do')">오더세트</a>
                        	<li><a href="javascript:goPage('/orderset/myorderset_list.do')">My오더세트</a></li>
                        </ul>
                    </li>

                      <li style="font-size: 15px;"><span
						class="m-r-sm text-muted welcome-message" style="margin-left: 64px">│</span>
					  </li>

                     <li class="dropdown">
                        <a href="javascript:goPage('/history/main.do')">
                        <span class="" style="position: absolute;margin-top: 3px;width: 90px;">히스토리</span>
                        <i class="fa fa-user-circle" style="font-size: 1.8em;"></i></a>
                    </li>

                     <li style="font-size: 15px;"><span
						class="m-r-sm text-muted welcome-message" style="margin-left: 64px">│</span>
					</li>

                <li class="dropdown">
                 <a class="dropdown-toggle count-info" href="javascript:openchat()">
                         <i class="fa fa-wechat" style="font-size: 1.8em;"></i>
                    </a>

                </li>
                <li class="dropdown">
                 <a class="dropdown-toggle count-info" href="javascript:OpenWindow('<%=request.getContextPath()%>/doctorChart/chartform.do','조직도',1100,700);">
                         <i class="fa fa-address-book" aria-hidden="true" style="font-size: 1.8em;"></i>
                    </a>

                </li>


                <li class="dropdown">
                    <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell" style="font-size: 1.8em;"></i>  <span class="label label-primary">3</span>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts ">
                        <li>
                            <a  onclick="window.open('cooperation/request.do','','width=800, height=900, left=500, top=100');return false;">
                                <div>
                                    <img alt="중요도" src="<%=request.getContextPath()%>/resources/img/siren.png" style="width:15px; height:15px;">노혜지님의 협진요청입니다<br>
                                    	&emsp;&nbsp;&nbsp;급성폐렴환자 협진요청입니다.
                                    <span class="float-right text-muted small">4 분전</span>
                                </div>
                            </a>
                        </li>

                        <li class="dropdown-divider"></li>
                        <li>
                            <a href="http://localhost/ddit/cooperation/request.do" onclick="window.open(this.href,'','width=800, height=800, left=500, top=300');return false;">
                                <div>
                                    	&nbsp;&nbsp;&emsp;박태정님의 협진요청입니다<br>
                                    	&emsp;&nbsp;&nbsp;급성폐렴환자 협진요청입니다.
                                    <span class="float-right text-muted small">2 시간전</span>
                                </div>
                            </a>
                        </li>
                        <li class="dropdown-divider"></li>
                        <li>
                            <a href="http://localhost/ddit/cooperation/request.do" onclick="window.open(this.href,'','width=800, height=800, left=500, top=300');return false;">
                                <div>
                                    	&nbsp;&nbsp;&emsp;유정민님의 협진요청입니다<br>
                                    	&emsp;&nbsp;&nbsp;급성폐렴환자 협진요청입니다.
                                    <span class="float-right text-muted small">3 시간전</span>
                                </div>
                            </a>
                        </li>
                        <li class="dropdown-divider"></li>
                        <li>
                            <div class="text-center link-block">
                                <a href="notifications.html" class="dropdown-item">
                                    <strong>전체 협진 요청조회</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>

                <!-- 상태변경 -->
                <li class="dropdown">
                    <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">

                       <div class="profile-image" style="width: 0px; margin-right: 64px">
                        	<c:if test="${doctorLogin.status eq '1'}">
                        	<img id="profileborder"  alt="프로필" src="<%=request.getContextPath()%>/resources/img/좆좆소 사장님.jpg" style="width:50px; height:50px;border: 2px solid #23af43;" class="rounded-circle circle-border m-b-md">
							<i id="profile" class="fa fa-circle" style="width:15px;height: 15px;color:#23af43;font-size: 15px;display: inline;margin-left: -16px;position: absolute;margin-top: 37px;"></i>
							</c:if>
							<c:if test="${doctorLogin.status eq '2'}">
                        	<img id="profileborder"  alt="프로필" src="<%=request.getContextPath()%>/resources/img/좆좆소 사장님.jpg" style="width:50px; height:50px;border: 2px solid #dc3545;" class="rounded-circle circle-border m-b-md">
							<i id="profile" class="fa fa-circle" style="width:15px;height: 15px;color:#dc3545;font-size: 15px;display: inline;margin-left: -16px;position: absolute;margin-top: 37px;"></i>
							</c:if>
							<c:if test="${doctorLogin.status eq '3'}">
                        	<img id="profileborder"  alt="프로필" src="<%=request.getContextPath()%>/resources/img/좆좆소 사장님.jpg" style="width:50px; height:50px;border: 2px solid #1c84c6;" class="rounded-circle circle-border m-b-md">
							<i id="profile" class="fa fa-circle" style="width:15px;height: 15px;color:#1c84c6;font-size: 15px;display: inline;margin-left: -16px;position: absolute;margin-top: 37px;"></i>
							</c:if>
					  </div>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts" style="width:150px; margin-right: -63px;">
                        <li>
                            <a onclick="status('1')"  >
									<i class="fa fa-circle" style="width:15px;height: 15px;color: #23af43;font-size: 15px;"></i>
                                    <h5  class="profile_change" style="float:right;"> 	진료중</h5>
                            </a>
                        </li>

                        <li class="dropdown-divider"></li>
                        <li>
                            <a  onclick="status('2')">
									<i class="fa fa-circle" style="width:15px;height: 15px;color: #dc3545;font-size: 15px;"></i>
                                    <h5 class="profile_change" style="float:right;"> 	수술중</h5>
                            </a>
                        </li>
                        <li class="dropdown-divider"></li>
                        <li>
                            <a  onclick="status('3')">
									<i class="fa fa-circle" style="width:15px;height: 15px;color:#1c84c6;font-size: 15px;"></i>
                                    <h5 class="profile_change"  style="float:right;"> 	자리비움</h5>
                            </a>
                        </li>
                        <li class="dropdown-divider"></li>
                        <li>
                            <a href='<%=request.getContextPath()%>/login/logout'>
                                <div>
                                    &nbsp;<img alt="로그아웃" src="<%=request.getContextPath()%>/resources/img/logout.png" style="width:17px; height:17px;">
                                    <h5 class="profile_change"  style="float:right;"> 	로그아웃</h5>
                                </div>
                            </a>
                        </li>
                    </ul>
				</li>
            </ul>

        </nav>
       </div>
