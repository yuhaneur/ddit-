	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   

    <!-- ===============================================-->
    <!--    Document Title-->
    <!-- ===============================================-->

    <!-- ===============================================-->
    <!--    Favicons-->
    <!-- ===============================================-->
   
    <!-- ===============================================-->
    <!--    Main Content-->
    <!-- ===============================================-->
          <div class="row g-3 mb-3">
            <div class="col-xxl-12 col-lg-12">
              <div class="card h-100">
                <div class="bg-holder bg-card" style="background-image:url(${pageContext.request.contextPath}/resources/public/assets/img/icons/spot-illustrations/corner-3.png);">
                </div>
                <!--/.bg-holder-->

                <div class="card-header z-1">
                 <c:if test="${not empty project.parent }">
                		${project.parent.projectName }
                	</c:if>
                	<br>
                	<span>${project.projectName }</span>
                </div>
                <div class="card-body z-1">
                  <div class="row g-2 h-30 align-items-end">
                    <div class="col-sm-1 col-md-2">
                      <div class="d-flex position-relative">
                        <div class="icon-item icon-item-sm border rounded-3 shadow-none me-2"><svg class="svg-inline--fa fa-chess-rook fa-w-12 text-primary" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chess-rook" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" data-fa-i2svg=""><path fill="currentColor" d="M368 32h-56a16 16 0 0 0-16 16v48h-48V48a16 16 0 0 0-16-16h-80a16 16 0 0 0-16 16v48H88.1V48a16 16 0 0 0-16-16H16A16 16 0 0 0 0 48v176l64 32c0 48.33-1.54 95-13.21 160h282.42C321.54 351 320 303.72 320 256l64-32V48a16 16 0 0 0-16-16zM224 320h-64v-64a32 32 0 0 1 64 0zm144 128H16a16 16 0 0 0-16 16v32a16 16 0 0 0 16 16h352a16 16 0 0 0 16-16v-32a16 16 0 0 0-16-16z"></path></svg><!-- <span class="fas fa-chess-rook text-primary"></span> Font Awesome fontawesome.com --></div>
                        <div class="flex-1"><a class="stretched-link text-800" href="#!">
                            <div class="mb-1">메인</div>
                          </a>
                          
                        </div>
                      </div>
                    </div>
                    <!--팀추가 시작  -->
                    <div class="col-sm-1 col-md-2">
                      <div class="d-flex position-relative">
                        <div class="icon-item icon-item-sm border rounded-3 shadow-none me-2"><svg class="svg-inline--fa fa-user fa-w-14 text-info" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="user" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M224 256c70.7 0 128-57.3 128-128S294.7 0 224 0 96 57.3 96 128s57.3 128 128 128zm89.6 32h-16.7c-22.2 10.2-46.9 16-72.9 16s-50.6-5.8-72.9-16h-16.7C60.2 288 0 348.2 0 422.4V464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-41.6c0-74.2-60.2-134.4-134.4-134.4z"></path></svg><!-- <span class="fas fa-user text-info"></span> Font Awesome fontawesome.com --></div>
                        <div class="flex-1"><a class="stretched-link text-800" href="<c:url value='/project/${project.projectNo }/teamList1' />">
                            <div class="mb-1">팀추가</div>
                          </a>
                        </div>
                      </div>
                    </div>
                    <!--일감 끝  -->
                    
                    <!--일감 시작-->
                    <div class="col-sm-1 col-md-2">
                      <div class="d-flex position-relative">
                        <div class="icon-item icon-item-sm border rounded-3 shadow-none me-2">
                        <svg class="svg-inline--fa fa-crown fa-w-20 text-warning" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="crown" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512" data-fa-i2svg=""><path fill="currentColor" d="M528 448H112c-8.8 0-16 7.2-16 16v32c0 8.8 7.2 16 16 16h416c8.8 0 16-7.2 16-16v-32c0-8.8-7.2-16-16-16zm64-320c-26.5 0-48 21.5-48 48 0 7.1 1.6 13.7 4.4 19.8L476 239.2c-15.4 9.2-35.3 4-44.2-11.6L350.3 85C361 76.2 368 63 368 48c0-26.5-21.5-48-48-48s-48 21.5-48 48c0 15 7 28.2 17.7 37l-81.5 142.6c-8.9 15.6-28.9 20.8-44.2 11.6l-72.3-43.4c2.7-6 4.4-12.7 4.4-19.8 0-26.5-21.5-48-48-48S0 149.5 0 176s21.5 48 48 48c2.6 0 5.2-.4 7.7-.8L128 416h384l72.3-192.8c2.5.4 5.1.8 7.7.8 26.5 0 48-21.5 48-48s-21.5-48-48-48z"></path></svg><!-- <span class="fas fa-crown text-warning"></span> Font Awesome fontawesome.com --></div>
                        <div class="flex-1">
                        <a class="stretched-link text-800" href="<c:url value='/project/${project.projectNo }/work' />">
                            <div class="mb-1" >일감</div>
                        </a>
                        </div>
                      </div>
                    </div>
                    <!-- 일감 끝 -->
                    <!--게시판시작  -->
                    <div class="col-sm-1 col-md-2">
                      <div class="d-flex position-relative">
                        <div class="icon-item icon-item-sm border rounded-3 shadow-none me-2"><svg class="svg-inline--fa fa-user fa-w-14 text-info" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="user" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M224 256c70.7 0 128-57.3 128-128S294.7 0 224 0 96 57.3 96 128s57.3 128 128 128zm89.6 32h-16.7c-22.2 10.2-46.9 16-72.9 16s-50.6-5.8-72.9-16h-16.7C60.2 288 0 348.2 0 422.4V464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-41.6c0-74.2-60.2-134.4-134.4-134.4z"></path></svg><!-- <span class="fas fa-user text-info"></span> Font Awesome fontawesome.com --></div>
                        <div class="flex-1"><a class="stretched-link text-800" href="<c:url value='/project/${project.projectNo }/post' />">
                            <div class="mb-1">게시판</div>
                          </a>
                          
                        </div>
                      </div>
                    </div>
                    <!--게시판 종료  -->
                    
                    <div class="col-sm-1 col-md-2">
                      <div class="d-flex position-relative">
                        <div class="icon-item icon-item-sm border rounded-3 shadow-none me-2"><svg class="svg-inline--fa fa-video fa-w-18 text-success" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="video" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" data-fa-i2svg=""><path fill="currentColor" d="M336.2 64H47.8C21.4 64 0 85.4 0 111.8v288.4C0 426.6 21.4 448 47.8 448h288.4c26.4 0 47.8-21.4 47.8-47.8V111.8c0-26.4-21.4-47.8-47.8-47.8zm189.4 37.7L416 177.3v157.4l109.6 75.5c21.2 14.6 50.4-.3 50.4-25.8V127.5c0-25.4-29.1-40.4-50.4-25.8z"></path></svg><!-- <span class="fas fa-video text-success"></span> Font Awesome fontawesome.com --></div>
                        <div class="flex-1"><a class="stretched-link text-800" href="<c:url value='/project/${project.projectNo }/chart' />">
                            <div class="mb-1">간트차트</div>
                          </a>
                         
                        </div>
                      </div>
                    </div>
                    <div class="col-sm-1 col-md-2">
                      <div class="d-flex position-relative">
                        <div class="icon-item icon-item-sm border rounded-3 shadow-none me-2"><svg class="svg-inline--fa fa-user fa-w-14 text-info" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="user" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M224 256c70.7 0 128-57.3 128-128S294.7 0 224 0 96 57.3 96 128s57.3 128 128 128zm89.6 32h-16.7c-22.2 10.2-46.9 16-72.9 16s-50.6-5.8-72.9-16h-16.7C60.2 288 0 348.2 0 422.4V464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-41.6c0-74.2-60.2-134.4-134.4-134.4z"></path></svg><!-- <span class="fas fa-user text-info"></span> Font Awesome fontawesome.com --></div>
                        <div class="flex-1"><a class="stretched-link text-800" href="<c:url value='/project/${project.projectNo }/calendar' />">
                            <div class="mb-1">캘린더</div>
                          </a>
                          
                        </div>
                      </div>
                    </div>
                    
                      
                    
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xxl-6 col-md-6">
              <div class="card h-100">
                <div class="card-header d-flex flex-between-center">
                  <h5 class="mb-0">프로젝트 진행사항</h5><a class="btn btn-link btn-sm px-0" href="#!">바로가기
                  <span class="fas fa-chevron-right ms-1 fs-11"> 
                  
                  </span
                  ></a>
               		
                </div>
                <div class="card-body">
                  <p class="fs-10 text-600">프로젝트 진행</p>
                  <div class="progress mb-3 rounded-pill" style="height: 6px;" role="progressbar" aria-valuenow="43.72" aria-valuemin="0" aria-valuemax="100">
                    <div class="progress-bar bg-progress-gradient rounded-pill" style="width: 75%"></div>
                  </div>
                  <p class="mb-0 text-primary">93% 완료</p>
                  <div class="card-body d-flex flex-center flex-column">
                  <!-- Find the JS file for the following chart at: src/js/charts/echarts/bandwidth-saved.js-->
                  <!-- If you are not using gulp based workflow, you can find the transpiled code at: public/assets/js/theme.js-->
                  <div class="echart-bandwidth-saved" data-echart-responsive="true"></div>
                  <div class="text-center mt-3">
                    <h6 class="fs-9 mb-1"><span class="fas fa-check text-success me-1" data-fa-transform="shrink-2"></span></h6>
                    <p class="fs-10 mb-0"></p>
                  </div>
                </div>
                </div>
              </div>
            </div>
            <div class="col-xxl-6 col-md-6">
              <div class="card h-100">
                <div class="card-header pb-0">
                  <div class="row">
                    <div class="col">
                      
                      <h5 class="text-primary fs-9">팀원</h5>
                    </div>
                    
                  </div>
                </div>
                <div class="card-body d-flex align-items-end">
                  <div class="row g-3 justify-content-between">
                   			<table class="table">
							<thead>
								<tr>
									<th scope="col">이름</th>
									<th scope="col">역할</th>
									
								</tr>
							</thead>
							<tbody>
							<c:if test="${not empty psm }">
								<c:forEach items="${psm }" var="psm">
								<tr>
								
								
								<td>${psm.student.studentName} </td>
								<td>${psm.projectRole }</td>
								<td class="text-end">
								</tr>
								</c:forEach>
							</c:if>
								<c:if test="${empty psm }">
								<td colspan="6">팀 없음</td>
							</c:if>
					
						
								
							</tbody>
						</table>
                    
                    
                    <div class="col-10 mt-0">
                    </div>
                    <div class="col-auto">
                     
                    </div>
                    <div class="col-auto ps-0">
                      <div class="avatar-group avatar-group-dense">
                        
                       
                        
                        
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row g-3 mb-3">
            <div class="col-xxl-6 col-lg-12">
              <div class="row">
                <div class="col-lg-12">
                  
                    <div class="col-sm-6">
                      <div class="card overflow-hidden" style="min-width: 12rem">
                        <div class="bg-holder bg-card" style="background-image:url(${pageContext.request.contextPath}/resources/public/assets/img/icons/spot-illustrations/corner-1.png);">
                        </div>
                        <!--/.bg-holder-->

                       
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="card overflow-hidden" style="min-width: 12rem">
                        <div class="bg-holder bg-card" style="background-image:url(${pageContext.request.contextPath}/resources/public/assets/img/icons/spot-illustrations/corner-2.png);">
                        </div>
                        <!--/.bg-holder-->

                      
                      </div>
                    </div>
                  
                </div>
                <div class="col-lg-12">
                  <div class="card">
                    <div class="card-header pb-0">
                      <div class="row flex-between-center">
                        <div class="col-auto">
                          <h6 class="mb-0">간트차트</h6>
                        </div>
                        <div class="col-auto d-flex">
                          <div class="btn btn-sm d-flex align-items-center p-0 me-3 shadow-none" id="echart-bar-report-for-this-week-option-1"><span class="fas fa-circle text-primary fs-11 me-1"></span><span class="text">이번주</span></div>
                          <div class="btn btn-sm d-flex align-items-center p-0 shadow-none" id="echart-bar-report-for-this-week-option-2"><span class="fas fa-circle text-300 fs-11 me-1"></span><span class="text">저번주</span></div>
                        </div>
                      </div>
                    </div>
                    <div class="card-body py-0">
                      <!-- Find the JS file for the following chart at: src/js/charts/echarts/report-for-this-week.js-->
                      <!-- If you are not using gulp based workflow, you can find the transpiled code at: public/assets/js/theme.js-->
                      <div class="echart-bar-report-for-this-week" data-echart-responsive="true" data-chart="{&quot;option1&quot;:&quot;echart-bar-report-for-this-week-option-1&quot;,&quot;option2&quot;:&quot;echart-bar-report-for-this-week-option-2&quot;}"> </div>
                    </div>
                    <div class="card-footer bg-body-tertiary p-0"><a class="btn btn-sm btn-link d-block w-100 py-2" href="#!">See all projects<span class="fas fa-chevron-right ms-1 fs-11"></span></a></div>
                  </div>
                </div>
              </div>
            </div>
            
            <div class="col-xxl-6 col-md-6">
              <div class="card overflow-hidden h-100" style="width:800px; height:1000px;">
                <div class="card-body p-0 management-calendar">
                  <div class="row g-3">
                    <div class="col-md-12">
                      <div class="p-x1">
                        <div class="d-flex justify-content-between">
                          <div class="order-md-1">
                            <button class="btn btn-sm border me-1 shadow-sm" type="button" data-event="prev" data-bs-toggle="tooltip" title="Previous"><span class="fas fa-chevron-left"></span></button>
                            <button class="btn btn-sm text-secondary border px-sm-4 shadow-sm" type="button" data-event="today">Today</button>
                            <button class="btn btn-sm border ms-1 shadow-sm" type="button" data-event="next" data-bs-toggle="tooltip" title="Next"><span class="fas fa-chevron-right"></span></button>
                          </div>
                          <button class="btn btn-sm text-primary border order-md-0 shadow-none" type="button" data-bs-toggle="modal" data-bs-target="#addEventModal"> <span class="fas fa-plus me-2"></span>New Schedule</button>
                        </div>
                      </div>
                      <!-- Find the JS file for the following calendar at: src/js/calendar/management-calendar.js-->
                      <!-- If you are not using gulp based workflow, you can find the transpiled code at: public/assets/js/theme.js-->
                      <div class="calendar-outline px-3" id="managementAppCalendar" data-calendar-option='{"title":"management-calendar-title","day":"management-calendar-day","events":"management-calendar-events"}'></div>
                    </div>
                    
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          <div class="row g-3">
            
            
          </div>
        
        
        <div class="modal fade" id="authentication-modal" tabindex="-1" role="dialog" aria-labelledby="authentication-modal-label" aria-hidden="true">
          <div class="modal-dialog mt-6" role="document">
            <div class="modal-content border-0">
              <div class="modal-header px-5 position-relative modal-shape-header bg-shape">
                <div class="position-relative z-1">
                  <h4 class="mb-0 text-white" id="authentication-modal-label">Register</h4>
                  <p class="fs-10 mb-0 text-white">Please create your free Falcon account</p>
                </div>
                <button class="btn-close position-absolute top-0 end-0 mt-2 me-2" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body py-4 px-5">
                <form>
                  <div class="mb-3">
                    <label class="form-label" for="modal-auth-name">Name</label>
                    <input class="form-control" type="text" autocomplete="on" id="modal-auth-name" />
                  </div>
                  <div class="mb-3">
                    <label class="form-label" for="modal-auth-email">Email address</label>
                    <input class="form-control" type="email" autocomplete="on" id="modal-auth-email" />
                  </div>
                  <div class="row gx-2">
                    <div class="mb-3 col-sm-6">
                      <label class="form-label" for="modal-auth-password">Password</label>
                      <input class="form-control" type="password" autocomplete="on" id="modal-auth-password" />
                    </div>
                    <div class="mb-3 col-sm-6">
                      <label class="form-label" for="modal-auth-confirm-password">Confirm Password</label>
                      <input class="form-control" type="password" autocomplete="on" id="modal-auth-confirm-password" />
                    </div>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="modal-auth-register-checkbox" />
                    <label class="form-label" for="modal-auth-register-checkbox">I accept the <a href="#!">terms </a>and <a class="white-space-nowrap" href="#!">privacy policy</a></label>
                  </div>
                  <div class="mb-3">
                    <button class="btn btn-primary d-block w-100 mt-3" type="submit" name="submit">Register</button>
                  </div>
                </form>
                <div class="position-relative mt-5">
                  <hr />
                  <div class="divider-content-center">or register with</div>
                </div>
                <div class="row g-2 mt-2">
                  <div class="col-sm-6"><a class="btn btn-outline-google-plus btn-sm d-block w-100" href="#"><span class="fab fa-google-plus-g me-2" data-fa-transform="grow-8"></span> google</a></div>
                  <div class="col-sm-6"><a class="btn btn-outline-facebook btn-sm d-block w-100" href="#"><span class="fab fa-facebook-square me-2" data-fa-transform="grow-8"></span> facebook</a></div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="modal fade" id="eventDetailsModal" tabindex="-1">
          <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content border"></div>
          </div>
        </div>
        <div class="modal fade" id="addEventModal" tabindex="-1">
          <div class="modal-dialog">
            <div class="modal-content border">
              <form id="addEventForm" autocomplete="off">
                <div class="modal-header px-x1 bg-body-tertiary border-bottom-0">
                  <h5 class="modal-title">Create Schedule</h5>
                  <button class="btn-close me-n1" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-x1">
                  <div class="mb-3">
                    <label class="fs-9" for="eventTitle">Title</label>
                    <input class="form-control" id="eventTitle" type="text" name="title" required="required" />
                  </div>
                  <div class="mb-3">
                    <label class="fs-9" for="eventStartDate">Start Date</label>
                    <input class="form-control datetimepicker" id="eventStartDate" type="text" required="required" name="startDate" placeholder="yyyy/mm/dd hh:mm" data-options='{"static":"true","enableTime":"true","dateFormat":"Y-m-d H:i"}' />
                  </div>
                  <div class="mb-3">
                    <label class="fs-9" for="eventEndDate">End Date</label>
                    <input class="form-control datetimepicker" id="eventEndDate" type="text" name="endDate" placeholder="yyyy/mm/dd hh:mm" data-options='{"static":"true","enableTime":"true","dateFormat":"Y-m-d H:i"}' />
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="eventAllDay" name="allDay" />
                    <label class="form-check-label" for="eventAllDay">All Day
                    </label>
                  </div>
                  <div class="mb-3">
                    <label class="fs-9">Schedule Meeting</label>
                    <div><a class="btn badge-subtle-success btn-sm" href="#!"><span class="fas fa-video me-2"></span>Add video conference link</a></div>
                  </div>
                  <div class="mb-3">
                    <label class="fs-9" for="eventDescription">Description</label>
                    <textarea class="form-control" rows="3" name="description" id="eventDescription"></textarea>
                  </div>
                  <div class="mb-3">
                    <label class="fs-9" for="eventLabel">Label</label>
                    <select class="form-select" id="eventLabel" name="label">
                      <option value="" selected="selected">None</option>
                      <option value="primary">Business</option>
                      <option value="danger">Important</option>
                      <option value="success">Personal</option>
                      <option value="warning">Must Attend</option>
                    </select>
                  </div>
                </div>
                <div class="modal-footer d-flex justify-content-end align-items-center bg-body-tertiary border-0"><a class="me-3 text-600" href="${pageContext.request.contextPath}/resources/public/app/events/create-an-event.html">More options</a>
                  <button class="btn btn-primary px-4" type="submit">Save</button>
                </div>
              </form>
            </div>
          </div>
        </div>
       
    <!-- ===============================================-->
    <!--    End of Main Content-->
    <!-- ===============================================-->


    <div class="offcanvas offcanvas-end settings-panel border-0" id="settings-offcanvas" tabindex="-1" aria-labelledby="settings-offcanvas">
      <div class="offcanvas-header settings-panel-header bg-shape">
        <div class="z-1 py-1">
          <div class="d-flex justify-content-between align-items-center mb-1">
            <h5 class="text-white mb-0 me-2"><span class="fas fa-palette me-2 fs-9"></span>Settings</h5>
            <button class="btn btn-primary btn-sm rounded-pill mt-0 mb-0" data-theme-control="reset" style="font-size:12px"> <span class="fas fa-redo-alt me-1" data-fa-transform="shrink-3"></span>Reset</button>
          </div>
          <p class="mb-0 fs-10 text-white opacity-75"> Set your own customized style</p>
        </div>
        <div class="z-1" data-bs-theme="dark">
          <button class="btn-close z-1 mt-0" type="button" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
      </div>
      <div class="offcanvas-body scrollbar-overlay px-x1 h-100" id="themeController">
        <h5 class="fs-9">Color Scheme</h5>
        <p class="fs-10">Choose the perfect color mode for your app.</p>
        <div class="btn-group d-block w-100 btn-group-navbar-style">
          <div class="row gx-2">
            <div class="col-4">
              <input class="btn-check" id="themeSwitcherLight" name="theme-color" type="radio" value="light" data-theme-control="theme" />
              <label class="btn d-inline-block btn-navbar-style fs-10" for="themeSwitcherLight"> <span class="hover-overlay mb-2 rounded d-block"><img class="img-fluid img-prototype mb-0" src="${pageContext.request.contextPath}/resources/public/assets/img/generic/falcon-mode-default.jpg" alt=""/></span><span class="label-text">Light</span></label>
            </div>
            <div class="col-4">
              <input class="btn-check" id="themeSwitcherDark" name="theme-color" type="radio" value="dark" data-theme-control="theme" />
              <label class="btn d-inline-block btn-navbar-style fs-10" for="themeSwitcherDark"> <span class="hover-overlay mb-2 rounded d-block"><img class="img-fluid img-prototype mb-0" src="${pageContext.request.contextPath}/resources/public/assets/img/generic/falcon-mode-dark.jpg" alt=""/></span><span class="label-text"> Dark</span></label>
            </div>
            <div class="col-4">
              <input class="btn-check" id="themeSwitcherAuto" name="theme-color" type="radio" value="auto" data-theme-control="theme" />
              <label class="btn d-inline-block btn-navbar-style fs-10" for="themeSwitcherAuto"> <span class="hover-overlay mb-2 rounded d-block"><img class="img-fluid img-prototype mb-0" src="${pageContext.request.contextPath}/resources/public/assets/img/generic/falcon-mode-auto.jpg" alt=""/></span><span class="label-text"> Auto</span></label>
            </div>
          </div>
        </div>
        <hr />
        <div class="d-flex justify-content-between">
          <div class="d-flex align-items-start"><img class="me-2" src="${pageContext.request.contextPath}/resources/public/assets/img/icons/left-arrow-from-left.svg" width="20" alt="" />
            <div class="flex-1">
              <h5 class="fs-9">RTL Mode</h5>
              <p class="fs-10 mb-0">Switch your language direction </p><a class="fs-10" href="${pageContext.request.contextPath}/resources/public/documentation/customization/configuration.html">RTL Documentation</a>
            </div>
          </div>
          <div class="form-check form-switch">
            <input class="form-check-input ms-0" id="mode-rtl" type="checkbox" data-theme-control="isRTL" />
          </div>
        </div>
        <hr />
        <div class="d-flex justify-content-between">
          <div class="d-flex align-items-start"><img class="me-2" src="${pageContext.request.contextPath}/resources/public/assets/img/icons/arrows-h.svg" width="20" alt="" />
            <div class="flex-1">
              <h5 class="fs-9">Fluid Layout</h5>
              <p class="fs-10 mb-0">Toggle container layout system </p><a class="fs-10" href="${pageContext.request.contextPath}/resources/public/documentation/customization/configuration.html">Fluid Documentation</a>
            </div>
          </div>
          <div class="form-check form-switch">
            <input class="form-check-input ms-0" id="mode-fluid" type="checkbox" data-theme-control="isFluid" />
          </div>
        </div>
        <hr />
        <div class="d-flex align-items-start"><img class="me-2" src="${pageContext.request.contextPath}/resources/public/assets/img/icons/paragraph.svg" width="20" alt="" />
          <div class="flex-1">
            <h5 class="fs-9 d-flex align-items-center">Navigation Position</h5>
            <p class="fs-10 mb-2">Select a suitable navigation system for your web application </p>
            <div>
              <select class="form-select form-select-sm" aria-label="Navbar position" data-theme-control="navbarPosition">
                <option value="vertical" data-page-url="${pageContext.request.contextPath}/resources/public/modules/components/navs-and-tabs/vertical-navbar.html">Vertical</option>
                <option value="top" data-page-url="${pageContext.request.contextPath}/resources/public/modules/components/navs-and-tabs/top-navbar.html">Top</option>
                <option value="combo" data-page-url="${pageContext.request.contextPath}/resources/public/modules/components/navs-and-tabs/combo-navbar.html">Combo</option>
                <option value="double-top" data-page-url="${pageContext.request.contextPath}/resources/public/modules/components/navs-and-tabs/double-top-navbar.html">Double Top</option>
              </select>
            </div>
          </div>
        </div>
        <hr />
        <h5 class="fs-9 d-flex align-items-center">Vertical Navbar Style</h5>
        <p class="fs-10 mb-0">Switch between styles for your vertical navbar </p>
        <p> <a class="fs-10" href="${pageContext.request.contextPath}/resources/public/modules/components/navs-and-tabs/vertical-navbar.html#navbar-styles">See Documentation</a></p>
        <div class="btn-group d-block w-100 btn-group-navbar-style">
          <div class="row gx-2">
            <div class="col-6">
              <input class="btn-check" id="navbar-style-transparent" type="radio" name="navbarStyle" value="transparent" data-theme-control="navbarStyle" />
              <label class="btn d-block w-100 btn-navbar-style fs-10" for="navbar-style-transparent"> <img class="img-fluid img-prototype" src="${pageContext.request.contextPath}/resources/public/assets/img/generic/default.png" alt="" /><span class="label-text"> Transparent</span></label>
            </div>
            <div class="col-6">
              <input class="btn-check" id="navbar-style-inverted" type="radio" name="navbarStyle" value="inverted" data-theme-control="navbarStyle" />
              <label class="btn d-block w-100 btn-navbar-style fs-10" for="navbar-style-inverted"> <img class="img-fluid img-prototype" src="${pageContext.request.contextPath}/resources/public/assets/img/generic/inverted.png" alt="" /><span class="label-text"> Inverted</span></label>
            </div>
            <div class="col-6">
              <input class="btn-check" id="navbar-style-card" type="radio" name="navbarStyle" value="card" data-theme-control="navbarStyle" />
              <label class="btn d-block w-100 btn-navbar-style fs-10" for="navbar-style-card"> <img class="img-fluid img-prototype" src="${pageContext.request.contextPath}/resources/public/assets/img/generic/card.png" alt="" /><span class="label-text"> Card</span></label>
            </div>
            <div class="col-6">
              <input class="btn-check" id="navbar-style-vibrant" type="radio" name="navbarStyle" value="vibrant" data-theme-control="navbarStyle" />
              <label class="btn d-block w-100 btn-navbar-style fs-10" for="navbar-style-vibrant"> <img class="img-fluid img-prototype" src="${pageContext.request.contextPath}/resources/public/assets/img/generic/vibrant.png" alt="" /><span class="label-text"> Vibrant</span></label>
            </div>
          </div>
        </div>
        <div class="text-center mt-5"><img class="mb-4" src="${pageContext.request.contextPath}/resources/public/assets/img/icons/spot-illustrations/47.png" alt="" width="120" />
          <h5>Like What You See?</h5>
          <p class="fs-10">Get Falcon now and create beautiful dashboards with hundreds of widgets.</p><a class="mb-3 btn btn-primary" href="https://themes.getbootstrap.com/product/falcon-admin-dashboard-webapp-template/" target="_blank">Purchase</a>
        </div>
      </div>
    </div><a class="card setting-toggle" href="#settings-offcanvas" data-bs-toggle="offcanvas"></a>
      

    <!-- ===============================================-->
    <!--    JavaScripts-->
    <!-- ===============================================-->
  	
    <script src="${pageContext.request.contextPath}/resources/public/vendors/popper/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/public/vendors/bootstrap/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/public/vendors/anchorjs/anchor.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/public/vendors/is/is.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/public/vendors/chart/chart.umd.js"></script>
    <script src="${pageContext.request.contextPath}/resources/public/vendors/leaflet/leaflet.js"></script>
    <script src="${pageContext.request.contextPath}/resources/public/vendors/leaflet.markercluster/leaflet.markercluster.js"></script>
    <script src="${pageContext.request.contextPath}/resources/public/vendors/leaflet.tilelayer.colorfilter/leaflet-tilelayer-colorfilter.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/public/vendors/countup/countUp.umd.js"></script>
    <script src="${pageContext.request.contextPath}/resources/public/vendors/echarts/echarts.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/public/vendors/fullcalendar/index.global.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/public/vendors/flatpickr/flatpickr.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/public/vendors/dayjs/dayjs.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/public/vendors/fontawesome/all.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/public/vendors/lodash/lodash.min.js"></script>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
    <script src="${pageContext.request.contextPath}/resources/public/vendors/list.js/list.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/public/assets/js/theme.js"></script>
 
  <!--디테일 시작  --> 
            <!-- <div style="position:absolute; top:-360px; left:0px;">    <iframe src="http://onair.kbs.co.kr/index.html?sname=onair&stype=live&ch_code=11&ch_type=globalList" width="860" height="840" scrolling="no" frameborder="0"></iframe></div> -->