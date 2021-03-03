<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<c:set var="memberDto" value="${memberDto}" scope="session"/>
<html>
<head>
<meta charset="UTF-8">
<title>회원 수정 성공</title>
</head>
<body>
	<div id="topMenu">
		<jsp:include page="/template/topMenu.jsp"/>
	</div>
	<h3>회원 수정에 성공하였습니다.</h3>
	
	<input type="button" name="main" value="메인" onclick="location.href='../index.jsp'"/>	
	<input type="button" name="myMainPage" value="마이페이지" onclick="location.href='${root}/member/myMainPage.do'"/>
</body>
</html>