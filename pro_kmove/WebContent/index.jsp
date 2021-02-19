<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="${root}/css/main.css"/>
<body>
	<div id="topMenu">
		<jsp:include page="/template/topMenu.jsp"/>
	</div>
	
	<div id="bodyView">
		<div id="centerView">
			<c:if test="${viewPage == null}">
				<center>welcome homepage</center>
			</c:if>
			
			<c:if test="${viewPage != null}">
				<jsp:include page="${viewPage}"/>
			</c:if>
		</div>
		<div id="sideMenu">
			<jsp:include page="/template/sideMenu.jsp"/>
		</div>
	</div>
	
</body>
</html>