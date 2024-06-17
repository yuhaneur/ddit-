<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"  prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<security:authentication property="principal" var="principal"/>

<c:if test="${not empty forbidden }">
	<script>
		alert("${forbidden}");
	</script>
</c:if>
<c:if test="${not empty principal }">
	<p>${principal.realUser.userId }</p>
</c:if>
${principal.realUser.student }

