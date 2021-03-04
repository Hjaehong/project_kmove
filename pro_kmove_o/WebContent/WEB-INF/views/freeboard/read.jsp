<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${root}/css/free.css">
<link rel="stylesheet" type="text/css" href="${root}/css/main.css"/>
<script type="text/javascript" src="${root}/XHR/xhr.js"></script>
<script type="text/javascript" src="${root}/enterJS/enter.js"></script>
<script type="text/javascript">
	function replyFun(root, board_number, group_number, sequence_number, sequence_level, pageNumber) {
		var url = root + "/groupPurchase/write.do?board_number=" + board_number;
		url +="&group_number=" + group_number;
		url +="&sequence_number=" + sequence_number;
		url +="&sequence_level=" + sequence_level;
		url +="&pageNumber=" + pageNumber;
		location.href = url;
		
	}
	function delFun(root, board_number,pageNumber){
		var url = root + "/freeboard/delete.do?board_number=" + board_number;
		url +="&pageNumber=" + pageNumber;
		alert(board_number);
		location.href = url;
	}
	
	function update(root, board_number,pageNumber){
		var url= root +"/freeboard/update.do?board_number=" + board_number;
		url +="&pageNumber=" + pageNumber;
		location.href = url;
	}
</script>
</head>
<body>
	<div class="board_wrap">
		<div class="board_title">
			<strong>자유게시판</strong>
			<p>공지내용</p>
		</div>
		<div class="board_view_wrap">
			<div class="board_view">
				<div class="title">
					글 제목이 들어갑니다.
				</div>
				<div class="info">
					<dl>
						<dt>번호</dt>
						<dd>${groupEnterFreeBoardDto.board_number}</dd>
					</dl>
					<dl>
						<dt>글쓴이</dt>
						<dd>${groupEnterFreeBoardDto.writer}</dd>
					</dl>
					<dl>
						<dt>작성일</dt>
						<dd><fmt:formatDate value="${groupEnterFreeBoardDto.write_date}" pattern="yy-MM-dd"/></dd>
					</dl>
					<dl>
						<dt>조회</dt>
						<dd>${groupEnterFreeBoardDto.read_count}</dd>
					</dl>
				</div>

				<div class="cont">
					${groupEnterFreeBoardDto.contents}
				</div>
			</div>
			<div class="bt_wrap">
				<a href="${root}/freeboard/freeboardList.do?pageNumber=${pageNumber}" class="on">목록</a>
				<a href="update('${root}','${groupEnterFreeBoardDto.board_number}','${pageNumber}')">수정</a>
			</div>
		</div>
	</div>

</body>
</html>