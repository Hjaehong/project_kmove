<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="root" value="${pageContext.request.contextPath}"/>
<title>게시판 목록보기</title>
<link rel="stylesheet" type="text/css" href="${root}/css/main.css"/>
<link rel="stylesheet" type="text/css" href="${root}/css/groupPurchase/style.css"/>
</head>
<body>
<!-- 글쓰기 할때 아이디 보내야함 -->
<div id="topMenu">
		<jsp:include page="/template/topMenu.jsp"/>
</div>
<table width="530" align="center">
	<div>
		<tr>
			<td align="right" bgcolor="D1DBDB">
				<a href="${root}/groupPurchase/write.do">글쓰기</a>
			</td>
		</tr>
	</div>
</table>
<c:if test="${count==0}">
	<table border="1" width="530" cellpadding="2" cellspacing="0" align="center">
			<tr>
				<td align="center">게시판에 저장된 글이 없습니다.</td>
			</tr>
	</table>
</c:if>

	<c:if test="${count > 0}">
		<table border="1" width="530" cellpadding="2" cellspacing="0" align="center">
			<tr> 
				<td align="center" width="60">번호</td>
				<td align="center" width="250">제목</td>
				<td align="center" width="70">작성자</td>
				<td align="center" width="100">작성일</td>
				<td align="center" width="50">조회수</td>			
			</tr>
			
			<!-- Board List -->
			<c:forEach var="groupboardDto" items="${groupboardList}">
				<tr>
					<td>${groupboardDto.board_number}</td>
					<td>
						<c:if test="${groupboardDto.sequence_level > 0}">
							<c:forEach begin="0" end="${groupboardDto.sequence_level}">
								&nbsp;
							</c:forEach>					
						</c:if>
						<a href="${root}/groupPurchase/read.do?board_number=${groupboardDto.board_number}&pageNumber=${currentPage}">
							${groupboardDto.subject}
						</a>
					</td>					
					<td>${groupboardDto.subject}</td>
					<td>
						<fmt:formatDate value="${groupboardDto.write_date}" pattern="yyyy-MM-dd"/>
					</td>
					<td>${groupboardDto.read_count}</td>
				</tr>
			</c:forEach>	
		</table>
	</c:if>
		<br/>
	
	<!-- 페이지 번호 -->
	<center>
		<%--
			1. 총페이지 수 : 전체레코드 수(count) / 한 페이지당 게시물 수(boardSize)
					예) 100/10 = 10page, 100/5 = 5page
					pageCount = (int)count/boardSize + (count%boardSize ==0 ? 0:1)
			2. 페이지 블럭 : 10, 시작페이지번호, 끝페이지번호
				int startPage = (int)((currentPage-1)/pageBlock)*currentPage+1;
				
				int endPage = (int) startPage + pageBlock -1;
		 --%>
	
		<fmt:parseNumber var="pageCount" value="${count/boardSize+(count%boardSize==0 ? 0:1)}" integerOnly="true"/>
		총페이지 수 : ${pageCount}
		
		<c:set var="pageBlock" value="${10}"/>
		<fmt:parseNumber var="result" value="${(currentPage-1)/pageBlock}" integerOnly="true"/>
		
		<c:set var="startPage" value="${result*pageBlock+1}"/>
		<c:set var="endPage" value="${startPage+pageBlock-1}"/>
		
		시작페이지번호 : ${startPage}, 끝페이지번호 : ${endPage}
		
		<c:if test="${endPage > pageCount}">
			<c:set var="endPage" value="${pageCount}"/>
		</c:if>
		
		비교후 수정 끝페이지번호: ${endPage}
		<br/>
		<%-- 이전 --%>
		<c:if test="${startPage > pageBlock}">
			<a href="${root}/groupPurchase/list.do?pageNumber=${startPage-pageBlock}">[이전]</a>
		</c:if>
		
		<%-- 페이지 번호 반복 처리 --%>
		<c:forEach var="i" begin="${startPage}" end="${endPage}">
			<a href="${root}/groupPurchase/list.do?pageNumber=${i}">[${i}]</a>
		</c:forEach>
		
		
		<%-- 다음 --%>
		<c:if test="${endPage < pageCount}">
			<a href="${root}/groupPurchase/list.do?pageNumber=${startPage+pageBlock}">[다음]</a>
		</c:if>
	</center>
</body>
</html>








