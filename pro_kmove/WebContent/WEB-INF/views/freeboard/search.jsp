<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
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
			<c:forEach var="searchList" items="${searchList}">
				<tr>
					<td>${searchList.board_number}</td>
					<td>
						<c:if test="${searchList.sequence_level > 0}">
							<c:forEach begin="0" end="${searchList.sequence_level}">
								&nbsp;
							</c:forEach>					
						</c:if>
						<a href="${root}/freeboard/read.do?board_number=${searchList.board_number}&pageNumber=${currentPage}">
							${searchList.subject}
						</a>
						
					</td>					
					<td>${searchList.writer}</td>
					
					<td>
						<fmt:formatDate value="${searchList.write_date}" pattern="yyyy-MM-dd"/>
					</td>
					<td>${searchList.read_count}</td>
				</tr>
			</c:forEach>	
		</table>
	</c:if>
</body>
</html>