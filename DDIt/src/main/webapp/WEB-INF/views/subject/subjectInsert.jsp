<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<div class="card mb-3" style="height:900px;">
  <div class="card-header">
    <h5 class="mb-0">교과목등록</h5>
  </div>
  <div class="card-body bg-body-tertiary">
    <form method="post">
      <div class="row gx-2">
      	<div class="col-2">
			<h5>교육과정명</h5>
			<select class="form-select" name="edcCrseCode" >
			<c:forEach items="${edcList }" var="edc">
				<c:if test="${edc.edcCrseCode eq edcCode }">
				<option value="${edc.edcCrseCode }">${edc.edcCrseName }</option>
				</c:if>
			</c:forEach>
			</select>
		</div>
        <div class="col-12 mb-3">
          <label class="form-label" >교과목명</label>
          <input class="form-control" name="sjName" type="text" >
        </div>
        <div class="col-12 mb-3">
          <label class="form-label" >교육시간</label>
          <input class="form-control" name="edcTime" type="number">
        </div>
       <div class="col-12 mb-3">
          <label class="form-label" >교과목순서</label>
          <input class="form-control" name="sjOrdr" type="number">
        </div>
      </div>
      <button class="btn btn-falcon-default me-1 mb-1" type="submit">등록
	  </button>
      <button class="btn btn-falcon-default me-1 mb-1" data-edc-code type="button" onclick="outPage(this)">취소
	  </button>
    </form>
  </div>
</div>
<script>
	const cPath = document.body.dataset.contextPath;
	function outPage(btn){
		let edcCode = btn.dataset.edcCode;
		location.href=`\${cPath}/subject/${edcCode}`;
	}
</script>
