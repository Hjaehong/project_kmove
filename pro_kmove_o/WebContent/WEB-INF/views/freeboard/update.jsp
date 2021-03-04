<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${root}/css/free.css">
<link rel="stylesheet" type="text/css" href="${root}/css/fileBoard/style.css"/>
<script type="text/javascript" src="${root}/javascript/fileBoard/script.js"></script>
</head>
<body>
	<div class="board_wrap">
		<div class="board_title">
			<strong>자유게시판</strong>
			<p>공지내용</p>
		</div>
<form id="frm" action="${root}/freeboard/updateOk.do" method="post">
	<input type="hidden" name="board_number" value="${groupEnterFreeBoardDto.board_number}"/>
	<input type="hidden" name="pageNumber" value="${pageNumber}"/>
		<div class="board_write_wrap">
			<div class="board_write">
				<div class="title">
					<dl>
						<dt>제목</dt>
						<dt><input type="text" readonly name="subject" placeholder="제목 입력" value="${groupEnterFreeBoardDto.subject}"></dt>
					</dl>
				</div>
				<div class="info">
					<dl>
						<dt>글쓴이</dt>
						<dt><input type="text" placeholder="글쓴이 입력" name="writer" value="${groupEnterFreeBoardDto.writer}"></dt>
						</dl>
						<dl>
						<dt>비밀번호</dt>
						<dt><input type="password" placeholder="비밀번호 입력" name="password" value="${groupEnterFreeBoardDto.password}"></dt>
					</dl>
				</div>
				<div class="cont">
					<textarea placeholder="내용 입력" name="contents">${groupEnterFreeBoardDto.contents}</textarea>
				</div>
			</div>
			<div class="bt_wrap">
				<a href="#" onclick="document.getElementById('frm').submit();" class="on">수정</a>
				<a href="#" onclick="location.href='${root}/fileBoard/list.do?pageNumber=${pageNumber}'">취소</a>
			</div>
		</div>
		</form>
	</div>
</body>
</html>