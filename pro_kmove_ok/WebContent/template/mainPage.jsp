<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta charset="UTF-8">
<title>메인 홈페이지</title>
<script type="text/javascript" src="${root}/XHR/xhr.js"></script>
<link rel="stylesheet" type="text/css" href="${root}/css/main.css"/>
</head>
<body>
	<div id="topMenu">
		<jsp:include page="topMenu.jsp"/>
	</div>
	<div id="bodyView">
		<div id="centerView">
			<c:if test="${viewPage==null}">
				<center>ㅎㅇㅎㅇ</center>
			</c:if>
			<c:if test="${viewPage!=null}">
				<jsp:include page="${viewPage}"></jsp:include>
			</c:if>
		</div>
	</div>	
</body>
</html>