<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
.hDiv{
  padding: 1px;
}
.hListDiv{
  height: 40px;
  text-align: center;
}
.hUl{
  display: flex;
  flex-wrap: wrap;
  list-style: none;
  margin-bottom: 0px;
  padding-left: 15px;
  padding-right: 0px;
  width: 495px;
}
.hListA {
  text-decoration: none !important;
}
.hLi{
  border-bottom: 5px solid #FFFFFF;
}
.hLi:hover {
	background-color: #E7E7E7;
	border-bottom: 5px solid #489CFF;
}
.hListA > div,
.hListA > div > h5 {
  pointer-events: none;
}
#pHistoryTb{
  height: 615px;
  display: block;
  overflow: auto;
}
table thead, table tbody tr {
  display: table;
  width: 100%;
}
.historyList1{
  width: 335px;
  height: 50px;
}
.historyList2{
  width: 454px;
  height: 50px;
}

</style>

<div class="d-flex mb-4 mt-3">
	<span class="fa-stack me-2 ms-n1">
		<svg class="svg-inline--fa fa-circle fa-w-16 fa-stack-2x text-300" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="circle" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="">
			<path fill="currentColor" d="M256 8C119 8 8 119 8 256s111 248 248 248 248-111 248-248S393 8 256 8z"></path>
		</svg>
		<svg class="svg-inline--fa fa-percentage fa-w-12 fa-inverse fa-stack-1x text-primary" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="percentage" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" data-fa-i2svg="">
			<path fill="currentColor" d="M109.25 173.25c24.99-24.99 24.99-65.52 0-90.51-24.99-24.99-65.52-24.99-90.51 0-24.99 24.99-24.99 65.52 0 90.51 25 25 65.52 25 90.51 0zm256 165.49c-24.99-24.99-65.52-24.99-90.51 0-24.99 24.99-24.99 65.52 0 90.51 24.99 24.99 65.52 24.99 90.51 0 25-24.99 25-65.51 0-90.51zm-1.94-231.43l-22.62-22.62c-12.5-12.5-32.76-12.5-45.25 0L20.69 359.44c-12.5 12.5-12.5 32.76 0 45.25l22.62 22.62c12.5 12.5 32.76 12.5 45.25 0l274.75-274.75c12.5-12.49 12.5-32.75 0-45.25z"></path>
		</svg>
	</span>
  <div class="col">
    <h5 class="mb-0 text-primary position-relative">
	    <span class="bg-200 dark_bg-1100 pe-3">포인트이력</span>
	    <span class="border position-absolute top-50 translate-middle-y w-100 start-0 z-n1"></span>
    </h5>
  </div>
</div>

<div class="card">
	<div class="card-header d-flex row me-1 hDiv">
		<ul class="hUl">
		  <li class="hLi hLiMain">
		  <a class="ms-8 hListA" href="#!"><div class="hListDiv"><h5 class="mb-0 lh-1">전체</h5></div></a>
		  </li>
		  <li class="hLi">
		  <a class="ms-8 hListA" href="#!"><div class="hListDiv"><h5 class="mb-0 lh-1">적립</h5></div></a>
		  </li>
		  <li class="hLi">
		  <a class="ms-8 hListA" href="#!"><div class="hListDiv"><h5 class="mb-0 lh-1">구매</h5></div></a>
		  </li>
		  <li class="hLi">
		  <a class="ms-8 hListA" href="#!"><div class="hListDiv"><h5 class="mb-0 lh-1">선물</h5></div></a>
		  </li>
		</ul>
	</div>
 	
 	
 	<div class="card-body p-0">
	<div class="table-responsive">
	  <table class="table table-hover">
	    <thead class="bg-body-tertiary">
	      <tr>
	        <th class="text-dark historyList1" scope="col">발생일시</th>
	        <th class="text-dark historyList2" scope="col">내역</th>
	        <th class="text-dark historyList3" scope="col">포인트</th>
	      </tr>
	    </thead>
	    
	    <tbody id="pHistoryTb">
	    </tbody>
	  </table>
	</div>
    </div>
    
</div>  
<div>
</div>
 
 <script src="<c:url value='/resources/js/app/point/pointHistory.js'/>"></script>