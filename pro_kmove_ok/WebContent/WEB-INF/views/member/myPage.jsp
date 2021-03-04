<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<c:set var="root" value="${pageContext.request.contextPath}" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${root}/css/styleact.css">
<title>내 정보보기</title>
<script type="text/javascript">
 function loginchk() {
	  var regx = /^[a-zA-Z0-9]*$/;
	  var id = document.form.id.value;
	  var pass = document.form.pass.value;
	  
	  if (pass.length < 6 || pass == null) {
	   	alert("비밀번호는 6글자이상입니다^^");
	   	document.form.pass.focus();
	   	return;
	  }
	  
	  if (!regx.test(pass)) {
	   	alert("비밀번호는 영어, 숫자만 입력가능합니다.");
	   	document.form.pass.focus();
	   	return false;
	  }
	  document.form.submit();
	 }
</script>
</head>
<body nload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">
	<nav class="menu">
		<div class="search">
			<input type="text" placeholder="Search">
			<input type="image" src="${root}/img/click1.png" alt="검색">
		</div>
		<div id="contents">
			<a href="../main.jsp" ><span><img alt="로고" src="${root}/img/logo3.png"></span></a>
			<a href="${root}/groupPurchase/list.do" ><span>공동구매</span></a>
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
	
<form action="${root}/member/myPageOk.do" method="post">
	   <div class="wrap">
	   	<dl>
	    	<dt>아이디 : </dt>
	    	<dd><input type="text" size="10" maxlength="15" name="id" class="inputid" value="${id}" disabled="disabled"></dd>&nbsp;
	    </dl>
	    <br><br>
	    <dl>
	    <dt>비밀번호 : </dt>
	    	<dd><input type="password" size="10" maxlength="15" name="password" value="${memberDto.password}"></dd><br><br>
		</dl>
	     	<input type="submit" value="확인" onclick="loginchk()">
		</div>
</form>
</body>
</html>