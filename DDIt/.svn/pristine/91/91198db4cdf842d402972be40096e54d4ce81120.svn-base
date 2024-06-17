<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 시간나오는거 CSS -->
<link href="${pageContext.request.contextPath}/resources/public/vendors/flatpickr/flatpickr.min.css" rel="stylesheet" />
<!-- 교육과정등록 시작 -->
<div class="card mb-3" style="height: 933px;">
  <div class="card-header">
    <h5 class="mb-0">교육과정등록</h5>
  </div>
  <div class="card-body bg-body-tertiary">
    <form method="post" name="edcForm">
      <div class="row gx-2">
        <div class="col-12 mb-3">
          <label class="form-label">교육과정명</label>
          <input class="form-control" name="edcCrseName" type="text" placeholder="Event Title">
        </div>
        <div class="col-12 mb-3">
          <label class="form-label">교육과정승인시작일</label>
          <input class="form-control datetimepicker" name="edcBeginDe" type="text" placeholder="dd/mm/yy"
				data-options='{"disableMobile":true}' />
        </div>
       <div class="col-12 mb-3">
          <label class="form-label" >교육과정종료일</label>
          <input class="form-control datetimepicker" name="edcEndDe" type="text" placeholder="dd/mm/yy"
				data-options='{"disableMobile":true}' />
        </div>
       <div class="col-12 mb-3">
          <label class="form-label" >교육일수</label>
          <input class="form-control" name="edcDayCo" type="text" placeholder="Event Title">
        </div>
      </div>
      <button class="btn btn-falcon-default me-1 mb-1" type="submit" >등록
	  </button>
      <button class="btn btn-falcon-default me-1 mb-1" type="button" onclick="out()">취소
	  </button>
    </form>
  </div>
</div>
<script>
function out(){
	const cPath = document.body.dataset.contextPath;
	location.href=`\${cPath}/educate`;
}
</script>
<!-- 교육과정등록 끝 -->
<!-- 시간 나오는거 -->
<script src="${pageContext.request.contextPath}/resources/public/vendors/flatpickr/flatpickr.min.js"></script>

