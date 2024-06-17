<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="card" style="height: 899px;">
<!-- 교육과정리스트 헤더 시작 -->
  <div class="card-header border-bottom">
    <div class="row flex-between-end">
      <div class="col-auto align-self-center">
        <h5 class="mb-0" data-anchor="data-anchor" id="responsive-table">교육과정<a class="anchorjs-link " aria-label="Anchor" data-anchorjs-icon="#" href="#responsive-table" style="margin-left: 0.1875em; padding-right: 0.1875em; padding-left: 0.1875em;"></a></h5>
      </div>
      <div class="col-auto align-self-center">
        <button class="btn btn-falcon-default me-1 mb-1" type="button" onclick="insertBtn()">등록</button>
      </div>
    </div>
  </div>
  <!-- 교육과정리스트 헤더 끝 -->
  <!-- 교육과정리스트 리스트바디 시작 -->
  <div class="card-body pt-0">
    <div class="tab-content">
      <div class="tab-pane preview-tab-pane active" role="tabpanel" aria-labelledby="tab-dom-f9948492-524f-45ec-a1c2-1ba6a6462d18" id="dom-f9948492-524f-45ec-a1c2-1ba6a6462d18">
        <div class="table-responsive scrollbar">
          <table class="table table-hover table-striped overflow-hidden">
            <thead>
              <tr>
                <th scope="col">교육과정명</th>
                <th scope="col">교육일수</th>
                <th scope="col">교육승인시작일</th>
                <th scope="col">교육승인종료일</th>
                <th scope="col">진행상황</th>
              </tr>
            </thead>
            <tbody>
			<c:forEach items="${edcCrseList }" var="edc">
              <tr class="align-middle" data-edc-code=${edc.edcCrseCode } onclick="detailEdc(this)">
                <td class="text-nowrap">
                  <div class="d-flex align-items-center">
                    <div class="ms-2">${edc.edcCrseName }</div>
                  </div>
                </td>
                <td class="text-nowrap">${edc.edcDayCo }일</td>
                <td class="text-nowrap">${edc.edcBeginDe }</td>
                <td class="text-nowrap">${edc.edcEndDe }</td>
                <td><span class="badge badge rounded-pill d-block p-2 badge-subtle-success">
                <c:choose>
                	<c:when test="${edc.edcEndDe lt edc.edcBeginDe}">
                		종료
                	</c:when>
                	<c:otherwise>
                		진행중
                	</c:otherwise>
                </c:choose>
                </span>
                </td>
              </tr>
			</c:forEach>	            
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
  <!-- 교육과정리스트 리스트바디 끝 -->
</div>
<script src="${pageContext.request.contextPath }/resources/js/app/subject/educate.js"></script>
