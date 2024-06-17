<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.or.ddit.message.controller.MessageController" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<security:authentication property="principal" var="principal"/>

<script>
	const userId = "${principal.realUser.userId }";
	const cPath = document.body.dataset.contextPath;
</script>

    <div class="card">
          <!-- 
          			======================== 쪽지 검색 ======================= 
          -->
          <div class="card mb-3">
                <div class="card-header position-relative">
	                <h3 class="mb-0 mt-1">휴 지 통</h3>
	                <div class="bg-holder d-none d-md-block bg-card" style="background-image:url(/resources/public/assets/img/illustrations/corner-6.png);"></div>
                </div>
                <div class="card-body pt-0 pt-md-3">
                  <div class="row g-3 align-items-center">
                    <div class="col">
                      <form class="position-relative">
                        <input class="form-control form-control-sm search-input lh-1 rounded-2 ps-4" type="search" placeholder="Search..." aria-label="Search" style="width: 1000px;">
                        <div class="position-absolute top-50 start-0 translate-middle-y ms-2">
                        	<svg class="svg-inline--fa fa-search fa-w-16 text-400 fs-10" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="search" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="">
	                        	<path fill="currentColor" d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z">
	                        	</path>
                        	</svg></div>
                      </form>
                    </div>
                        <button class="btn btn-falcon-primary btn-sm px-3" type="button" style="width: 150px;">검색</button>
                    <div class="col position-sm-relative position-absolute top-0 end-0 me-3 me-sm-0 p-0">
                      <div class="row g-0 g-md-3 justify-content-end">
                        <div class="col-auto">
                          <form class="row gx-2">
                            <div class="col-auto d-none d-lg-block">
                            	<small class="fw-semi-bold">정렬</small>
                            </div>
                            <div class="col-auto">
                              <select class="form-select form-select-sm" aria-label="Bulk actions">
                                <option value="mSj">제목</option>
                                <option value="mId">아이디</option>
                              </select>
                            </div>
                          </form>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
          <!-- 쪽지 검색 끝 -->
            <div class="card-header" >
              <div class="row align-items-center">
                <div class="col d-flex align-items-center">
                  <div class=" form-check mb-0 d-none d-sm-block">
                    <input onclick="messageChkAll(this)" class="messageChkAll form-check-input checkbox-bulk-select" type="checkbox" data-bulk-select="{&quot;body&quot;:&quot;emails&quot;,&quot;actions&quot;:&quot;emails-actions&quot;}">
                  </div>
                  <button class="btn btn-falcon-default btn-sm ms-sm-1" type="button" onclick="location.reload()">
                  	<svg class="svg-inline--fa fa-redo fa-w-16" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="redo" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="">
                  		<path fill="currentColor" d="M500.33 0h-47.41a12 12 0 0 0-12 12.57l4 82.76A247.42 247.42 0 0 0 256 8C119.34 8 7.9 119.53 8 256.19 8.1 393.07 119.1 504 256 504a247.1 247.1 0 0 0 166.18-63.91 12 12 0 0 0 .48-17.43l-34-34a12 12 0 0 0-16.38-.55A176 176 0 1 1 402.1 157.8l-101.53-4.87a12 12 0 0 0-12.57 12v47.41a12 12 0 0 0 12 12h200.33a12 12 0 0 0 12-12V12a12 12 0 0 0-12-12z"></path>
                  	</svg>
                  </button>

                  <button onclick="messageChkDelete(this)" class="btn btn-tertiary btn-sm" type="button" data-bs-toggle="tooltip" data-bs-placement="top" title="삭제">
                  	<span class="fas fa-trash"></span>
                  </button>
                  <button onclick="messageChkImportant(this)" class="btn btn-tertiary btn-sm" type="button" data-bs-toggle="tooltip" data-bs-placement="top" title="보관">
                  	<span class="fas fa-archive"></span>
                  </button>
                  
                </div>
                <div class="col-auto">
                	<a class="btn btn-falcon-primary btn-sm" data-user="\${userId }" href="${pageContext.request.contextPath }/message/writeForm.do">
                		<svg class="svg-inline--fa fa-plus fa-w-14 me-1" data-fa-transform="shrink-3" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="plus" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg="" style="transform-origin: 0.4375em 0.5em;">
	                		<g transform="translate(224 256)">
	                			<g transform="translate(0, 0)  scale(0.8125, 0.8125)  rotate(0 0 0)">
	                				<path fill="currentColor" d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z" transform="translate(-224 -256)">
	                				</path>
                				</g>
                			</g>
                		</svg>
                	쪽지 쓰기</a>
             	</div>
              </div>
            </div>

            <!--
              ================================= 쪽지 리스트 내용 범위 시작 =================================
            -->
            
           	<div id="list-body" class="list-body" style="height: 700px;">
					<!-- 쪽지리스트 들어가는 자리 -->
	        </div>
	            <!--
	              ================================= 쪽지 리스트 내용 범위 끝 =================================
	            -->
            <div id="paging-area"  class="paging-area">
              <!-- 페이징 출력 위치 -->
            </div>
      	</div>
          
<form:form 
	action="<c:url value='/message/list.do'/>" id="searchForm">
	<input type="hidden" name="searchType" /> 
	<input type="hidden" name="searchWord" /> 
	<input type="hidden" name="currentPage" value="1" />
</form:form>

<script>
/* 
$("[name='searchType']").val("${condition.searchType}")
$("[name='searchWord']").val("${condition.searchWord}")
function paging(page) {
	searchForm.currentPage.value = page;
	$searchForm.submit();
}

const $searchForm = $("#searchForm");
$("#searchBtn").on("click", function(event) {
	let $searchUI = $(this).parents("#searchUI");
	$searchUI.find(":input[name]").each(function(idx, ipt) {
		let name = this.name;
		let value = $(this).val();
		searchForm[name].value = value;
	});
	$searchForm.submit();
});
*/
</script>

<!-- 메세지 리스트 비동기 페이징 -->
<script src="${pageContext.request.contextPath }/resources/js/app/message/messageDel.js"></script>