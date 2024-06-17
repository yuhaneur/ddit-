<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page import="kr.or.ddit.project.controller.ProjectController"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>



<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">




${principal.realUser.userId }

<security:authentication property="principal" var="principal"/>
<body>

	<!-- ===============================================-->
	   Main Content
	<!-- ===============================================-->
	<form:form modelAttribute="${ProjectController.MODELNAME }"
		enctype="multipart/form-data" class="card" method="post">
		<input type="text" value="${principal.realUser.userId }" name="userId">
		<!--name="userId" value="A001"  -->
		<div class="card-header bg-body-tertiary">
			<h5 class="mb-0">새 프로젝트 생성</h5>
		</div>
		<!--입력폼  -->
		<div class="card-body p-0">
			<div class="border border-top-0 border-200">
				<form:input
					class="form-control border-0 rounded-0 outline-none px-x1"
					path="projectName" type="text" placeholder="이름" />
			</div>

			<div class="min-vh-50 email-compose-textarea">

				<textarea class="tinymce d-none" data-tinymce="data-tinymce"
					name="projectCn" placeholder="설명">
								</textarea>
			</div>
			<div class="px-x1 py-3">
				<form:select path="projectParent">
					<option value></option>
					<c:forEach items="${projectList }" var="project">
						<form:option value="${project.projectNo }"
							label="${project.projectName }"></form:option>
					</c:forEach>
				</form:select>
				<form:errors path="projectParent" element="span" cssClass="text-danger" />
			</div>
			<div class="bg-body-tertiary px-x1 py-3">
				<div class="d-inline-flex flex-column">
					<div
						class="border px-2 rounded-3 d-flex flex-between-center bg-white dark__bg-1000 my-1 fs-10">
						<span class="fs-8 far fa-image"> </span> <span class="ms-2">
						</span> <a class="text-300 p-1 ms-6" href="#!" data-bs-toggle="tooltip"
							data-bs-placement="right" title="Detach"><span
							class="fas fa-times"> </span> </a>
					</div>
					<div
						class="border px-2 rounded-3 d-flex flex-between-center bg-white dark__bg-1000 my-1 fs-10">
						<span class="fs-8 far fa-file-archive"></span><span class="ms-2">coffee.zip
							(342kb)</span> <a class="text-300 p-1 ms-6" href="#!"
							data-bs-toggle="tooltip" data-bs-placement="right" title="Detach"><span
							class="fas fa-times"> </span> </a>
					</div>
				</div>
			</div>
		</div>
		<!-- 입력폼 -->
		<div
			class="card-footer border-top border-200 d-flex flex-between-center">
			<div class="d-flex align-items-center">
				<button class="btn btn-primary btn-sm px-5 me-2" type="submit">프로젝트생성하기</button>
				<input class="d-none" id="email-attachment" type="file" /> 
				<label
					class="me-2 btn btn-tertiary btn-sm mb-0 cursor-pointer"
					for="email-attachment" data-bs-toggle="tooltip"
					data-bs-placement="top" title="Attach files"><span
					class="fas fa-paperclip fs-8" data-fa-transform="down-2"></span></label> <input
					class="d-none" id="email-image" type="file" accept="image/*" /> <label
					class="btn btn-tertiary btn-sm mb-0 cursor-pointer"
					for="email-image" data-bs-toggle="tooltip" data-bs-placement="top"
					title="Attach images"><span class="fas fa-image fs-8"
					data-fa-transform="down-2"></span></label>
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
	