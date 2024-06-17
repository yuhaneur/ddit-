<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<security:authentication property="principal" var="principal"/>

<nav class="navbar navbar-light navbar-glass navbar-top navbar-expand">

	<button
		class="btn navbar-toggler-humburger-icon navbar-toggler me-1 me-sm-3"
		type="button" data-bs-toggle="collapse"
		data-bs-target="#navbarVerticalCollapse"
		aria-controls="navbarVerticalCollapse" aria-expanded="false"
		aria-label="Toggle Navigation">
		<span class="navbar-toggle-icon"><span class="toggle-line"></span></span>
	</button>
	<a class="navbar-brand me-1 me-sm-3" href="${pageContext.request.contextPath}/index.do">
		<div class="d-flex align-items-center">
			<img class="me-2"
				src="${pageContext.request.contextPath}/resources/images/DDIT1.png"
				alt="" width="40" /><span class="font-sans-serif text-primary">DDIT</span>
		</div>
	</a>
	
	<ul class="navbar-nav navbar-nav-icons ms-auto flex-row align-items-center">
		<li class="nav-item dropdown">
		<a class="nav-link pe-0 ps-2"
			id="navbarDropdownUser" role="button" data-bs-toggle="dropdown"
			aria-haspopup="true" aria-expanded="false">
				<div class="avatar avatar-xl">
					<img class="rounded-circle" src="" alt="" id="imgTag" />
				</div>
		</a>
			<div class="dropdown-menu dropdown-caret dropdown-caret dropdown-menu-end py-0" aria-labelledby="navbarDropdownUser">
				<a class="dropdown-item fw-bold text-warning" href="#!">${principal.realUser.userId}</a> 
				<div class="dropdown-divider"></div>
				<div class="bg-white dark__bg-1000 rounded-2 py-2">
					<a class="dropdown-item fw-bold" href="${pageContext.request.contextPath}/school/${principal.realUser.student.classCode}">Class</a> 
					<a class="dropdown-item fw-bold" href="${pageContext.request.contextPath}/project">Project</a> 
				    <a class="dropdown-item fw-bold" href="${pageContext.request.contextPath}/snsProfile/myProfile.do">Profile</a>

					<div class="dropdown-divider"></div>
						<a class="dropdown-item fw-bold" href="javascript:;">Settings</a>
						<a class="dropdown-item fw-bold" href="${pageContext.request.contextPath}/auth/logout.do">Logout</a>
				</div>
			</div></li>
	</ul>
</nav>
<script>

let imgTag = document.getElementById("imgTag")

function getImg(){
	$.ajax({
		url: "/preset/presetDetail",
		method: "GET",
		dataType: "json",
		success: function(list){
			console.log(list);
			let imgName = '/atch/' + list[0].gafile.streFileName;
			imgTag.src = imgName;
		}
	});
}
getImg();
</script>















