<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:set var="root" value="${pageContext.request.contextPath}"/>
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${root}/css/main.css"/>
<link rel="stylesheet" href="${root}/css/free.css">
</head>
<body>
	<div class="board_wrap">
		<div class="board_title">
			<strong>자유게시판</strong>
			<p>공지내용</p>
		</div>
		<div class="board_list_wrap">
			<div class="board_list">
				<div class="top">
					<div class="num">번호</div>
					<div class="title">제목</div>
					<div class="writer">글쓴이</div>
					<div class="date">작성일</div>
					<div class="count">조회</div>
				</div>
				<c:forEach var="freeboardDto" items="${freeboardList}">
					<div>
						<div class="num">${freeboardDto.board_number}</div>
						<div class="title"><a href="${root}/freeboard/read.do?board_number=${freeboardDto.board_number}&pageNumber=${currentPage}">${freeboardDto.subject}</a></div>
						<div class="writer">${freeboardDto.writer}</div>
						<div class="date"><fmt:formatDate value="${freeboardDto.write_date}" pattern="yyyy-MM-dd"/></div>
						<div class="count">${freeboardDto.read_count}</div>
					</div>
				</c:forEach>
			</div>
		
			<div class="board_page">
				<fmt:parseNumber var="pageCount" value="${count/boardSize+(count%boardSize==0 ? 0:1)}" integerOnly="true"/>
					<c:set var="pageBlock" value="${8}"/>
				<fmt:parseNumber var="result" value="${(currentPage-1)/pageBlock}" integerOnly="true"/>
				<c:set var="startPage" value="${result*pageBlock+1}"/>
				<c:set var="endPage" value="${startPage+pageBlock-1}"/>
				
				<c:if test="${endPage > pageCount}">
					<c:set var="endPage" value="${pageCount}"/>
				</c:if>
				<c:if test="${startPage > pageBlock}">
					<a href="${root}/groupPurchase/list.do?pageNumber=${startPage-pageBlock}">[이전]</a>
				</c:if>
				
				<c:forEach var="i" begin="${startPage}" end="${endPage}">
					<a href="${root}/groupPurchase/list.do?pageNumber=${i}">[${i}]</a>
				</c:forEach>
				
				<c:if test="${endPage < pageCount}">
					<a href="${root}/groupPurchase/list.do?pageNumber=${startPage+pageBlock}">[다음]</a>
				</c:if>
			</div>
			<div class="bt_wrap">
				<a href="${root}/freeboard/exwrite.do" class="on">글쓰기</a>
			</div>
		</div>
	</div>

</body>
</html>