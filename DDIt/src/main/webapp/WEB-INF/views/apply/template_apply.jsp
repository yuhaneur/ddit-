<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html data-bs-theme="light" lang="ko" dir="ltr">

 <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

<title>DDIT</title>

<tiles:insertAttribute name="preScript_apply" />


<c:if test="${not empty message }">
	<script>
		alert("${message}");
	</script>
</c:if>

</head>

<body data-context-path="${pageContext.request.contextPath}">

	<main class="main" id="top">
			
		<tiles:insertAttribute name="header_apply" />
		<tiles:insertAttribute name="content" />
		<tiles:insertAttribute name="footer_apply" />

	</main>
	
		<tiles:insertAttribute name="postScript_apply" />
</body>

</html>