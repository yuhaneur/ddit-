<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<security:authentication property="principal" var="principal" />
<%-- ${principal.realUser.userId } --%>
<input type="hidden" id="userId" value="${principal.realUser.userId }">
<div class="card" id="ticketsTable">
	<div class="card-header border-bottom border-200 px-0">
		<div class="d-lg-flex justify-content-between">
			<div class="row flex-between-center gy-2 px-x1" id=searchUI>
				<div class="col-auto pe-0">
					<h6 class="mb-0">검색</h6>
				</div>
				<div class="col-auto">
					<form>
						<div class="input-group input-search-width">
							<input class="form-control form-control-sm shadow-none search"
								type="search" placeholder="Search..." aria-label="search"
								name="searchWord">
							<button
								class="btn btn-sm btn-outline-secondary border-300 hover-border-secondary"
								id="searchWord">
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
					</form>
				</div>
			</div>
			<div class="border-bottom border-200 my-3"></div>
			<div
				class="d-flex align-items-center justify-content-between justify-content-lg-end px-x1">
				<button class="btn btn-sm btn-falcon-default d-xl-none"
					type="button" data-bs-toggle="offcanvas"
					data-bs-target="#ticketOffcanvas" aria-controls="ticketOffcanvas">
					<svg class="svg-inline--fa fa-filter fa-w-16"
						data-fa-transform="shrink-4 down-1" aria-hidden="true"
						focusable="false" data-prefix="fas" data-icon="filter" role="img"
						xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"
						data-fa-i2svg="" style="transform-origin: 0.5em 0.5625em;">
						<g transform="translate(256 256)">
						<g transform="translate(0, 32)  scale(0.75, 0.75)  rotate(0 0 0)">
						<path fill="currentColor"
							d="M487.976 0H24.028C2.71 0-8.047 25.866 7.058 40.971L192 225.941V432c0 7.831 3.821 15.17 10.237 19.662l80 55.98C298.02 518.69 320 507.493 320 487.98V225.941l184.947-184.97C520.021 25.896 509.338 0 487.976 0z"
							transform="translate(-256 -256)"></path></g></g></svg>
					<!-- <span class="fas fa-filter" data-fa-transform="shrink-4 down-1"></span> Font Awesome fontawesome.com -->
					
				</button>
				<div class="bg-300 mx-3 d-none d-lg-block d-xl-none"
					style="width: 1px; height: 29px"></div>
				<div class="d-none" id="table-ticket-actions">
					<div class="d-flex">
						<select class="form-select form-select-sm"
							aria-label="Bulk actions">
							<option selected="">선택</option>
							<option value="Refund">수정</option>
							<option value="Delete">삭제</option>
							
						</select>
						<button class="btn btn-falcon-default btn-sm ms-2" type="button">submit</button>
					</div>
				</div>
				<div class="d-flex align-items-center"
					id="table-ticket-replace-element">
					<a href="<c:url value='project/insert'/>"
						class="btn btn-falcon-default btn-sm mx-2"> <svg
							class="svg-inline--fa fa-plus fa-w-14"
							data-fa-transform="shrink-3" aria-hidden="true" focusable="false"
							data-prefix="fas" data-icon="plus" role="img"
							xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"
							data-fa-i2svg="" style="transform-origin: 0.4375em 0.5em;">
							<g transform="translate(224 256)">
							<g
								transform="translate(0, 0)  scale(0.8125, 0.8125)  rotate(0 0 0)">
							<path fill="currentColor"
								d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"
								transform="translate(-224 -256)"></path></g></g></svg> <!-- <span class="fas fa-plus" data-fa-transform="shrink-3"></span> Font Awesome fontawesome.com -->
						<span
						class="d-none d-sm-inline-block d-xl-none d-xxl-inline-block ms-1">프로젝트생성하기</span></a>

				</div>
			</div>
		</div>
	</div>
	<div class="card-body p-0">
		<c:if test="${not empty projectList }">
			<c:forEach items="${projectList }" var="project">

				<div class="form-check d-none">
					<input class="form-check-input"
						id="checkbox-bulk-card-tickets-select" type="checkbox"
						data-bulk-select="{&quot;body&quot;:&quot;card-ticket-body&quot;,&quot;actions&quot;:&quot;table-ticket-actions&quot;,&quot;replacedElement&quot;:&quot;table-ticket-replace-element&quot;}">
				</div>
				<div class="list bg-body-tertiary p-x1 d-flex flex-column gap-3"
					id="card-ticket-body">
					<div
						class="bg-white dark__bg-1100 d-md-flex d-xl-inline-block d-xxl-flex align-items-center p-x1 rounded-3 shadow-sm card-view-height">
						<div class="d-flex align-items-start align-items-sm-center">
							<div class="form-check me-2 me-xxl-3 mb-0">

								<input class="form-check-input" type="checkbox"
									id="card-view-tickets-0"
									data-bulk-select-row="data-bulk-select-row">
							</div>
							
							<div class=" ms-1 ms-sm-3">
								<p class="mb-3 mb-sm-2">

									<a href="<c:url value='/project/${project.projectNo }' />">
										${project.projectName } </a>
								</p>
								<div class="row align-items-center gx-0 gy-2">
									<div class="col-auto me-2">
										<h6 class="client mb-0">
											
												<svg
													viewBox="0 0 448 512" data-fa-i2svg=""
													style="transform-origin: 0.4375em 0.4375em;">
													<g transform="translate(224 256)">
													<g
														transform="translate(0, -32)  scale(0.8125, 0.8125)  rotate(0 0 0)">
													<path fill="currentColor"
														d="M224 256c70.7 0 128-57.3 128-128S294.7 0 224 0 96 57.3 96 128s57.3 128 128 128zm89.6 32h-16.7c-22.2 10.2-46.9 16-72.9 16s-50.6-5.8-72.9-16h-16.7C60.2 288 0 348.2 0 422.4V464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-41.6c0-74.2-60.2-134.4-134.4-134.4z"
														transform="translate(-224 -256)"></path></g></g></svg> <!-- <span class="fas fa-user" data-fa-transform="shrink-3 up-1"></span> Font Awesome fontawesome.com -->
												<span>${principal.realUser.userId }</span> 
										</h6>
									</div>
									<div class="col-auto lh-1 me-3">
										<small class="badge rounded badge-subtle-success false">PL</small>
									</div>

								</div>
							</div>
						</div>
						
						<div class="border-bottom mt-4 mb-x1">&ensp;&ensp;&ensp;&ensp;${project.projectCn }</div>
						<div class="d-flex justify-content-between ms-auto">
							<div class="d-flex align-items-center gap-2 ms-md-4 ms-xl-0"
								style="width: 15rem;">

								<h6 class="mb-0 text-700">작성일 : ${project.projectCreatDate }</h6>
							</div>

						</div>
					</div>
				</div>
				<div class="text-center d-none" id="tickets-card-fallback">
					<p class="fw-bold fs-8 mt-3">No ticket found</p>
				</div>
			</c:forEach>
		</c:if>
		<c:if test="${empty projectList }">
			<td colspan="6">프로젝트 없음</td>
		</c:if>
		${pagingHTML }
	</div>


</div>

<form action="<c:url value='/project'/>" id="searchForm">
	<input type="hidden" name="searchType" /> 
	<input type="hidden" name="searchWord" /> 
	<input type="hidden" name="currentPage" />
</form>

<script>
	$("[name='searchType']").val("${condition.searchType}")
	$("[name='searchWord']").val("${condition.searchWord}")
	function paging(page) {
		//	location.href = "?currentPage=" + page;
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
</script>




