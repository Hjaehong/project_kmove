<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${root}/css/free.css"/>
<link rel="stylesheet" type="text/css" href="${root}/css/main.css"/>
<link rel="stylesheet" type="text/css" href="${root}/css/groupPurchase/style.css"/>
</head>
<body>
	<div class="board_wrap">
		<div class="board_title">
			<strong>자유게시판</strong>
			<p>공지내용</p>
		</div>
<form id="fom" class="form_style"  action="${root}/freeboard/exwriteOk.do" method="post" onsubmit="return boardForm(this)">	
		<input type="hidden" name="board_number" value="${board_number}"/>
		<input type="hidden" name="group_number" value="${group_number}"/>
		<input type="hidden" name="sequence_number" value="${sequence_number}"/>
		<input type="hidden" name="sequence_level" value="${sequence_level}"/>
		<input type="hidden" name="pageNumber" value="${pageNumber}"/>
		<div class="board_write_wrap">
			<div class="board_write">
				<div class="title">
					<dl>
						<dt>제목</dt>
						<dt><input type="text" name="subject" placeholder="제목 입력"></dt>
					</dl>
				</div>
				<div class="info">
					<dl>
						<dt>글쓴이</dt>
						<dt><input type="text" name="writer" placeholder="글쓴이 입력"></dt>
						</dl>
						<dl>
						<dt>비밀번호</dt>
						<dt><input type="password" placeholder="비밀번호 입력"></dt>
					</dl>
				</div>
				<div class="cont">
					<textarea name="contents" placeholder="내용 입력"></textarea>
				</div>
			</div>
			<div class="bt_wrap">
				<a href="#" onclick="document.getElementById('fom').submit();" class="on">등록</a>
				<a href="#" onclick="location.href='${root}/freeboard/freeboardList.do?pageNumber=${pageNumber}'">취소</a>
			</div>
		</div>
</form>
	</div>

</body>
</html>