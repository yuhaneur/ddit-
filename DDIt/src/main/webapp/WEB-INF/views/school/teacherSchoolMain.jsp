<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!-- 클래스 리스트 헤더 시작 -->
<div class="card mb-3">
  <div class="card-body">
    <div class="row flex-between-center">
      <div class="col-sm-auto mb-2 mb-sm-0">
        <h6 class="mb-0">클래스 목록</h6>
      </div>
    </div>
  </div>
</div>
<!-- 클래스 리스트 헤더 끝 -->

<!-- 클래스 리스트 바디 시작 -->
<div class="card" style="height: 82vh; padding:1%;">
  <div class="card-body p-0 overflow-hidden">
    <div class="row g-0">
    <c:forEach items="${classList }" var="school">
	      <div class="mb-4 col-md-6 col-lg-4" data-class-code="${school.classCode}" onclick="goClass(this)" >
	        <div class="row">
	          <div class="col-sm-5 col-md-4">
	            <div class="position-relative h-sm-100">
	            <img class="img-fluid object-fit-cover w-sm-100 h-sm-100 rounded-1 absolute-sm-centered" src="${pageContext.request.contextPath}/resources/public/assets/img/products/2.jpg" alt="">
	            </div>
	          </div>
	          <div class="col-sm-7 col-md-8">
	            <div class="row">
	              <div class="col-lg-8">
	                <h5 class="mt-3 mt-sm-0">${school.className }-${school.edcCrseRound } 회차</h5>
	                <p class="fs-10 mb-2 mb-md-3">교육과정 :${school.edcCrse.edcCrseName }</p>
	                <ul class="list-unstyled d-none d-lg-block">
	                  <li><svg class="svg-inline--fa fa-circle fa-w-16" data-fa-transform="shrink-12" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="circle" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="" style="transform-origin: 0.5em 0.5em;"><g transform="translate(256 256)"><g transform="translate(0, 0)  scale(0.25, 0.25)  rotate(0 0 0)"><path fill="currentColor" d="M256 8C119 8 8 119 8 256s111 248 248 248 248-111 248-248S393 8 256 8z" transform="translate(-256 -256)"></path></g></g></svg><!-- <span class="fas fa-circle" data-fa-transform="shrink-12"></span> Font Awesome fontawesome.com --><span>담임 : ${school.teacher.teacherName }</span></li>
	                  <li><svg class="svg-inline--fa fa-circle fa-w-16" data-fa-transform="shrink-12" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="circle" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="" style="transform-origin: 0.5em 0.5em;"><g transform="translate(256 256)"><g transform="translate(0, 0)  scale(0.25, 0.25)  rotate(0 0 0)"><path fill="currentColor" d="M256 8C119 8 8 119 8 256s111 248 248 248 248-111 248-248S393 8 256 8z" transform="translate(-256 -256)"></path></g></g></svg><!-- <span class="fas fa-circle" data-fa-transform="shrink-12"></span> Font Awesome fontawesome.com --><span>교육시작일 : ${fn:substring(school.classCreationDe,0,10) }</span></li>
	                  <li><svg class="svg-inline--fa fa-circle fa-w-16" data-fa-transform="shrink-12" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="circle" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="" style="transform-origin: 0.5em 0.5em;"><g transform="translate(256 256)"><g transform="translate(0, 0)  scale(0.25, 0.25)  rotate(0 0 0)"><path fill="currentColor" d="M256 8C119 8 8 119 8 256s111 248 248 248 248-111 248-248S393 8 256 8z" transform="translate(-256 -256)"></path></g></g></svg><!-- <span class="fas fa-circle" data-fa-transform="shrink-12"></span> Font Awesome fontawesome.com --><span>교육종료일 : ${fn:substring(school.classEndDe,0,10) }</span></li>
	                </ul>
	              </div>
	            </div>
	          </div>
	        </div>
	      </div>
      </c:forEach>
    </div>
  </div>
  <div class="card-footer border-top d-flex justify-content-center">
    <button class="btn btn-falcon-default btn-sm me-2" type="button" disabled="disabled" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Prev" data-bs-original-title="Prev"><svg class="svg-inline--fa fa-chevron-left fa-w-10" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chevron-left" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" data-fa-i2svg=""><path fill="currentColor" d="M34.52 239.03L228.87 44.69c9.37-9.37 24.57-9.37 33.94 0l22.67 22.67c9.36 9.36 9.37 24.52.04 33.9L131.49 256l154.02 154.75c9.34 9.38 9.32 24.54-.04 33.9l-22.67 22.67c-9.37 9.37-24.57 9.37-33.94 0L34.52 272.97c-9.37-9.37-9.37-24.57 0-33.94z"></path></svg><!-- <span class="fas fa-chevron-left"></span> Font Awesome fontawesome.com --></button><a class="btn btn-sm btn-falcon-default text-primary me-2" href="#!">1</a><a class="btn btn-sm btn-falcon-default me-2" href="#!">2</a>
    <button class="btn btn-falcon-default btn-sm" type="button" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Next" data-bs-original-title="Next"><svg class="svg-inline--fa fa-chevron-right fa-w-10" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chevron-right" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" data-fa-i2svg=""><path fill="currentColor" d="M285.476 272.971L91.132 467.314c-9.373 9.373-24.569 9.373-33.941 0l-22.667-22.667c-9.357-9.357-9.375-24.522-.04-33.901L188.505 256 34.484 101.255c-9.335-9.379-9.317-24.544.04-33.901l22.667-22.667c9.373-9.373 24.569-9.373 33.941 0L285.475 239.03c9.373 9.372 9.373 24.568.001 33.941z"></path></svg><!-- <span class="fas fa-chevron-right"></span> Font Awesome fontawesome.com --></button>
  </div>
</div>
<!-- 클래스 리스트 바디 끝 -->

<!-- 클래스 리스트 스크립트 -->
<script src="${pageContext.request.contextPath}/resources/js/app/school/teacherClassList.js"></script>