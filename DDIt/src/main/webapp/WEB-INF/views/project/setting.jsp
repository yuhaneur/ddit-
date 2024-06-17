<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page import="kr.or.ddit.project.controller.ProjectController"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>








<!-- Button trigger -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal"
	data-bs-target="#staticBackdrop" hidden>Launch static backdrop
	modal</button>

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
	data-bs-keyboard="false" tabindex="-1"
	aria-labelledby="staticBackdropLabel" aria-hidden="true">
	<div class="modal-dialog modal-xl modal-dialog-scrollable">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title fs-7" id="staticBackdropLabel">회원추가하기</h4>
				<div class="row flex-between-center gy-2 px-x1" id=searchUI>

					<!-- 검색 -->
					<div class="row  gy-2 px-x1" style="margin-left: 550px;">

						<div class="col-auto pe-0">
							<h6 class="mb-0">검색</h6>
						</div>
						<div class="col-auto">

							<div class="input-group input-search-width">

								<input class="form-control form-control-sm shadow-none search"
									type="search" placeholder="Search..." aria-label="search"
									name="searchWord">
								<button
									class="btn btn-sm btn-outline-secondary border-300 hover-border-secondary"
									id="searchBtn">
									<svg class="svg-inline--fa fa-search fa-w-16 fs-10"
										aria-hidden="true" focusable="false" data-prefix="fa"
										data-icon="search" role="img"
										xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"
										data-fa-i2svg="">
									<path fill="currentColor"
											d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z"></path></svg>
									<!-- <span class="fa fa-search fs-10"></span> Font Awesome fontawesome.com -->
								</button>
							</div>

						</div>
					</div>
					<div></div>
				</div>

				<!-- 검색끝 -->

			</div>

			<div  id="list-body" class="list-body"> </div>
			<div  id="paging-area"class="paging-area"> </div>
			<form:form method="get" modelAttribute="cmmnCodeVO" id="insertForm">
				<div class="modal-body" id="list-container">

					역할:
					<c:forEach items="${codeList }" var="code">
						<input type="checkbox" id="${code.cmmnCode}" name="cmmnCodeGr"
							value="${code.cmmnCodeName}" />
						<label for="${code.cmmnCode}">${code.cmmnCodeName}</label>
					</c:forEach>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" id="insertBtn">추가</button>
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
				</div>
			</form:form>


		</div>
	</div>
</div>


<!--수정모달  -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal"
	data-bs-target="#modal2" hidden>Launch static backdrop
	modal</button>

<!-- Modal -->
<div class="modal fade" id="modal2" data-bs-backdrop="static"
	data-bs-keyboard="false" tabindex="-1"
	aria-labelledby="staticBackdropLabel" aria-hidden="true">
	<div class="modal-dialog modal-xl modal-dialog-scrollable">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title fs-7" id="staticBackdropLabel">역할 수정</h4>
				<div class="row flex-between-center gy-2 px-x1" id=searchUI>

					<!-- 검색 -->
					<div class="row  gy-2 px-x1" style="margin-left: 550px;">

						<div class="col-auto pe-0">
							<h6 class="mb-0">검색</h6>
						</div>
						<div class="col-auto">

							<div class="input-group input-search-width">

								<input class="form-control form-control-sm shadow-none search"
									type="search" placeholder="Search..." aria-label="search"
									name="searchWord">
								<button
									class="btn btn-sm btn-outline-secondary border-300 hover-border-secondary"
									id="searchBtn">
									<svg class="svg-inline--fa fa-search fa-w-16 fs-10"
										aria-hidden="true" focusable="false" data-prefix="fa"
										data-icon="search" role="img"
										xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"
										data-fa-i2svg="">
									<path fill="currentColor"
											d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z"></path></svg>
									<!-- <span class="fa fa-search fs-10"></span> Font Awesome fontawesome.com -->
								</button>
							</div>

						</div>
					</div>
					<div></div>
				</div>

				<!-- 검색끝 -->

			</div>
				
				
			
			<form:form method="get" modelAttribute="cmmnCodeVO" id="updateForm">
				<div class="modal-body" id="list-container">
					<input type="hidden" id="Uid">
					<input type="hidden" id="Pid">
					역할:
					<c:forEach items="${codeList }" var="code">
						<input type="checkbox" id="${code.cmmnCode}" name="cmmnCodeGr"
							value="${code.cmmnCodeName}" />
						<label for="${code.cmmnCode}">${code.cmmnCodeName}</label>
					</c:forEach>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" id="updateBtn">변경</button>
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
				</div>
			</form:form>


		</div>
	</div>
</div>
<!--수정모달 끝  -->





<div class="col-lg-12">
	<div class="card">
		<div class="card-header border-bottom">
			<div class="row flex-between-end">
				<div class="col-auto align-self-center">
					<div></div>
					<a href="<c:url value='/project/${projectNo}' />">
						홈
						
					</a>
					<p class="mb-0 pt-1 mt-2 mb-0">구성원</p>
				</div>
			</div>


			<a style="margin-left: 1250px;"
				class="btn btn-falcon-default me-1 mb-1"> <svg
					class="svg-inline--fa fa-plus fa-w-14" data-fa-transform="shrink-3"
					aria-hidden="true" focusable="false" data-prefix="fas"
					data-icon="plus" role="img" xmlns="http://www.w3.org/2000/svg"
					viewBox="0 0 448 512" data-fa-i2svg=""
					style="transform-origin: 0.4375em 0.5em;">
				<g transform="translate(224 256)">
				<g transform="translate(0, 0)  scale(0.8125, 0.8125)  rotate(0 0 0)">
				<path fill="currentColor"
						d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"
						transform="translate(-224 -256)"></path></g></g></svg> <!-- <span class="fas fa-plus" data-fa-transform="shrink-3"></span> Font Awesome fontawesome.com -->
				<span
				class="d-none d-sm-inline-block d-xl-none d-xxl-inline-block ms-1"
				data-bs-toggle="modal" data-bs-target="#staticBackdrop">팀원추가하기</span>
			</a>
		</div>
		<div class="card-body pt-0">
			<div class="tab-content">
				<div class="tab-pane preview-tab-pane active" role="tabpanel"
					aria-labelledby="tab-dom-6db5a429-7200-47c4-aebd-8e0c2a3570c9"
					id="dom-6db5a429-7200-47c4-aebd-8e0c2a3570c9">
					<div class="table-responsive scrollbar">
						<table class="table">
							<thead>
								<tr>
									<th scope="col">이름</th>
									<th scope="col">역할</th>
									<th class="text-end" scope="col">수정/삭제</th>
								</tr>
							</thead>
							<tbody id="myTeamListBody">
								
							</tbody>
						</table>
					</div>
						<div id="teamListPagingArea">
						
						</div>
				</div>

			</div>
		</div>
	</div>
</div>


<form:form
	action="${pageContext.request.contextPath }/project/${projectNo }/teamList2"
	id="searchForm" method="get">
	<input type="hidden" name="searchType" />
	<input type="hidden" name="searchWord" />
	<input type="hidden" name="currentPage" value="1" />
</form:form>


<script>
	
	const cPath = document.body.dataset.contextPath;
	console.log("cPath",cPath);
	$("[name='searchType']").val("${condition.searchType}")
	$("[name='searchWord']").val("${condition.searchWord}")
	
	function paging(page) {
		//	location.href = "?currentPage=" + page;
		searchForm.currentPage.value = page;
		$searchForm.submit();
	}

		
		$("#searchBtn").on("click", function(event) {
		let $searchUI = $(this).parents("#searchUI");
		$searchUI.find(":input[name]").each(function(idx, ipt) {
			let name = this.name;
			let value = $(this).val();
			searchForm[name].value = value;
		
		});
		$searchForm.submit();
	});
	
	function makeUserUI(user){
		console.log("user 함수에서 받은거",user);
		console.log("stduentName====>",user.student.studentName);
		
		return `
		<input type="radio" name="cbox" id="cbox" data-user-no="${user.userId}" value="\${user.userId }">\${user.student.studentName}
		`;
		
			
	}
	
	
	let $pagingArea = $(".paging-area");
	let $listBody = $(".list-body");
	let $searchForm = $("#searchForm").on("submit", function(event){
		event.preventDefault();
		let action = this.action;
		let data = $(this).serialize();
	
	$.ajax({
		url:action,
		data:data,
		dataType:"json",
		success:function(resp){
			console.log("resp:::::::",resp);
			$listBody.empty();
			$pagingArea.empty();
			let userList = resp.userList;
			let divHtml ='';
			if(userList.length > 0){
				$.each(userList, function(index, user){
					console.log("user 함수보내기전",user);
					divHtml += makeUserUI(user);
				});
				$pagingArea.html(resp.pagingHTML);
			}else{
				divHtml +=`
				<tr>
					<td colspan="6"> 목록 없음.</td>
				</tr>
				`;
			}
			$listBody.html(divHtml);
			$searchForm.find("[name=currentPage]").val(1);
		}
	});
	
	});
	$searchForm.submit();
	
	$("#insertBtn").click(function() {
		
		
		  // 버튼 클릭 함수 내부

		  // 선택된 체크박스 값 추출
		  const selectedCboxValues = $("[name=cbox]:checked").map(function() {
		    return $(this).val();
		  }).get();
		  const selectedCmmnCodeGrValue = $("[name=cmmnCodeGr]:checked").val();

		  let data = {
 		      "userId":selectedCboxValues[0],
 		      "projectRole":selectedCmmnCodeGrValue  
 		     
		  };
		  
		  //{"userId": "A010","projectRole": "TA"}
		 
		  
		  // AJAX를 사용하여 데이터 전송
		  $.ajax({
		    url:"/project/${projectNo}/teaminsert?userId="+selectedCboxValues[0]+"&projectRole="+selectedCmmnCodeGrValue,		    
		    type:"POST",
		    data:JSON.stringify(data),
		    contentType:"application/json;charset=utf-8",
		    success:function(result) {
		      console.log("Success:", result);
		      alert("팀 배정에 성공했습니다.");
		      location.href=`${cPath}/project/${projectNo}/teamList1`;
		    },
		    error: function(xhr, status, error) {
		      console.error("Error:", xhr, status, error);
		      alert("팀 배정에 실패했습니다. 다시 시도하십시오.");
		    }
		  });
		});
	$("#updateBtn").click(function(){
		
	    const userId =$("#Uid").val();
	    console.log("userId", userId);
	    const projectNo =$("#Pid").val();
	    
	    const selectedCmmnCodeGrValue = $("[name=cmmnCodeGr]:checked").val();
	    data ={
	    	userId:userId,
	    	projectNo:projectNo,
	        projectRole:selectedCmmnCodeGrValue  
	    	
	    }
	    
		console.log("data=====>", data);
		
		// AJAX를 사용하여 데이터 전송
		  $.ajax({
		    url:`/project/${projectNo}/teamupdate`,		    
		    type:"PUT",
		    data:JSON.stringify(data),
		    contentType:"application/json;charset=utf-8",
		    success:function(result) {
		      console.log("Success:", result);
		      alert("변경 에 성공했습니다.");
		      location.href=`${cPath}/project/${projectNo}/teamList1`;
		      
		    },
		    error: function(xhr, status, error) {
		      console.error("Error:", xhr, status, error);
		      alert("변경에 실패했습니다. 다시 시도하십시오.");
		    }
		  });
		});
	
	
	
	
	
	
	
	function DBtn(pthis){
		
		
		
		let userId = pthis.dataset.userId
		let projectNo = pthis.dataset.projectNo
		
		let data = { 
					userId : userId ,
					projectNo: projectNo			
		}
		
		
		$.ajax({
			url:`/project/${projectNo}/teamdelete`,
			type:"DELETE",
			data : JSON.stringify(data),
			contentType:"application/json;charset=utf-8",
			success:function(result){
				 console.log("Success:", result);
			      alert("팀 삭제에 성공했습니다.");
			      location.href=`${cPath}/project/${projectNo}/teamList1`; 
			},
			  error: function(xhr, status, error) {
			      console.error("Error:", xhr, status, error);
			      alert("팀 배정에 실패했습니다. 다시 시도하십시오.");
			    }
			 });
		};
		
		
		function UBtn(uthis){
			let projectNo = uthis.dataset.projectNo
			let userId  = uthis.dataset.userId
			console.log("체크1: ",$(uthis).closest("tr").children().eq(0).html()); 
			console.log("체크2: ",$(uthis).closest("tr").children().eq(1).html()); 
			
			/* let listBody   = $(uthis).closest("tr").children().eq(0).html() */
			
			$("#Uid").val(userId);
			$("#Pid").val(projectNo);
			console.log("프로젝트번호",projectNo);
			/* console.log("유저아이디",listBody); */
			
			
			
			
			/* $listBody.find("[type=radio]").each((inx,rdo)=>{
				console.log("체크:",rdo.value);
				if(rdo.value == listBody ){
					rdo.checked = true;
				}
			
			}) */
			
		};
				
	</script>
	
	
	
	
	<script>
	function makeTeamOneUI(psm){
		console.log("psmList==>>{}",psm)
		return `
		
			<tr>
			<td>\${psm.student.studentName }</td>
			<td>\${psm.projectRole }</td>
			<td class="text-end">
				<div>
			<!--수정 버튼  -->
				<button  class="btn btn-link p-0" type="button"  onclick="UBtn(this)"  data-bs-toggle="modal" data-bs-target="#modal2" data-user-id="\${psm.userId }" data-project-no="\${psm.projectNo }"
					 data-bs-placement="top"
					aria-label="Edit" data-bs-original-title="Edit">
					<svg class="svg-inline--fa fa-edit fa-w-18 text-500"
						aria-hidden="true" focusable="false" data-prefix="fas"
						data-icon="edit" role="img"
						xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"
						data-fa-i2svg="">
				<path fill="currentColor"
							d="M402.6 83.2l90.2 90.2c3.8 3.8 3.8 10 0 13.8L274.4 405.6l-92.8 10.3c-12.4 1.4-22.9-9.1-21.5-21.5l10.3-92.8L388.8 83.2c3.8-3.8 10-3.8 13.8 0zm162-22.9l-48.8-48.8c-15.2-15.2-39.9-15.2-55.2 0l-35.4 35.4c-3.8 3.8-3.8 10 0 13.8l90.2 90.2c3.8 3.8 10 3.8 13.8 0l35.4-35.4c15.2-15.3 15.2-40 0-55.2zM384 346.2V448H64V128h229.8c3.2 0 6.2-1.3 8.5-3.5l40-40c7.6-7.6 2.2-20.5-8.5-20.5H48C21.5 64 0 85.5 0 112v352c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48V306.2c0-10.7-12.9-16-20.5-8.5l-40 40c-2.2 2.3-3.5 5.3-3.5 8.5z"></path></svg>
					<!-- <span class="text-500 fas fa-edit"></span> Font Awesome fontawesome.com -->
				</button>
				
				<!--삭제버튼  -->
				<button data-user-id="\${psm.userId }" data-project-no="\${psm.projectNo }" onclick="DBtn(this)" class="btn btn-link p-0 ms-2" type="button"
					data-bs-toggle="tooltip" data-bs-placement="top"
					aria-label="Delete" data-bs-original-title="Delete">
					<svg class="svg-inline--fa fa-trash-alt fa-w-14 text-500"
						aria-hidden="true" focusable="false" data-prefix="fas"
						data-icon="trash-alt" role="img"
						xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"
						data-fa-i2svg="">
				<path fill="currentColor"
							d="M32 464a48 48 0 0 0 48 48h288a48 48 0 0 0 48-48V128H32zm272-256a16 16 0 0 1 32 0v224a16 16 0 0 1-32 0zm-96 0a16 16 0 0 1 32 0v224a16 16 0 0 1-32 0zm-96 0a16 16 0 0 1 32 0v224a16 16 0 0 1-32 0zM432 32H312l-9.4-18.7A24 24 0 0 0 281.1 0H166.8a23.72 23.72 0 0 0-21.4 13.3L136 32H16A16 16 0 0 0 0 48v32a16 16 0 0 0 16 16h416a16 16 0 0 0 16-16V48a16 16 0 0 0-16-16z">
							</path>
						</svg>
					<!-- <span class="text-500 fas fa-trash-alt"></span> Font Awesome fontawesome.com -->
				</button>
				
			</div>
		</td>
	</tr>
		
			`;
		
	}
	$myTeamListBody = $("#myTeamListBody");
	$teamListPagingArea=$("#teamListPagingArea");
	
	function pagingMyteam(page){
		$.ajax({
			url:`/project/${projectNo}/teamList1`,
			data:{
				currentPage:page??1
			},
				dataType:"json",
				success:function(resp){
				$myTeamListBody.empty();
				$teamListPagingArea.empty();
				let psmList= resp.psmList;
				let tbodyHtml = '';
				if(psmList.length>0){
					$.each(psmList, function(index, psm){
						tbodyHtml += makeTeamOneUI(psm);
					});
					$teamListPagingArea.html(resp.pagingHTML);
				}else{
					tbodyHtml +=
						`
						<tr>
							<td colspan="7">팀 정보 없음 .</td>
						<tr>
						`;
				}
				$myTeamListBody.html(tbodyHtml);
			}
		})
	} 
	pagingMyteam(1);
	
	
	
	
	</script>
	
	
	
	
	
	
	
	




