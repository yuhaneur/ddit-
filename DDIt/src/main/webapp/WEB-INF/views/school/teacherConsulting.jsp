<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<style>
	#journalDetailModal{
		position: fixed;
        width:21vw;
        height:33vh; 
        left:1074px;
        top:-769px;
        background-color:#FCFCFC;
        z-index: 2000;
        display: none;
        overflow: auto;
	}
</style>





<input type="hidden" id="classInfo" value="${classInfo }">
<input type="hidden" id="userId" value="${userId }">
<div class="row gx-3">
  <div class="col-xxl-10 col-xl-9" style="height: 600px;">
    <div class="card" id="allContactTable" style="height: 100%;"  data-list="{&quot;valueNames&quot;:[&quot;name&quot;,&quot;phone-number&quot;,&quot;report&quot;,&quot;subscription&quot;,&quot;social&quot;],&quot;page&quot;:11,&quot;pagination&quot;:true,&quot;fallback&quot;:&quot;contact-table-fallback&quot;}">
      <div class="card-header border-bottom border-200 px-0">
        <div class="d-lg-flex justify-content-between">
          <div class="row flex-between-center gy-2 px-x1">
            <div class="col-auto pe-0">
              <h6 class="mb-0">이름 검색</h6>
            </div>
            <div class="col-auto">
              <form>
                <div class="input-group input-search-width">
                  <input class="form-control form-control-sm shadow-none search" type="search" placeholder="Search  by name" aria-label="search">
                  <button class="btn btn-sm btn-outline-secondary border-300 hover-border-secondary"><svg class="svg-inline--fa fa-search fa-w-16 fs-10" aria-hidden="true" focusable="false" data-prefix="fa" data-icon="search" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z"></path></svg><!-- <span class="fa fa-search fs-10"></span> Font Awesome fontawesome.com --></button>
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
                <th class="text-800 sort align-middle ps-2" data-sort="name">이름</th>
                <th class="text-800 sort align-middle pe-5" data-sort="report">상담시간</th>
                <th class="text-800 sort align-middle pe-5" data-sort="phone-number">상담내용</th>
                <th class="text-800 sort align-middle text-end" data-sort="subscription">수락여부</th>
              </tr>
            </thead>
            <tbody class="list" id="table-contact-body">
            <c:forEach items="${consultingList }" var="consulting">
            <tr>
                <td class="align-middle name white-space-nowrap pe-5 ps-2">
                  <div class="d-flex align-items-center gap-2 position-relative">
                    <h6 class="mb-0">${consulting.student.studentName }</h6>
                  </div>
                </td>
                <td class="align-middle report">${fn:substring(consulting.consultingDe,5,16) }</td>
                <td class="align-middle phone-number font-sans-serif white-space-nowrap">${consulting.consultingReqstCntnts}</td>
                <td class="align-middle subscription fs-9 text-end">
                <c:choose>
					<c:when test="${consulting.consultingConfmAt eq 'D'}">
		                <button class="btn btn-success me-1 mb-1" type="button" data-consulting-no="${consulting.consultingNo }" onclick="updateConfmAt('Y')">수락</button>
		                <button class="btn btn-danger me-1 mb-1" type="button" data-consulting-no="${consulting.consultingNo }" onclick="updateConfmAt('N')">거절</button>
					</c:when>
					<c:otherwise>
						<button class="btn btn-primary me-1 mb-1" type="button" data-consulting-no="${consulting.consultingNo }" onclick="endConsulting(this)">완료</button>
					</c:otherwise>                
                </c:choose>
                </td>
              </tr>
            </c:forEach>
              </tbody>
          </table>
          <div class="text-center d-none" id="contact-table-fallback">
            <p class="fw-bold fs-8 mt-3">No contact found</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <!-- 상담일지 목록 -->
  <div class="col-xxl-2 col-xl-3" style="height: 600px;">
    <div class="offcanvas offcanvas-end offcanvas-filter-sidebar border-0 dark__bg-card-dark h-auto rounded-xl-3" style="height: 100%;" tabindex="-1" id="allContactOffcanvas" aria-labelledby="allContactOffcanvasLabel">
      <div class="offcanvas-header d-flex flex-between-center d-xl-none bg-body-tertiary">
        <h6 class="fs-9 mb-0 fw-semi-bold">Filter</h6>
        <button class="btn-close text-reset d-xl-none shadow-none" id="allContactOffcanvasLabel" type="button" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      <div class="card scrollbar shadow-none shadow-show-xl">
        <div class="card-header bg-body-tertiary d-none d-xl-block">
          <h6 class="mb-0">상담일지목록</h6>
        </div>
        <div class="card-body" style="height: 740px;">
        <ul>
          <c:forEach items="${consultingJournalList }" var="journal">
			<li onclick="detailJournal(this)" data-consulting-journal-no="${journal.consultingJournalNo }">
			${fn:substring(journal.consulting.consultingDe,2,10)} : ${journal.consulting.student.studentName } <br>
			${journal.consulting.consultingReqstCntnts }
			</li>          	
          </c:forEach>
        </ul>
        </div>
      </div>
    </div>
  </div>
</div>





<!-- 상담일지 작성 -->
 <!--  <div class="card-body p-0 dflex"> --> 
	<form class="row gx-2" id="consultingJournalForm" style="margin: 0; width: 84%;">
		<input type="hidden" name="consultingNo">
		<div class="col-sm-4 mb-3">
			<label class="form-label" >이름</label>
			<input class="form-control border-0 rounded-0 outline-none px-x1" name="studentName" type="text" placeholder="이름" readonly="readonly">
		</div>
		<div class="col-sm-4 mb-3">
			<label class="form-label" >제목</label>
			<input class="form-control border-0 rounded-0 outline-none px-x1" name="consultingReqstCntnts" type="text" placeholder="제목" readonly="readonly">
		</div>
		<div class="col-sm-4 mb-3">
		    <label class="form-label" >상담일</label>
		    <input class="form-control"  name="consultingDe" type="text" readonly="readonly">
	    </div>
		<div class="min-vh-20 email-compose-textarea" style="max-width:100%;">
			<textarea name="consultingCn" class="shadow-none form-control rounded-0 resize-none px-x1 border-y-0 border-200" placeholder="내용을 입력해주세요." rows="4"></textarea>
		</div>
		<div>
		    <button class="btn btn-primary" type="button" id="insertConsultingJournal">등록</button>
		</div>
	</form>
  <!-- </div>  -->

<!-- 상담일지 상세조회 모달 시작 -->
<div class="modal-content position-relative" id="journalDetailModal">
  <div class="modal-body p-0">
    <div class="rounded-top-3 py-3 ps-4 pe-6 bg-body-tertiary">
      <h4 class="mb-1">상담일지내용</h4>
    </div>
    <div class="p-4 pb-0">
      <form id="journalDetailForm">
      	<input type="hidden" name="consultingJournalNo">
        <div class="mb-3">
          <label class="col-form-label">상담일지내용:</label>
          <textarea class="form-control" name="consultingCn"rows="5"></textarea>
        </div>
      </form>
    </div>
  </div>
  <div class="modal-footer">
    <button class="btn btn-secondary" type="button" onclick="outJournalModal()">나가기</button>
    <button class="btn btn-primary" type="button" onclick="updateJournalModal()">수정하기</button>
  </div>
</div>
<!-- 상담일지 상세조회 모달 끝-->
<script src="${pageContext.request.contextPath }/resources/js/app/school/teacherConsulting.js"></script>