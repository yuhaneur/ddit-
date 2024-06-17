<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!-- 캘린더 -->
<script src='https://cdn.jsdelivr.net/npm/moment@2.27.0/min/moment.min.js'></script>
<link href="${pageContext.request.contextPath}/resources/public/vendors/flatpickr/flatpickr.min.css"rel="stylesheet">

<script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/index.global.min.js'></script>


<style>
    #calendar {
        width: 55vw;
        height: 80vh;
    }

    #yrModal {
        position: fixed;
        width: 40%;
        height: 50%;
/*         background-color: white; */
        display: none;
        z-index: 1000;
    }

    #cont {
        margin: 50px auto;
        width: 90%;
        height: 60%;
        background-color: white;
/*         color: yellow; */
    }
</style>
<security:authentication property="principal" var="principal" />
<input type="hidden" id="userId" value="${principal.realUser.userId }">
<!-- 학생상담화면 상단 시작 -->
<div class="row g-3">
	<div class="col-lg-8">
		<div class="card mb-3">
	       <div class="card-header bg-body-tertiary">
	         <div class="d-flex flex-between-center">
		        <div class="card-header bg-body-tertiary d-flex flex-between-center py-2">
		        	<button class="btn btn-outline-secondary teacherBtn me-3 mb-1" data-user-id="${classVO.teacher.userId }" onclick="consultingTeacher(this)" type="button">${classVO.teacher.teacherName }</button>
			        <c:forEach items="${classVO.edcCrse.sjList }" var="sj">
				        <c:choose>
				        	<c:when test="${classVO.teacher.teacherName ne sj.sjManagerList[0].teacher.teacherName}">
					            <button class="btn btn-outline-secondary teacherBtn me-3 mb-1" data-user-id="${sj.sjManagerList[0].teacher.userId }" type="button" onclick="consultingTeacher(this)">${sj.sjManagerList[0].teacher.teacherName }</button>
				        	</c:when>
				        </c:choose>
			        </c:forEach>
		         </div>
	         </div>
	       </div>
	</div>
	<!-- 학생상담화면 상단 끝 -->
	<!-- 캘린더 모달1 -->
    <div id="yrModal">
       <div id="cont" style="text-align: center;">
           <br>
           <h1>상담예약</h1>
           <div>
           <label>시작일</label>
           <input type="text" id="schStart" value="" >
           <select id="schTime">
           <option value="09:00">09시</option>
           <option value="10:00">10시</option>
           <option value="11:00">11시</option>
           <option value="12:00">12시</option>
           <option value="13:00">13시</option>
           <option value="14:00">14시</option>
           <option value="15:00">15시</option>
           <option value="16:00">16시</option>
           <option value="17:00">17시</option>
           <option value="18:00">18시</option>
           <option value="19:00">19시</option>
           <option value="20:00">20시</option>
           <option value="21:00">21시</option>
           </select>
           <br>
           </div>      
           <div>     
           <label style="margin-right: 14px;">제목</label>
           <input type="text" id="schTitle" value="" style="width: 40%;">
           </div>
           <button onclick="fCalAdd()">상담신청</button>
           <button onclick="fMClose()">나가기</button>
       </div>
    </div>
    <!-- 캘린더 모달1 끝 -->
	<!-- 캘린더 시작 -->
	<input type="hidden" id="teacherId">
	<div id="Wrapper">
        <div id='calendar'></div>
    </div>
	<!-- 캘린더 끝 -->
	</div>
	<!-- 상담리스트 시작 -->
    <div class="col-lg-4">
<!-- 상담완료내역 헤더시작 -->
     <div class="card mb-3" style="height:30%;">
       <div class="card-header bg-body-tertiary d-flex justify-content-between align-items-center">
         <h5 class="mb-0">상담완료목록</h5>
       </div>
<!-- 상담내역 헤더 끝 -->
<!-- 상담리스트 바디시작 -->
		<c:choose>
		<c:when test="${fn:length(fConsultingList) eq 0 }">
		<div class="card-body">
	         <div class="d-flex">
	           <div class="flex-1 ms-2">
	             <h6 class="mb-0">"상담완료 목록이 없습니다"</h6>
	           </div>
	         </div>
	       </div>
		</c:when>
		<c:otherwise>
	       <div class="card-body">
       		<c:forEach items="${fConsultingList }" var="fConsulting">
	         <div class="d-flex">
	           <div class="flex-1 ms-2">
	             <h6 class="mb-0">${fn:substring(fConsulting.consultingDe,0,10) } :     ${fConsulting.consultingReqstCntnts }  - ${fConsulting.teacher.teacherName } </h6>
	           </div>
	         </div>
         	</c:forEach>
	       </div>
		</c:otherwise>
		</c:choose>
     </div>
     <div class="card mb-3" style="height:30%;">
       <div class="card-header bg-body-tertiary d-flex justify-content-between align-items-center">
         <h5 class="mb-0">상담진행목록</h5>
       </div>
<!-- 상담내역 헤더 끝 -->
<!-- 상담리스트 바디시작 -->
       <c:choose>
		<c:when test="${fn:length(yConsultingList) eq 0 }">
		<div class="card-body">
	         <div class="d-flex">
	           <div class="flex-1 ms-2">
	             <h6 class="mb-0">"상담완료 목록이 없습니다"</h6>
	           </div>
	         </div>
	       </div>
		</c:when>
		<c:otherwise>
	       <div class="card-body">
		      <c:forEach items="${yConsultingList }" var="yConsulting">
		         <div class="d-flex">
		           <div class="flex-1 ms-2">
		             <h6 class="mb-0">${fn:substring(yConsulting.consultingDe,0,10) } : ${yConsulting.consultingReqstCntnts }  - ${yConsulting.teacher.teacherName } </h6>
		           </div>
		         </div>
	         </c:forEach>
	       </div>
		</c:otherwise>
		</c:choose>
     </div>
     <div class="card mb-3" style="height:30%;">
       <div class="card-header bg-body-tertiary d-flex justify-content-between align-items-center">
         <h5 class="mb-0">상담대기중목록</h5>
       </div>
<!-- 상담내역 헤더 끝 -->
<!-- 상담리스트 바디시작 -->
        <c:choose>
		<c:when test="${fn:length(dConsultingList) eq 0 }">
		<div class="card-body" >
	         <div class="d-flex">
	           <div class="flex-1 ms-2">
	             <h6 class="mb-0">"상담완료 목록이 없습니다"</h6>
	           </div>
	         </div>
	       </div>
		</c:when>
		<c:otherwise>
	       <div class="card-body">
		       <c:forEach items="${dConsultingList }" var="dConsulting">
		         <div class="d-flex">
		           <div class="flex-1 ms-2">
		             <h6 class="mb-0">${fn:substring(dConsulting.consultingDe,0,10) } : ${dConsulting.consultingReqstCntnts }  - ${dConsulting.teacher.teacherName } </h6>
		           </div>
		         </div>
	         </c:forEach>
	       </div>
		</c:otherwise>
		</c:choose>
     </div>
   </div>
</div>

<!-- 상담 스크립트 -->
<script src="${pageContext.request.contextPath}/resources/js/app/school/studentConsulting.js"></script>

<!-- 캘린더 -->               
<script src="${pageContext.request.contextPath}/resources/public/vendors/fullcalendar/index.global.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/public/vendors/flatpickr/flatpickr.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/public/vendors/dayjs/dayjs.min.js"></script>