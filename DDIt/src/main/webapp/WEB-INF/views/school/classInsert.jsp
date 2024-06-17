<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <!-- 시간나오는거 CSS -->
<link href="${pageContext.request.contextPath}/resources/public/vendors/flatpickr/flatpickr.min.css" rel="stylesheet" />
<style>
	.mask {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0);
      z-index: 9999;
      opacity: .5;
      transition: 0.5s ease;
    }
    .loadingImg {
      position: relative;
      top: 40vh;
      transform: translateY(-50%) translateX(150%); 
    }
    .loadingText{
      position: relative;
      transform: translateY(400%); 
    }
</style>
<div class="card mb-3" style="height: 882px;">
  <div class="card-header">
    <h5 class="mb-0">클래스등록</h5>
  </div>
  <div class="card-body bg-body-tertiary">
      <div class="row gx-2">
      	<div class="col-2">
			<h6>교육과정명</h6>
			<select class="form-select" id="edcCord" name="edcName" >
			<option value=>전체</option>
			<c:forEach items="${edcCrseList }" var="edcCrse">
				<option value="${edcCrse.edcCrseCode }">${edcCrse.edcCrseName }</option>
			</c:forEach>
			</select>
		</div>
      	<div class="col-2">
			<h6>강의실</h6>
			<select class="form-select" id="edcName" name="edcName" >
				<c:forEach items="${lectureRoomList }" var="lectureRoom">
				<option value="${lectureRoom.lectureRoomNo }">${lectureRoom.lectureRoomName }</option>
				</c:forEach>
			</select>
		</div>
      	<div class="col-2">
			<h6>정원</h6>
			<input class="form-control" id="classNmpr"  type="number">
		</div>
		
		<div class="col-2">
	        <h6>클래스시작일</h6>
	      	<input class="form-control datetimepicker" id="datepicker1" type="text" placeholder="dd/mm/yy" data-options='{"disableMobile":true}' onchange="makeEndDate(this)" />
        </div>
        <div class="col-2">
          	<h6>클래스종료일</h6>
    		<input class="form-control datetimepicker" id="datepicker2" type="text" placeholder="dd/mm/yy" data-options='{"disableMobile":true}' />
        </div>
                  
                  
        <div id="surveyContent" class="row">
			<div class="card-body bg-body-tertiary">
              <div class="tab-content">
                <div class="tab-pane preview-tab-pane active" role="tabpanel" aria-labelledby="tab-dom-0a78c878-1945-4cce-963b-63afa16b5841" id="dom-0a78c878-1945-4cce-963b-63afa16b5841">
                  
                </div>
                <div class="tab-pane code-tab-pane" role="tabpanel" aria-labelledby="tab-dom-1c0ab0ec-04ea-4f19-9227-18fe8dfa31ab" id="dom-1c0ab0ec-04ea-4f19-9227-18fe8dfa31ab">
                  <pre class="scrollbar rounded-1 language-html" style="max-height:420px" tabindex="0"><code class="language-html"><span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>div</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation attr-equals">=</span><span class="token punctuation">"</span>mb-3<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>
				  <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>label</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation attr-equals">=</span><span class="token punctuation">"</span>form-label<span class="token punctuation">"</span></span> <span class="token attr-name">for</span><span class="token attr-value"><span class="token punctuation attr-equals">=</span><span class="token punctuation">"</span>exampleFormControlInput1<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>Email address<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>label</span><span class="token punctuation">&gt;</span></span>
				  <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>input</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation attr-equals">=</span><span class="token punctuation">"</span>form-control<span class="token punctuation">"</span></span> <span class="token attr-name">id</span><span class="token attr-value"><span class="token punctuation attr-equals">=</span><span class="token punctuation">"</span>exampleFormControlInput1<span class="token punctuation">"</span></span> <span class="token attr-name">type</span><span class="token attr-value"><span class="token punctuation attr-equals">=</span><span class="token punctuation">"</span>email<span class="token punctuation">"</span></span> <span class="token attr-name">placeholder</span><span class="token attr-value"><span class="token punctuation attr-equals">=</span><span class="token punctuation">"</span>name@example.com<span class="token punctuation">"</span></span> <span class="token punctuation">/&gt;</span></span>
				  <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>div</span><span class="token punctuation">&gt;</span></span>
				  <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>div</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation attr-equals">=</span><span class="token punctuation">"</span>mb-3<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>
				  <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>label</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation attr-equals">=</span><span class="token punctuation">"</span>form-label<span class="token punctuation">"</span></span> <span class="token attr-name">for</span><span class="token attr-value"><span class="token punctuation attr-equals">=</span><span class="token punctuation">"</span>exampleFormControlTextarea1<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>Example textarea<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>label</span><span class="token punctuation">&gt;</span></span>
				  <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>textarea</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation attr-equals">=</span><span class="token punctuation">"</span>form-control<span class="token punctuation">"</span></span> <span class="token attr-name">id</span><span class="token attr-value"><span class="token punctuation attr-equals">=</span><span class="token punctuation">"</span>exampleFormControlTextarea1<span class="token punctuation">"</span></span> <span class="token attr-name">rows</span><span class="token attr-value"><span class="token punctuation attr-equals">=</span><span class="token punctuation">"</span>3<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span><span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>textarea</span><span class="token punctuation">&gt;</span></span>
				<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>div</span><span class="token punctuation">&gt;</span></span></code></pre>
                </div>
              </div>
            </div>
			<!-- 교육 교사 등록 시작  -->
		<div class="row gx-3">
		<div class="col-xxl-3 col-xl-3">
           <div class="offcanvas offcanvas-end offcanvas-filter-sidebar border-0 dark__bg-card-dark h-auto rounded-xl-3" tabindex="-1" id="allContactOffcanvas" aria-labelledby="allContactOffcanvasLabel">
             <div class="offcanvas-header d-flex flex-between-center d-xl-none bg-body-tertiary">
               <h6 class="fs-9 mb-0 fw-semi-bold">Filter</h6>
               <button class="btn-close text-reset d-xl-none shadow-none" id="allContactOffcanvasLabel" type="button" data-bs-dismiss="offcanvas" aria-label="Close"></button>
             </div>
             <div class="card scrollbar shadow-none shadow-show-xl">
               <div class="card-header bg-body-tertiary d-none d-xl-block">
                 <h6 class="mb-0">담임교사</h6>
               </div>
               <div class="card-body" id="teacherList">
               </div>
             </div>
           </div>
         </div>
			<div class="col-xxl-9 col-xl-9">
              <div class="card" id="allContactTable" data-list="{&quot;valueNames&quot;:[&quot;name&quot;,&quot;phone-number&quot;,&quot;report&quot;,&quot;subscription&quot;,&quot;social&quot;],&quot;page&quot;:11,&quot;pagination&quot;:true,&quot;fallback&quot;:&quot;contact-table-fallback&quot;}">
                <div class="card-header border-bottom border-200 px-0">
                  <div class="d-lg-flex justify-content-between">
                    <div class="row flex-between-center gy-2 px-x1">
                      <div class="col-auto pe-0">
                        <h6 class="mb-0">교사이름검색</h6>
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
                    <div class="border-bottom border-200 my-3"></div>
                    <div class="d-flex align-items-center justify-content-between justify-content-lg-end px-x1">
                      <button class="btn btn-sm btn-falcon-default d-xl-none" type="button" data-bs-toggle="offcanvas" data-bs-target="#allContactOffcanvas" aria-controls="allContactOffcanvas"><svg class="svg-inline--fa fa-filter fa-w-16" data-fa-transform="shrink-4" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="filter" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="" style="transform-origin: 0.5em 0.5em;"><g transform="translate(256 256)"><g transform="translate(0, 0)  scale(0.75, 0.75)  rotate(0 0 0)"><path fill="currentColor" d="M487.976 0H24.028C2.71 0-8.047 25.866 7.058 40.971L192 225.941V432c0 7.831 3.821 15.17 10.237 19.662l80 55.98C298.02 518.69 320 507.493 320 487.98V225.941l184.947-184.97C520.021 25.896 509.338 0 487.976 0z" transform="translate(-256 -256)"></path></g></g></svg><!-- <span class="fas fa-filter" data-fa-transform="shrink-4"></span> Font Awesome fontawesome.com --><span class="ms-1 d-none d-sm-inline-block">Filter</span></button>
                      <div class="bg-300 mx-3 d-none d-lg-block d-xl-none" style="width:1px; height:29px"></div>
                      <div class="d-none" id="table-contact-actions">
                        <div class="d-flex">
                          <button class="btn btn-falcon-default btn-sm ms-2" onclick="addTeacher()" type="button">추가하기</button>
                        </div>
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
                              <input class="form-check-input" id="checkbox-bulk-tickets-select" type="checkbox" data-bulk-select="{&quot;body&quot;:&quot;table-contact-body&quot;,&quot;actions&quot;:&quot;table-contact-actions&quot;,&quot;replacedElement&quot;:&quot;table-contact-replace-element&quot;}">
                            </div>
                          </th>
                          <th class="text-800 sort align-middle ps-2" data-sort="name">이름</th>
                          <th class="text-800 sort align-middle pe-5" data-sort="phone-number">전화번호</th>
                          <th class="text-800 sort align-middle pe-5" data-sort="report">이메일</th>
                        </tr>
                      </thead>
                      <tbody class="list" id="table-contact-body">
                      <c:forEach items="${teacherList }" var="teacher">
                        <tr>
                          <td class="align-middle fs-9 py-3">
                            <div class="form-check mb-0">
                              <input class="form-check-input" type="checkbox"  data-bulk-select-row="data-bulk-select-row">
                            </div>
                          </td>
                          <td class="align-middle name white-space-nowrap pe-5 ps-2">
                            <div class="d-flex align-items-center gap-2 position-relative">
                              <input type="hidden" class="userId" value="${teacher.userId }">
                              <h6 class="teacherName mb-0">${teacher.teacherName }</h6>
                            </div>
                          </td>
                          <td class="align-middle phone-number font-sans-serif white-space-nowrap">${teacher.teacherPhoneno }</td>
                          <td class="align-middle report">${teacher.teacherMail }</td>
                        </tr>
                      </c:forEach>
                      </tbody>
                    </table>
                    <div class="text-center d-none" id="contact-table-fallback">
                      <p class="fw-bold fs-8 mt-3">No contact found</p>
                    </div>
                  </div>
                </div>
                <div class="card-footer d-flex justify-content-center">
                  <button class="btn btn-sm btn-falcon-default me-1 disabled" type="button" title="Previous" data-list-pagination="prev" disabled=""><svg class="svg-inline--fa fa-chevron-left fa-w-10" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chevron-left" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" data-fa-i2svg=""><path fill="currentColor" d="M34.52 239.03L228.87 44.69c9.37-9.37 24.57-9.37 33.94 0l22.67 22.67c9.36 9.36 9.37 24.52.04 33.9L131.49 256l154.02 154.75c9.34 9.38 9.32 24.54-.04 33.9l-22.67 22.67c-9.37 9.37-24.57 9.37-33.94 0L34.52 272.97c-9.37-9.37-9.37-24.57 0-33.94z"></path></svg><!-- <span class="fas fa-chevron-left"></span> Font Awesome fontawesome.com --></button>
                  <ul class="pagination mb-0"><li class="active"><button class="page" type="button" data-i="1" data-page="11">1</button></li><li><button class="page" type="button" data-i="2" data-page="11">2</button></li><li><button class="page" type="button" data-i="3" data-page="11">3</button></li></ul>
                  <button class="btn btn-sm btn-falcon-default ms-1" type="button" title="Next" data-list-pagination="next"><svg class="svg-inline--fa fa-chevron-right fa-w-10" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chevron-right" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" data-fa-i2svg=""><path fill="currentColor" d="M285.476 272.971L91.132 467.314c-9.373 9.373-24.569 9.373-33.941 0l-22.667-22.667c-9.357-9.357-9.375-24.522-.04-33.901L188.505 256 34.484 101.255c-9.335-9.379-9.317-24.544.04-33.901l22.667-22.667c9.373-9.373 24.569-9.373 33.941 0L285.475 239.03c9.373 9.372 9.373 24.568.001 33.941z"></path></svg><!-- <span class="fas fa-chevron-right"></span> Font Awesome fontawesome.com --></button>
                </div>
              </div>
            </div>
           </div>
			<!-- 교육 교사 등록 끝  -->
		</div>
      </div>
  </div>
	  <div>
	      <button class="btn btn-falcon-default me-1 mb-1" type="button" onclick="insertClass()">등록
		  </button>
	      <button class="btn btn-falcon-default me-1 mb-1" type="button" onclick="outInsertClass()">취소
		  </button>
	  </div>
</div>

<div class="mask" style="display: none;">
	<h1 class="loadingText" style="text-align: center;">저장중...</h1>
	<img class="loadingImg" alt="" src="${pageContext.request.contextPath}/resources/images/loadingImg.png">
</div>
<!-- 클래스개설 스크립트 -->
<script src="${pageContext.request.contextPath}/resources/js/app/school/insertClass.js"></script>
<!-- 시간 나오는거 -->
<script
	src="${pageContext.request.contextPath}/resources/public/vendors/flatpickr/flatpickr.min.js"></script>