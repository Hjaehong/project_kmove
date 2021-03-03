<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="id" value="${id}" scope="session"/>
<c:set var="memberDto" value="${memberDto}" scope="session"/>
<html>
<c:set var="root" value="${pageContext.request.contextPath}" />
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>
	<div id="topMenu">
		<jsp:include page="/template/topMenu.jsp"/>
	</div>
		<div class="myInfo">
			<h3>내 정보</h3>
				<div>
					<b>닉네임 : ${memberDto.nickname}</b> 
					<b>휴대폰 : ${memberDto.phone1}-${memberDto.phone2}-${memberDto.phone3}</b> 
					
					<a href="${root}/member/update.do">수정</a>
					<a href="${root}/member/delete.do">탈퇴</a>
				</div>
		</div>
		
	<div class="writePost" title="내가 쓴 게시물">
		<h3>내가 쓴 게시물</h3>
	</div>
		
	<div class="partPost" title="참여한 게시물">
		<h3>참여한 게시물</h3>
	</div>
		
	<div class="favoPost" title="찜 한 게시물">
		<h3>찜 한 게시물</h3>
	</div>
</body>
</html>