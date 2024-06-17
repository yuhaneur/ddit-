<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<!-- 시간나오는거 CSS -->
<link href="${pageContext.request.contextPath}/resources/public/vendors/flatpickr/flatpickr.min.css" rel="stylesheet" />
<!-- chart.js -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<style>
	#sulmoonInsertModal{
		position: fixed;
        width:57vw;
        height:80vh;
        left:350px;
        top:120px;
        background-color:white;
        z-index: 1000;
        display: none;
        overflow: auto;
	}
	#sulmoonDetailModal{
		position: fixed;
        width:57vw;
        height:80vh;
        left:350px;
        top:120px;
        background-color:white;
        z-index: 1000;
        display: none;
        overflow: auto;
	}
	#sulmoonStatisticsModal{
		position: fixed;
        width:74vw;
        height:100vh;
        left:350px;
        top:138px;
/*         background-color:white; */
        z-index: 1000;
        display: none;
        overflow: auto;
	}
	.myChart {
        width: 500px;
        height: 300px;
    }
</style>
<security:authentication property="principal" var="principal" />
<input type="hidden" id="userId" value="${principal.realUser.userId }">
<!-- 설문작성 시작 -->
<c:if test="${not empty result }">
	<input type="hidden" id="result" value="${ result}">
	<script>
		Swal.fire({
			title: result.value,
			text: result.value,
			icon: 'success',
		})
	</script>
</c:if>
<input type="hidden" id="classCode" value="${classCode }">
<!-- 설문통계페이지 모달 시작 -->
<div id="sulmoonStatisticsModal">

</div>
<!-- 설문통계페이지 모달 끝 -->
<!-- 설문작성 끝 -->
<!-- 설문리스트 시작 -->
<div class="card" id="dd">
  <div class="card-header d-flex">
    <h5 class="mb-0">설문목록</h5>
    <button class="btn btn-primary" id="insertBtn" style="margin-left: 1360px;">등록하기</button>
  </div>
  <div class="card-body border-top p-0" style="height: 831px;">
  <!-- Date 타입 날짜비교하기위한 변형 -->
  <fmt:formatDate var="today" value="${date }" pattern="yyyy-MM-dd"/>
  <c:forEach items="${qusList }" var="qus">
    <div class="row g-0 align-items-center border-bottom py-2 px-3">
    	<c:choose>
    	<c:when test="${qus.qustnrEndDt lt today }">
      		<div class="col-md-1 pe-3"><span class="badge badge-subtle-danger rounded-pill">완료</span></div>
    	</c:when>
    	<c:otherwise>
    		<div class="col-md-1 pe-3"><span class="badge badge-subtle-success rounded-pill">진행중</span></div>
    	</c:otherwise>
    	</c:choose>
      <div class="col-md mt-1 mt-md-0" onclick="sulmoonDetailModalOpen(this)" data-qus-no="${qus.qustnrNo }"><code>${qus.qustnrSj }</code></div>
      <div class="col-md-2">
        <button class="btn btn-primary" data-qus-no="${qus.qustnrNo }" onclick="openStatistics(this)">통계보기</button>
      </div>
      <div class="col-md-auto">
        <p class="mb-0">${qus.qustnrCreatDt }</p>
      </div>
    </div>
  </c:forEach>
  </div>
</div>
<!-- 설문리스트 끝 -->

<!-- 설문대상자 추가 모달 시작 -->
<div class="modal fade" id="error-modal" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document" style="max-width: 800px">
    <div class="modal-content position-relative">
      <div class="position-absolute top-0 end-0 mt-2 me-2 z-1">
        <button class="btn-close btn btn-sm btn-circle d-flex flex-center transition-base" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body p-0">
        <div class="rounded-top-3 py-3 ps-4 pe-6 bg-body-tertiary">
          <h4 class="mb-1" id="modalExampleDemoLabel">설문대상자추가</h4>
        </div>
        <div class="col-xxl-12 col-xl-9">
           <div class="card" id="allContactTable" data-list="{&quot;valueNames&quot;:[&quot;name&quot;,&quot;phone-number&quot;,&quot;report&quot;,&quot;subscription&quot;,&quot;social&quot;],&quot;page&quot;:11,&quot;pagination&quot;:true,&quot;fallback&quot;:&quot;contact-table-fallback&quot;}">
             <div class="card-header border-bottom border-200 px-0">
               <div class="d-lg-flex justify-content-between">
                 <div class="row flex-between-center gy-2 px-x1">
                   <div class="col-auto pe-0">
                     <h6 class="mb-0">이름검색</h6>
                   </div>
                   <div class="col-auto">
                     <form>
                       <div class="input-group input-search-width">
                         <input class="form-control form-control-sm shadow-none search" type="search" placeholder="Search  by name" aria-label="search">
                         <button class="btn btn-sm btn-outline-secondary border-300 hover-border-secondary"><svg class="svg-inline--fa fa-search fa-w-16 fs-10" aria-hidden="true" focusable="false" data-prefix="fa" data-icon="search" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z"></path></svg></button>
                       </div>
                     </form>
                   </div>
                 </div>
               </div>
             </div>
             <div class="card-body p-0">
               <div class="table-responsive scrollbar">
                 <table class="table table-sm fs-10 mb-0">
                   <thead class="bg-body-tertiary">
                     <tr>
                       <th class="py-2 fs-9 pe-2" style="width: 28px;">
                         <div class="form-check d-flex align-items-center">
                           <input class="form-check-input" onclick="selectAll(this)" type="checkbox">
                         </div>
                       </th>
                       <th class="text-800 sort align-middle ps-2" colspan="10">전체선택</th>
                     </tr>
                   </thead>
                   <form id="selectList">
                   <tbody class="list"  id="table-contact-body">
		               <tr>
	                   <c:forEach items="${qustnrSelectorList }" var="user" varStatus="status">
		                   	<td class="align-middle fs-9 py-3">
								<div class="form-check mb-0">
									<input class="form-check-input" name="userId" type="checkbox">
									<input type="hidden" class="userId" value="${user.userId}">
								</div>
							</td>
							<td class="align-middle name white-space-nowrap pe-5 ps-2">
								<div class="d-flex align-items-center gap-2 position-relative">
									<h6 class="teacherName mb-0">${user.userName}</h6>
								</div>
							</td>
						<c:if test="${status.count%5 eq 0 }"></tr><tr></c:if>
	                   </c:forEach>
						</tr>
                   </tbody>
                   </form>
                 </table>
               </div>
             </div>
           </div>
         </div>
      </div>
      <div class="modal-footer">
        <button class="btn btn-secondary" type="button" id="closeSelecter" data-bs-dismiss="modal">닫기</button>
        <button class="btn btn-primary" type="button" onclick="addSelecter()">추가하기</button>
      </div>
    </div>
  </div>
</div>
<!-- 설문대상자 추가 모달 끝 -->


<!-- 설문등록 모달 시작	-->
<div id="sulmoonInsertModal">
	<form id="qustnrForm" method="post" style="height: 94%;">
		<div class="card-body">
			<div class="row gx-2">
				<div class="col-5 mb-4">
					<h4>설문제목</h4>
					<input class="form-control" name="userId" type="hidden" value="${principal.realUser.userId }">
					<input class="form-control" name="qustnrSj" type="text">
				</div>
				<div class="col-3 mb-4">
					<h4>마감일</h4>
					<input class="form-control datetimepicker" type="text" name="qustnrEndDt" placeholder="dd/mm/yy"
						data-options='{"disableMobile":true}' />
				</div>
				<div class="col-3 mb-4">
					<button class="btn btn-primary" type="button" data-bs-toggle="modal" data-bs-target="#error-modal">대상자 추가</button>
				</div>
				<div class="col-12 mb-2">
					<button class="btn btn-primary btn-sm" type="button" onclick="addSurvey()">
						<svg class="svg-inline--fa fa-plus fa-w-14 me-2" aria-hidden="true"	focusable="false" data-prefix="fas" data-icon="plus" role="img"
							xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"
							data-fa-i2svg="">
							<path fill="currentColor" d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg>
						설문내용추가
					</button>
				</div>
				<!-- 설문내용 추가버튼눌르면 추가로 생길것들 -->
				<div id="surveyContent" class="row">
					<div class="row">
						<div class="col-6 mb-3">
							<h5>설문내용</h5>
							<input class="form-control" name="qustnrCn" type="text">
						</div>
						<div class="col-2">
							<h5>답변유형</h5>
							<select class="form-select" name="answerType" onchange="surveyAnswer(this)">
							<c:forEach items="${codeGrList }" var="codeGr">
								<option value="${codeGr.qustnrAnswerCodeGr }">${codeGr.qustnrAnswerCodeNm }</option>
							</c:forEach>
							</select>
						</div>
						<!-- 답변유형 선택했을때 그거에 맞게 인풋타입 나와야됨 -->
						<div class="surveyAnswer col-12 mb-1 d-flex">
						
						</div>
					</div>
				</div>
				
				<!-- 설문내용 추가버튼눌르면 추가로 생길것들 끝 -->
			</div>
		</div>
	</form>
	<div class="d-flex">
		<button class="btn btn-danger me-1 mb-1" type="button" onclick="cancelModal()">취소하기</button>
		<button class="btn btn-success me-1 mb-1" type="button" id="qustnrInsertBtn">등록하기</button>
	</div>
</div>
<!-- 설문등록 끝	-->

<!-- 설문 디테일 모달 시작 -->
<div id="sulmoonDetailModal">
<div class="card">
  <form id="sulmoonDetailModalBody">
  
  </form>
  <div class="card-footer d-flex align-items-center bg-body-tertiary">
    <h5 class="d-inline-block me-3 mb-0 fs-10">제출하시겠습니까?</h5>
    <button class="btn btn-falcon-default btn-sm" onclick="qustnrRspns()">Yes</button>
    <button class="btn btn-falcon-default btn-sm ms-2" onclick="closeDetailModal()">No</button>
  </div>
</div>
</div>
<!-- 설문 디테일 모달 끝 -->

<!-- 설문등록 스크립트 -->
<script src="${pageContext.request.contextPath }/resources/js/app/school/sulmoonInsert.js"></script>
<!-- 설문 차트 스크립트 -->
<script src="${pageContext.request.contextPath }/resources/js/app/school/sulmoonChart.js"></script>

<!-- feather 아이콘 -->
<script	src="https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js"></script>

<!-- 시간 나오는거 -->
<script	src="${pageContext.request.contextPath}/resources/public/vendors/flatpickr/flatpickr.min.js"></script>

<!-- e차트 -->
<script src="${pageContext.request.contextPath}/resources/public/vendors/echarts/echarts.min.js"></script>
