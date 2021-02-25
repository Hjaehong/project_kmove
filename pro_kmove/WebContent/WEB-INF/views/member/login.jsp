<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<div id="topMenu">
		<jsp:include page="/template/topMenu.jsp"/>
	</div>
	
	<form action="${root}/member/loginOk.do" method="post">
		<table border="1" align="center" cellpadding="2" cellspacing="0">
			<tr>
				<td>회원ID</td>
				<td><input type="text" name="id"/></td>
			</tr>
			
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="password" /></td>
			</tr>
			
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="확인"/>
					<input type="button" value="취소" onclick="location.href='../index.jsp'"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>