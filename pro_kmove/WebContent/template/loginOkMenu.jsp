<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}"/>

<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script type="text/javascript" src="${root}/XHR/xhr.js"></script>
</head>
<body>
	<a href="${root}/member/logout.do">로그아웃</a>
	<a href="${root}/member/myPage.do">마이페이지</a>
</body>
</html>