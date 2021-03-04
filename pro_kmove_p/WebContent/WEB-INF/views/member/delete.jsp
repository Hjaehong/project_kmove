<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="root" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${root}/css/styleact2.css">
<script type="text/javascript">
 window.history.forward();
</script>
<title>회원탈퇴</title>
</head>
<body onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">
	<nav class="menu">
		<div class="search">
			<input type="text" placeholder="Search">
			<input type="image" src="img/click1.png" alt="검색">
		</div>
		<div id="contents">
			<a href="../main.jsp" ><span><img alt="로고	" src="img/logo3.png"></span></a>
			<a href="#" ><span>공동구매</span></a>
			<a href="#" ><span>해외직구</span></a>
			<a href="#" ><span>주문제작</span></a>
			<a href="#" ><span>자유게시판</span></a>
			<c:if test="${id != null}">
			<a href="${root}/member/myPage.do">마이페이지</a>
			<a href="${root}/member/logout.do">로그아웃</a>
			</c:if>
			<c:if test="${id == null}">
			<a href="${root}/member/login.do" ><span>로그인</span></a>
			<a href="${root}/member/register.do"><span>회원가입</span></a>
			</c:if>
			<span></span>
		</div> 
	</nav>	
	<div class="wrap">
		<form action="${root}/member/deleteOk.do" method="post" onsubmit="return delete(this)" name="delete">
			<table border="1" align="center" cellpadding="2" cellspacing="0">
				<dl>
					<dt>회원ID</dt>
					<dd><input type="text" name="id" value="${id}"/></dd>
				</dl>
				<dl>
					<dt>비밀번호</dt>
					<dd><input type="password" name="password"/>
					</dd>
				</dl>
				<dl>
					<dt>
						<dd><input type="submit" value="회원탈퇴"/>
						<input type="button" value="취소" onclick="location.href='${root}/member/myMainPage.do'"/></dd>
					</dt>
				</dl>
			</table>
		</form>
	</div>
</body>
</html>