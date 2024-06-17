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


<!--===============================================-->
<!--Document Title-->
<!--===============================================-->
<title>Falcon | Dashboard &amp; Web App Template</title>


<tiles:insertAttribute name="preScript" />


<c:if test="${not empty message }">
	<script>
		alert("${message}");
	</script>
</c:if>


</head>

<body data-context-path="${pageContext.request.contextPath }">

	<tiles:insertAttribute name="content" />
	<tiles:insertAttribute name="postScript" />
</body>

</html>