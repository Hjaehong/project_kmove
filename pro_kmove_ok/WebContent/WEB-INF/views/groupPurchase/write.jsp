<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="root" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 글쓰기</title>
<link rel="stylesheet" type="text/css" href="${root}/css/main.css"/>
<link rel="stylesheet" type="text/css" href="${root}/css/groupPurchase/style.css"/>
<script src="https://cdn.ckeditor.com/ckeditor5/25.0.0/classic/ckeditor.js"></script>
</head>
<body>
	<b>
		board_number : ${board_number}
		group_number : ${group_number}
		sequence_number : ${sequence_number}
		sequence_level : ${sequence_level}
	</b>
	<form class="form_style"  action="${root}/groupPurchase/writeOk.do" method="post" onsubmit="return boardForm(this)" enctype="multipart/form-data">	
		<input type="hidden" name="board_number" value="${board_number}"/>
		<input type="hidden" name="group_number" value="${group_number}"/>
		<input type="hidden" name="sequence_number" value="${sequence_number}"/>
		<input type="hidden" name="sequence_level" value="${sequence_level}"/>
		<input type="hidden" name="pageNumber" value="${pageNumber}"/>
		
		<div style="width:598px; height:15px; border-width:2px; text-align:right; padding:15px 0px 0px 0px; border-bottom-width:0px;">
			<a href="${root}/groupPurchase/list.do?pageNumber=${pageNumber}">글목록</a>
		</div>
		
		<div class="line">
			<label class="title">비밀번호</label>
			<span class="content">
				<input type="password" name="board_password"/>
			</span>
		</div>
		<div class="line">
			<label class="title">닉네임</label>
			<span class="content">
				<input type="text" name="writer" value="11"/>
			</span>
		</div>
		<div class="line">
			<label class="title">마감날짜</label>
			<span class="content">
				<input type="date" size="50" name="end_date"/>
			</span>
		</div>

		<label class="title">인원수</label>
		<span class="peoplecount">
			<input type="text" size="30" name="peoplecount"/>
		</span>
		<label class="title">가격</label>
		<span class="peoplecount">
			<input type="text" size="30" name="price"/>
		</span>

		<div class="line">
			<label class="title">제목</label>
			<span class="content"><input type="text" size="50" name="subject"/></span>
		</div>

		<div class="line">
			<label class="title">카카오아이디</label>
			<span class="content">
				<input type="text" name="kakaoID"/>
			</span>
		</div>
		
		<div class="line" style="height:230px;" id="content_id">
			<label class="title" style="height:230px;">내용</label>
			<span class="content" style="height:230px;">
				<textarea rows="14" cols="58" name="contents"></textarea>
			</span>
		</div>
		
			<div class="line">
			<label class="title">파일명</label>
			<span class="content">
				<input type="file" name="fileName" size="40"/>
			</span>
		</div>
		
		
		<div class="line" style="width:598px; border-width:2px; text-align:center;">
			<input type="submit" value="글쓰기"/>
			<input type="reset" value="다시작성"/>
			<input type="button" value="목록보기" onclick="location.href='${root}/groupPurchase/list.do?pageNumber=${pageNumber}'"/>
		</div>
	</form>
	<!--<script src="${root}/awriteJS/ckeditor.js"></script> --> 
</body>
</html>