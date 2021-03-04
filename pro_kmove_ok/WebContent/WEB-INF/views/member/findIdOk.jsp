<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<c:set var="root" value="${pageContext.request.contextPath}" />
<c:set var="id" value="${id}" scope="session"/>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
</head>
<body>
	
	<c:if test="${id != null}">
	<h3>아이디 찾기에 성공하셨습니다.</h3>
	
	<b>아이디 : </b>${id}<br><br><br>
	
	<input type="button" value="로그인" onclick="location.href='${root}/member/login.do'"/>
	<input type="button" value="비밀번호 찾기" onclick="location.href='${root}/member/findPwd.do'"/>
	<input type="button" value="메인" onclick="location.href='../index.jsp'"/>
	</c:if>
	
	<c:if test="${id == null}">
		작성하신 정보와 알맞는 아이디가 존재하지 않습니다.<br><br><br>
		<input type="button" value="로그인" onclick="location.href='${root}/member/login.do'"/>
		<input type="button" value="아이디 찾기" onclick="location.href='${root}/member/findId.do'"/>
		<input type="button" value="비밀번호 찾기" onclick="location.href='${root}/member/findPwd.do'"/>
		<input type="button" value="메인" onclick="location.href='../index.jsp'"/>
	</c:if>
	
</body>
</html>