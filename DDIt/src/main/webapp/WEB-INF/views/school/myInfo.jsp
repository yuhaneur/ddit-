<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<script src='https://cdn.jsdelivr.net/npm/moment@2.27.0/min/moment.min.js'></script>
<link href="${pageContext.request.contextPath}/resources/public/vendors/flatpickr/flatpickr.min.css"rel="stylesheet">

<script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/index.global.min.js'></script>
 <style>
        #calendar {
            width: 80vw;
            height: 80vh;
        }

        #yrModal {
            position: fixed;
            width: 100%;
            height: 100%;
            background-color: rgba(50, 150, 150, 0.7);
            display: none;
            z-index: 1000;
        }

        #cont {
            margin: 50px auto;
            width: 50%;
            height: 70%;
            background-color: darkblue;
            color: yellow;
        }
    </style>
    <!-- 학생정보 시작 -->
<div class="row g-3 mb-3">
            <div class="col-xxl-6">
              <div class="row g-3">
                <div class="col-12">
                <div class="col-md-6"style="width:100%;">
                  <div class="card font-sans-serif">
                    <div class="card-header pb-0">
                      <h6 class="mb-0">교육기간</h6>
                    </div>
                    <div class="card-body">
                      <div class="row g-0">
                        <div class="col-6">
                          <pre class="text-700 mb-1">${fn:substring(studentVO.classVO.classCreationDe,0,10)} ~ ${fn:substring(studentVO.classVO.classEndDe,0,10)}   D-DAY : ${attenanceMap.dDay} </pre>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6">
                </div>
                </div>
                <br>
                  <div class="card font-sans-serif">
                    <div class="card-body d-flex gap-3 flex-column flex-sm-row align-items-center"><img class="rounded-3" src="/atch/20c595d7-a08d-410e-bd4a-892f14daa8ca" alt="" width="112">
                      <table class="table table-borderless fs-10 fw-medium mb-0">
                        <tbody>
                          <tr>
                            <td class="p-1" style="width: 35%;">퇴실시간:</td>
                            <td class="p-1 text-600" id="checkOutTime">${fn:substring(studentVO.attenanceList[0].checkoutTime,0,16) }</td>
                          </tr>
                          <tr>
                            <td class="p-1" style="width: 35%;" >출석시간:</td>
                            <td class="p-1 text-600" id="entranceTime">${fn:substring(studentVO.attenanceList[0].entranceTime,0,16) }</td>
                          </tr>
                          <tr>
                            <td class="p-1" style="width: 35%;">이메일:</td>
                            <td class="p-1"><a class="text-600 text-decoration-none" href="mailto:goodguy@nicemail.com">${studentVO.studentMail}  </a>
                            </td>
                          </tr>
                          <tr>
                            <td class="p-1" style="width: 35%;">핸드폰번호:</td>
                            <td class="p-1"><a class="text-600 text-decoration-none" href="tel:+01234567890 ">${studentVO.studentPhoneno} </a>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xxl-6">
              <div class="card h-100 font-sans-serif">
                <div class="card-header bg-body-tertiary d-flex flex-between-center py-2">
                  <button class="btn btn-success me-1 mb-1" type="button" onclick="entranceTime()">출석하기</button>
                  <button class="btn btn-primary me-1 mb-1" type="button" id="goingIn">복귀하기</button>
                  <button class="btn btn-warning me-1 mb-1" type="button" id="goingOut">외출하기</button>
                  <button class="btn btn-danger me-1 mb-1" type="button" id="checkOut">퇴실하기</button>
                  <br class='d-none d-xl-block d-xxl-none' />
                </div>
                <div class="card-body" >
                  <div class="row g-0 h-50" style="display: flex; justify-content: space-between;">
                    <div class="col-sm-50 order-1 order-sm-0" >
                      <div class="row g-sm-0 gy-4 row-cols-4 h-100 align-content-between">
                        <div class="col">
                          <div class="d-flex gap-2 mb-3">
                            <div class="vr rounded ps-1 bg-success"></div>
                            <h6 class="lh-base text-700 mb-0">출석</h6>
                          </div>
                          <h5 class="fw-normal">${attenanceMap.ok }</h5>
                        </div>
                        <div class="col">
                          <div class="d-flex gap-2 mb-3">
                            <div class="vr rounded ps-1 bg-primary"></div>
                            <h6 class="lh-base text-700 mb-0">지각</h6>
                          </div>
                          <h5 class="fw-normal"> ${attenanceMap.late }</h5>
                        </div>
                        <div class="col">
                          <div class="d-flex gap-2 mb-3">
                            <div class="vr rounded ps-1 bg-info"></div>
                            <h6 class="lh-base text-700 mb-0">조퇴</h6>
                          </div>
                          <h5 class="fw-normal"> ${attenanceMap.sick } </h5>
                        </div>
                        <div class="col">
                          <div class="d-flex gap-2 mb-3">
                            <div class="vr rounded ps-1 bg-warning"></div>
                            <h6 class="lh-base text-700 mb-0">결석</h6>
                          </div>
                          <h5 class="fw-normal"> ${attenanceMap.no }</h5>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
<!-- 학생정보 끝  -->
    <div id="yrModal">
        <div id="cont" style="text-align: center;">
            <br>
            <h1>예린 모달 모달</h1>
            시작일 <input type="text" id="schStart" value=""><br>
            종료일 <input type="text" id="schEnd" value=""><br>
            제목 <input type="text" id="schTitle" value=""><br>
            하루종일 <input type="checkbox" id="allDay"><br>
            배경색<input type="color" id="schBColor" value="">
            글자색<input type="color" id="schFColor" value="">
            <button onclick="fCalAdd()">추강</button><br>
            <button onclick="fMClose()">X</button>
        </div>
    </div>
<!-- 캘린더 시작 -->
<div id="Wrapper" style="background-color: #FFFFFF">
    <div id='calendar'></div>
</div>
<!-- 캘린더 끝 -->

<!-- feather 아이콘 -->        
<script src="https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js"></script>

<!-- e차트 -->
<script src="${pageContext.request.contextPath}/resources/public/vendors/echarts/echarts.min.js"></script>
<!-- 학생 출석률 차트 js파일 -->
<script src="${pageContext.request.contextPath}/resources/js/app/school/studentChar.js"></script>
<!-- 출석 js파일 -->
<script src="${pageContext.request.contextPath}/resources/js/app/school/studentInfoAttence.js"></script>

<!-- 캘린더 -->       
<script src="${pageContext.request.contextPath}/resources/public/vendors/fullcalendar/index.global.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/public/vendors/flatpickr/flatpickr.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/public/vendors/dayjs/dayjs.min.js"></script>