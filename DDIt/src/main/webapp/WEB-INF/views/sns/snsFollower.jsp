<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.or.ddit.snsFollower.controller.SnsFollowerController" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<script>
	var userId = "S002";
	const cPath = document.body.dataset.contextPath;
</script>
          <div class="card">
            <div class="card-header bg-body-tertiary">
              <div class="row align-items-center">
                <div class="col">
                  <h5 class="mb-0" id="followers">팔로워 <span class="d-none d-sm-inline-block"></span></h5>
                </div>
                <div class="col" style="margin-left:250px;">
                    <div id="searchUI" class="row g-0">
                       <form:input
                        	path = "condition.searchWord" 
                        	class="form-control form-control-sm search-input lh-1 rounded-2 ps-4" type="search" placeholder="Search..." aria-label="Search" style="width: 1000px;" />
                      </div>
                   </div>
                   <div class="col" style="margin-left:30px;">
                   		<button id="searchBtn" class="btn btn-falcon-primary btn-sm px-3" type="button" style="width: 150px;">검색</button>
                   </div>
                </div>
              </div>
            </div>
            <div class="card-body bg-body-tertiary px-1 py-0" style="height:800px">
                <div id="list-body" class="list-body row g-0 text-center fs-10" style="height:680px">
		            <!-- 팔로워 리스트 들어갈 자리. -->
                </div>
	            <div id="paging-area"  class="paging-area" style="margin:20px;">
	              <!-- 페이징 출력 위치 -->
	            </div>
              </div>
<form:form 
	modelAttribute="condition" method="get" id="searchForm">
	<form:hidden path="searchType"  /> 
	<form:hidden path="searchWord"  />
<!-- 	<input type="hidden" name="searchType" /> -->
<!-- 	<input type="hidden" name="searchWord" />	 -->
	<input type="hidden" name="currentPage" value="1" />
</form:form>



<!-- 팔로워 리스트 비동기 페이징 / 검색  -->        
<script src="${pageContext.request.contextPath }/resources/js/app/sns/snsFollower.js"></script>