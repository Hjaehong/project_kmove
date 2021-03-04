<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta charset="UTF-8">
<title>form</title>
<link rel="stylesheet" href="${root}/css/styleact.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	function loginGo(){
		alert("로그인 후 사용이 가능합니다.");
	}
</script>
</head>
<body>
	<nav class="menu">
		<div class="search">
			<input type="text" placeholder="Search">
			<input type="image" src="${root}/img/click1.png" alt="검색">
		</div>
		<div id="contents">
			<a href="${root}/main.jsp" ><span><img alt="로고	" src="${root}/img/logo3.png"></span></a>
			<a href="${root}/member/login.do" onclick="loginGo()"><span>공동구매</span></a>
			<a href="#" ><span>해외직구</span></a>
			<a href="#" ><span>주문제작</span></a>
			<a href="${root}/member/login.do" onclick="loginGo()"><span>자유게시판</span></a>
			<a href="../login.jsp" class=on><span>로그인</span></a>
			<a href="${root}/member/register.do" ><span>회원가입</span></a>
			<span></span>
		</div> 
	</nav>	
	<div class="wrap">
		<h1>#.09<br><span id="act_logo">로그인</span></h1>
		<form action="${root}/member/loginOk.do" method="post">
			<dl>
				<dt>아이디</dt>
				<dd><input type="text" name="id" placeholder="아이디"></dd>
			</dl>
			<dl>
				<dt>비밀번호</dt>
				<dd><input type="password" name="password" placeholder="비밀번호"></dd>
			</dl>
			<input type="submit" value="로  그  인"> 
		</form>
		<div id="act_find">
			<a href="${root}/member/findId.do">아이디찾기</a>
			<a href="${root}/member/findPwd.do">비밀번호찾기</a>
			<a href="${root}/member/register.do">회원가입</a>
		</div>
	</div>
	
	<script type="text/javascript">
		$(document).ready(function(){
			$('nav a').on('click',function(){
				$(this).addClass('on');
				$(this).siblings().removeClass('on');
			});
		});
	</script>
	
</body>
</html>