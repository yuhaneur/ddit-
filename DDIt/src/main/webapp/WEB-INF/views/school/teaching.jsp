<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
    <!-- 부트스트랩 아이콘  -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css" />
    <!-- 수업 상단 시작-->
    
<style>
	.fileImg{
		width: 20px;
		height: 20px;
	}
	#curriList{
		height: 700px;
		overflow: auto;
	}
	
	#fileModal{
		position: fixed;
        width:20vw;
        height:40vh;
        left:75%;
        top:25%;
        background-color:white;
        z-index: 1000;
        display: none;
        overflow: auto;
	}
</style>
<security:authentication property="principal" var="principal" />
<input type="hidden" id="userId" value="${principal.realUser.userId }">
<input type="hidden" id="classCode" value=${classCode }>
<input type="hidden" id="edcCrseCode" value=${sjMappingList[0].sjVO.edcCrseCode }>
<div class="card mb-3">
       <div class="card-header bg-body-tertiary">
         <div class="d-flex flex-between-center">
	        <div class="card-header bg-body-tertiary d-flex flex-between-center py-2" style="width:100%;">
	        	<c:forEach items="${sjMappingList }" var="sjMapping" varStatus="idx">
	            	<button class="btn btn-outline-primary me-7 mb-1 sjbtn${idx.count }" type="button" style="width:20%;" onclick="sjCurriculum(this)" data-sj-no="${sjMapping.sjVO.sjNo }">${sjMapping.sjVO.sjName }</button>
	        	</c:forEach>
	         </div>
         </div>
       </div>
</div>
<!-- 수업 상단 끝-->
<!-- 수업 리스트 시작 -->
<div class="card mb-3">
  <div class="card-header bg-body-tertiary d-flex align-items-center">
    <div class="mb-0 flex-1" style="display:inline;" id="titleSj">수업목차</div>
    <security:authorize access="hasRole('STUDENT')">
    	<div class="flex-2">
	    	<button class="btn btn-dark me-5 mb-1" type="button" style="width:100px;"  onclick="assignmentStudentPage()">과제</button>
    	</div>
    </security:authorize>
    <security:authorize access="hasRole('TEACHER')">
    	<div class="flex-2">
    		<button class="btn btn-dark me-5 mb-1" type="button" style="width:100px;" onclick="assignmentTeacherPage()">과제</button>
    	</div>
    </security:authorize>
  </div>
  <!-- 수업목차리스트 시작-->
  <div class="card-body p-0" id="curriList">
    
  </div>
  <!-- 수업목차리스트 끝-->
  <div class="card-footer text-end py-1 bg-body-tertiary"></div>
</div>
<!-- 수업 리스트 끝 -->
<!-- 파일 모달 시작 -->
<div id="fileModal">

</div>
<!-- 파일 모달 끝 -->

<!-- 수업스크립트 -->
<script src="${pageContext.request.contextPath}/resources/js/app/school/studentClassTeaching.js"></script>
<!-- 왜넣어놨지 -->
<%-- <script src="${pageContext.request.contextPath}/resources/public/vendors/prism/prism.js"></script> --%>

<!-- feather 아이콘 -->
<script src="https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js"></script>
<script>
  feather.replace()
</script>
