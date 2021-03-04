<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<c:set var="memberDto" value="${memberDto}" scope="session"/>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${root}/css/styleact.css">
<title>회원 수정 성공</title>
</head>
<body>
	<nav class="menu">
		<div class="search">
			<input type="text" placeholder="Search">
			<input type="image" src="${root}/img/click1.png" alt="검색">
		</div>
		<div id="contents">
			<a href="../main.jsp" ><span><img alt="로고	" src="${root}/img/logo3.png"></span></a>
			<a href="${root}/groupPurchase/list.do" ><span>공동구매</span></a>
			<a href="#" ><span>해외직구</span></a>
			<a href="#" ><span>주문제작</span></a>
			<a href="#" ><span>자유게시판</span></a>
			<a href="${root}/member/login.do" ><span>로그인</span></a>
			<a href="${root}/member/register.do" class=on><span>회원가입</span></a>
			<span></span>
		</div> 
	</nav>	
	<div class="wrap">
	<h1>#.09</h1><br>
		<h3>회원 수정에 성공하였습니다.</h3><br><br>
	
		<input type="button" name="main" value="메인" onclick="location.href='../main.jsp'"/>	
		<input type="button" name="myMainPage" value="마이페이지" onclick="location.href='${root}/member/myMainPage.do'"/>
	</div>
</body>
</html>