<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page import="kr.or.ddit.project.controller.WorkController"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>




<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">






<body>

	<!-- ===============================================-->
	<!--    Main Content-->
	<!-- ===============================================-->
	<form:form modelAttribute="${WorkController.MODELNAME}"
		enctype="multipart/form-data" class="card" method="post" >
		<input type="hidden">
		<!-- name="userId" value="A001" -->
		<div class="card-header bg-body-tertiary">
			<h5 class="mb-0">새 일감 생성</h5>
		</div>
		<div class="card-body p-0">
			<div class="border border-top-0 border-200">
				<form:input
					class="form-control border-0 rounded-0 outline-none px-x1"
					path="workSj" type="text" placeholder="이름" />
			</div>

			<div class="min-vh-50 email-compose-textarea">

				<textarea class="tinymce d-none" data-tinymce="data-tinymce"
					name="workDc" placeholder="설명">
								</textarea>
			</div>
			<div class="px-x1 py-3">
				<%-- <form:select path="projectParent">
					<option value></option>
					<c:forEach items="${projectList }" var="project">
						<form:option value="${project.projectNo }"
							label="${project.projectName }"></form:option>
					</c:forEach>
				</form:select>
				<form:errors path="projectParent" element="span" cssClass="text-danger" /> --%>
				<label>상태<span>*</span></label>
				<select name="workTy">
					<option>신규</option>
				</select>
				<label>우선순위<span>*</span></label>
				<select name="wokrPriority">
					<option >낮음</option>
					<option >보통</option>
					<option >높음</option>
					<option >긴급</option>
					<option >즉시</option>
				</select>
				<label>팀원<span>*</span></label>
				<form:select path="workCharger">
					
					<c:forEach items="${teamList }" var="team">
						<form:option value="${team.userId}"
						label="${team.student.studentName}">
						</form:option>
					</c:forEach>
				
				</form:select>
				
				
				
				
			</div>
			<div class="bg-body-tertiary px-x1 py-3">
				
				<div class="d-inline-flex flex-column">
					
					
				</div>
			</div>
		</div>
		<div
			class="card-footer border-top border-200 d-flex flex-between-center">
			<div class="d-flex align-items-center">
				<button class="btn btn-primary btn-sm px-5 me-2" type="submit">일감생성하기</button>
				<input class="d-none" id="email-attachment" type="file" /> 
				<label class="me-2 btn btn-tertiary btn-sm mb-0 cursor-pointer" or="email-attachment" data-bs-toggle="tooltip"
					data-bs-placement="top" title="Attach files">
					<span class="fas fa-paperclip fs-8" data-fa-transform="down-2">
					</span>
					</label> 
					<input class="d-none" id="email-image" type="file" accept="image/*" /> 
					<label class="btn btn-tertiary btn-sm mb-0 cursor-pointer"
					for="email-image" data-bs-toggle="tooltip" data-bs-placement="top"
					title="Attach images">
					<span class="fas fa-image fs-8"
					data-fa-transform="down-2">
					</span>
					</label>
			</div>
			<div class="d-flex align-items-center">
				<div class="dropdown font-sans-serif me-2 btn-reveal-trigger">
					<button
						class="btn btn-link text-600 btn-sm dropdown-toggle btn-reveal dropdown-caret-none"
						id="email-options" type="button" data-bs-toggle="dropdown"
						data-boundary="viewport" aria-haspopup="true"
						aria-expanded="false">
						<span class="fas fa-ellipsis-v" data-fa-transform="down-2"></span>
					</button>
					<div class="dropdown-menu dropdown-menu-end border py-2"
						aria-labelledby="email-options">
						<a class="dropdown-item" href="#!">Print</a><a
							class="dropdown-item" href="#!">Check spelling</a><a
							class="dropdown-item" href="#!">Plain text mode</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#!">Archive</a>
					</div>
				</div>
				<button class="btn btn-tertiary btn-sm" type="button"
					data-bs-toggle="tooltip" data-bs-placement="top" title="Delete">
					<span class="fas fa-trash"></span>
				</button>
			</div>
		</div>
	</form:form>
	