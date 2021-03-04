<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<c:set var="root" value="${pageContext.request.contextPath}" />
<c:set var="id" value="${id}" scope="session"/>
<link rel="stylesheet" href="${root}/css/styleact.css">
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
</head>
<body>
	<nav class="menu">
		<div class="search" >
			<input type="text" placeholder="Search">
			<input type="image" src="img/click1.png" alt="검색">
		</div>
		<div id="contents">
			<a href="../main.jsp" ><span><img alt="로고	" src="img/logo3.png"></span></a>
			<a href="#" ><span>공동구매</span></a>
			<a href="#" ><span>해외직구</span></a>
			<a href="#" ><span>주문제작</span></a>
			<a href="#" ><span>자유게시판</span></a>
			<a href="${root}/member/login.do" class=on><span>로그인</span></a>
			<a href="${root}/member/register.do" ><span>회원가입</span></a>
			<span></span>
		</div> 
	</nav>	
	
	<c:if test="${id != null}">
	<div class="wrap">
	<h1>#.09<br><h3>아이디 찾기에 성공하셨습니다.</h3>
	
	<b>아이디 : </b>${id}<br><br><br>
	
	<input type="button" value="로그인" onclick="location.href='${root}/member/login.do'"/>
	<input type="button" value="비밀번호 찾기" onclick="location.href='${root}/member/findPwd.do'"/>
	<c:if test="${id != null}">
		<c:remove var="id" scope="session" />
		<input type="button" value="메인" onclick="location.href='../main.jsp'"/>
	</c:if>
	</div>
	</c:if>
	
	<c:if test="${id == null}">
	<div class="wrap">
	<h1>#.09<br>
		작성하신 정보와 알맞는 아이디가 존재하지 않습니다.<br><br><br>
		<input type="button" value="로그인" onclick="location.href='${root}/member/login.do'"/>
		<input type="button" value="아이디 찾기" onclick="location.href='${root}/member/findId.do'"/>
		<input type="button" value="비밀번호 찾기" onclick="location.href='${root}/member/findPwd.do'"/>
		<input type="button" value="메인" onclick="location.href='../index.jsp'"/>
	</div>
	</c:if>
	
</body>
</html>