<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
</head>
<body>
	<c:if test="${password != null}">
	
	<h3>비밀번호 찾기에 성공하셨습니다.</h3>
	<b>비밀번호 : </b>${password}<br><br><br>
	<input type="button" value="로그인" onclick="location.href='${root}/member/login.do'"/>
	<input type="button" value="메인" onclick="location.href='../index.jsp'"/>
	</c:if>
	
	<c:if test="${password == null}">
		아이디, 이름, 핸드폰 번호 중 틀린 것이 있습니다.<br><br><br>
		<input type="button" value="로그인" onclick="location.href='${root}/member/login.do'"/>
		<input type="button" value="아이디 찾기" onclick="location.href='${root}/member/findId.do'"/>
		<input type="button" value="돌아가기" onclick="location.href='${root}/member/findPwd.do'"/>
		<input type="button" value="메인" onclick="location.href='../index.jsp'"/>
	</c:if>
	
</body>
</html>