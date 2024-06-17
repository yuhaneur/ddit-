<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="card" style="height: 899px;">
<!-- 교과목리스트 헤더 시작 -->
  <div class="card-header border-bottom">
    <div class="row flex-between-end">
      <div class="col-auto align-self-center d-flex">
        <h5 class="mb-0 " id="responsive-table">교과목리스트</h5>
      </div>
      <div class="col-auto ms-auto">
        <div class="nav nav-pills nav-pills-falcon flex-grow-1 mt-2" role="tablist">
	        <button class="btn btn-falcon-default me-1 mb-1" type="button" data-edc-code="${edcCode }" onclick="insertSJ(this)">등록</button>
	        <button class="btn btn-falcon-default me-1 mb-1" type="button" onclick="outSjPage()">나가기</button>
        </div>
      </div>
    </div>
  </div>
  <!-- 교과목리스트 헤더 끝 -->
  <!-- 교과목리스트 리스트바디 시작 -->
  <div class="card-body pt-0">
  
    <div class="tab-content">
      <div class="tab-pane preview-tab-pane active" role="tabpanel" aria-labelledby="tab-dom-f9948492-524f-45ec-a1c2-1ba6a6462d18" id="dom-f9948492-524f-45ec-a1c2-1ba6a6462d18">
        <div class="table-responsive scrollbar">
          <table class="table table-hover table-striped overflow-hidden">
            <thead>
              <tr>
                <th scope="col">교과목명</th>
                <th scope="col">교육시간</th>
                <th scope="col">교과목순서</th>
                <th scope="col">교육과정명</th>
              </tr>
            </thead>
            <tbody>
            <c:forEach items="${sjList }" var="sj">
              <tr class="align-middle" data-sj-no="${sj.sjNo }" data-edc-crse-code="${sj.edcCrse.edcCrseCode }" onclick="sjDetail(this)">
                <td class="text-nowrap">
                  <div class="d-flex align-items-center">
                    <div class="ms-2">${sj.sjName }</div>
                  </div>
                </td>
                <td class="text-nowrap">${sj.edcTime }</td>
                <td class="text-nowrap">${sj.sjOrdr }</td>
                <td><span class="badge badge rounded-pill d-block p-2 badge-subtle-success">${sj.edcCrse.edcCrseName }</span>
                </td>
              </tr>
            </c:forEach>
            </tbody>
          </table>
          <form action="<c:url value='/subject/detail'/>" name="sjInfoForm">
            <input type="hidden" name="sjNo"value="">
            <input type="hidden" name="edcCrseCode"value="">
          </form>
        </div>
      </div>
    </div>
  </div>
  <!-- 교과목리스트 리스트바디 끝 -->
</div>
<script type="text/javascript">
let cPath = document.body.dataset.contextPath;
function outSjPage(){
	location.href = `${cPath}/educate`;
}

function insertSJ(btn){
	let edcCode= btn.dataset.edcCode;
	 location.href = `${cPath}/subject/insert/${edcCode}`
}

function sjDetail(sjInfo){
	let sjNo = sjInfo.dataset.sjNo;
   let edcCrseCode = sjInfo.dataset.edcCrseCode;
   let sjForm = document.sjInfoForm;

   console.log("sjNo : " ,sjNo);
   console.log("edcCrseCode : " ,edcCrseCode);
   console.log("sjForm : " ,sjForm);

   sjForm.sjNo.value=sjNo;
   sjForm.edcCrseCode.value=edcCrseCode;
   sjForm.submit();
   
}
</script>