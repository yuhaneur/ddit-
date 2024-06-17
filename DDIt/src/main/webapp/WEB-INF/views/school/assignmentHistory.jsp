<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<link href="${pageContext.request.contextPath}/resources/css/assignment.css" rel="stylesheet">

<style>
	#assignmentInsertModal{
		position: fixed;
        width:42vw;
        height:30vh;
        left:670px;
        top:163px;
        background-color:#e6f1ed;
        z-index: 1000;
        display: none;
        overflow: auto;
	}
	#assignmentDetailModal{
		position: fixed;
        width:44vw;
        height:50vh;
        left:600px;
        top:163px;
        background-color:#FCFCFC;
        z-index: 1000;
        display: none;
        overflow: auto;
	}
	#submitAssignmentModal{
		position: fixed;
        width:21vw;
        height:23vh;
        left:1577px;
        top:163px;
        background-color:#FCFCFC;
        z-index: 2000;
        display: none;
        overflow: auto;
	}
	
</style>
<input type="hidden" id="userId" value="${userId }">
<input type="hidden" id="classCode" value="${classCode }">
<div>
	<div style="float: right; margin-right: 23px;">
		<button class="btn btn-primary me-1 mb-1"onclick="insertAssignmentBtn()">과제등록</button>
	</div>
	<div class="dbE-zlo">
	    <div class="v9T-o6g bFjUmb-4sk">
	        <div class="qyN-ek2">
	            <div class="PFL-ylv style-ywYSY" id="style-ywYSY">
	                <div class="VVn-k3g ra2-ko3 WFU-kie"></div>
	            </div>
	            <div class="T4t-mdo">
	                <h1 class="tNG-6dm YrFhrf-rs2 YVv-x9z" style="">${classVo.className}-${classVo.edcCrseRound }회차</h1>
	                <div class="qFm-v3s z3vRcc-wik YVv-x9z">${fn:substring(classVo.classCreationDe,0,4) }년 ${fn:substring(classVo.classCreationDe,5,7) }월반</div>
	            </div>
	        </div>
	    </div>
	    <div class="M7z-rca">
	        <main class="Sgw-zjj" style="height : 800px; background-color: #F6F6F6;" >
	            <div>
	                <div></div>
	            </div>
	            <section style="padding: 0;">
	            <c:forEach items="${assignmentList}" var="assignment" varStatus="status">
	            <div class="accordion" id="accordionExample">
				  <div class="accordion-item">
				    <h2 class="accordion-header" id="heading${status.index }">
				      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse${status.index }" aria-expanded="true" aria-controls="collapse1">
				      <div class="bxp-zaj qJJ-6jd MwO-izd bFjUmb-o2v Fh2-qoa"><svg focusable="false" width="24" height="24" viewBox="0 0 24 24" class=" NMm5M">
	                                        <path d="M18 2H6c-1.1 0-2 .9-2 2v16c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2V4c0-1.1-.9-2-2-2zm0 18H6V4h2v8l2.5-1.5L13 12V4h5v16z"></path>
	                                    </svg></div>
				      ${assignment.assignmentSj}
				      </button>
				    </h2>
				    <div class="accordion-collapse collapse collapse" data-assignment-code="${assignment.assignmentCode }" id="collapse${status.index }" aria-labelledby="heading${status.index }" data-bs-parent="#accordionExample">
				      <div class="accordion-body" style="display:flex;"></div>
				    </div>
				  </div>
				</div>
				</c:forEach>
	            </section>
            </main>
		</div>
	</div>
</div>

<!-- 과제등록 모달 시작 -->
<div class="card-body p-0 " id="assignmentInsertModal">
	<form class="row gx-2" enctype="multipart/form-data" id="assignmentInsertForm" style="margin: 0;">
		<div class="col-sm-4 mb-3">
			<label class="form-label" for="basic-form-dob">제목</label>
			<input class="form-control border-0 rounded-0 outline-none px-x1" name="assignmentSj" type="text" placeholder="제목" />
		</div>
		<div class="col-sm-4 mb-3">
		    <label class="form-label" for="basic-form-dob">마감일</label>
		    <input class="form-control" id="basic-form-dob" name="assignmentEndDe" type="date" />
	    </div>
		<div class="col-sm-4 mb-3">
		    <label class="form-label" for="basic-form-dob">파일</label>
		    <input class="form-control" id="basic-form-dob" name="assignmentFiles" type="file" multiple="multiple" />
	    </div>
		<div class="min-vh-20 email-compose-textarea" style="max-width:100%;">
			<textarea name="assignmentCn" class="shadow-none form-control rounded-0 resize-none px-x1 border-y-0 border-200" placeholder="내용을 입력해주세요." rows="4"></textarea>
		</div>
		<div class="col-sm-4 mb-3">
		    <button id="insertAssignmentBtn" type="button">등록</button>
		    <button id="outModalBtn">취소</button>
		</div>
	</form>
</div>
<!-- 과제등록 모달 끝 -->

<!-- 과제 디테일 모달 시작-->
<div class="fJ1Vac snipcss-kf86I" id="assignmentDetailModal">
</div>
<!-- 과제 디테일 모달 끝-->
<!-- 과제 제출모달 시작 -->
<div class="fJ1Vac snipcss-kf86I" id="submitAssignmentModal">
	<form id="submitForm" enctype="multipart/form-data">
		<input type="text" id="assCode" name="assignmentCode">
		<input class="form-control" name="assignmentHistFiles" type="file" multiple="multiple" />
		<textarea name="assignmentPresentnCn" class="shadow-none form-control rounded-0 resize-none px-x1 border-y-0 border-200" placeholder="내용을 입력해주세요." rows="4"></textarea>
	</form>
	<button class="btn btn-primary" id="submitBtn">제출</button>
	<button class="btn btn-primary">취소</button>
</div>
<!-- 과제 제출모달 끝 -->
<script src="${pageContext.request.contextPath }/resources/js/app/school/assignmentHistory.js"></script>
    