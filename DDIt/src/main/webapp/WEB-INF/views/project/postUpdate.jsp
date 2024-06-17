<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page import="kr.or.ddit.project.controller.ProjectBoardController"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/project/${projectNo }/${projectPostNo}" var="updateUrl"/>



<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">






<body>

	<!-- ===============================================-->
	<!--    Main Content-->
	<!-- ===============================================-->
	<form:form modelAttribute="${ProjectBoardController.MODELNAME1 }"
		enctype="multipart/form-data" class="card" method="put" id="boardForm">
		<input type="hidden" >
		<!-- name="userId" value="A001" -->
		<div class="card-header bg-body-tertiary">
			<h5 class="mb-0">게시판 수정</h5>
		</div>
		<div class="card-body p-0">
			<div class="border border-top-0 border-200">
				<form:input
					class="form-control border-0 rounded-0 outline-none px-x1"
					path="projectPostSj" type="text" placeholder="이름" />
			</div>

			<div class="min-vh-50 email-compose-textarea">
			<textarea name="projectPostCn" class="tinymce d-none" data-tinymce="data-tinymce" data-tinymce="false" placeholder="설명"> ${updateBoard.projectPostCn }</textarea> 
			<c:if test="${not empty updateBoard.atchList }">
				<c:forEach items="${updateBoard.atchList }" var="atch">
				<span class="atch-span">
					기존파일:${atch.fileName }
				<a class="text-danger delatch" href="javascript:;" data-atch-file-no="${atch.atchFileNo }" data-atch-file-turn="${atch.atchFileTurn }">X</a>
				</span>
				</c:forEach>
			</c:if>
			
			</div>
			<div class="px-x1 py-3">
				
			</div>
			<div class="bg-body-tertiary px-x1 py-3">
			 <input name="projectFiles"  type="file" multiple="multiple" />
			<button class="btn btn-tertiary btn-sm" type="button"
					data-bs-toggle="tooltip" data-bs-placement="top" title="Delete">
					<span class="fas fa-trash"></span>
				</button>
			
			
			</div>
		</div>
		<div
			class="card-footer border-top border-200 d-flex flex-between-center">
			<div class="d-flex align-items-center">
				<button class="btn btn-primary btn-sm px-5 me-2" type="submit">게시판 수정</button>
			</div>
			<div class="d-flex align-items-center">
				<div class="dropdown font-sans-serif me-2 btn-reveal-trigger">
					
					
				</div>
				
			</div>
		</div>
	</form:form>
	
	
<script type="text/javascript">
	$(boardForm).on("click", ".delatch", function(event){
		let atchFileNo = this.dataset.atchFileNo;
		let atchFileTurn =this.dataset.atchFileTurn;
		let $target = $(this);
		if(confirm("삭제하실건가요???")){
			let url = `${updateUrl}/atch/\${atchFileNo}/\${atchFileTurn}`;
			$.ajax({
				url:url,
				method:"delete",
				dataType:"text",
				 success:function(resp){
						if(resp==="SUCCESS"){
							$target.parent(".atch-span").remove();
						}
				 }
			});
		}
		
	});

</script>
	