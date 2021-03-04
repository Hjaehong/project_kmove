<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	<c:set var="root" value="${pageContext.request.contextPath}"/>
	
	<c:remove var="id" scope="session"/>
	<c:remove var="memberDto" scope="session"/>
	
	<script type="text/javascript">
		alert("로그아웃 되었습니다.");
		location.href="./../main.jsp";
	</script>
	
</body>
</html>