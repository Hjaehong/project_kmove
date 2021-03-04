<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="root" value="${pageContext.request.contextPath}" />
<title>게시판 읽기</title>
<link rel="stylesheet" type="text/css" href="${root}/css/main.css" />
<link rel="stylesheet" type="text/css" href="${root}/css/groupPurchase/style.css" />
<script type="text/javascript" src="${root}/XHR/xhr.js"></script>
<script type="text/javascript" src="${root}/enterJS/enter.js"></script>
<script type="text/javascript" src="${root}/enterJS/delete.js"></script>
<script type="text/javascript" src="${root}/enterJS/okToServer.js"></script>
<script type="text/javascript">
	function replyFun(root, board_number, group_number, sequence_number,
			sequence_level, pageNumber) {
		var url = root + "/groupPurchase/write.do?board_number=" + board_number;
		url += "&group_number=" + group_number;
		url += "&sequence_number=" + sequence_number;
		url += "&sequence_level=" + sequence_level;
		url += "&pageNumber=" + pageNumber;
		location.href = url;
	}
</script>
</head>
<body>
	<div id="topMenu">
		<jsp:include page="/template/topMenu.jsp" />
	</div>

	<table border="1" width="510" cellpadding="2" cellspacing="0"
		align="center">
		<tr>
			<td align="center" height="20" width="125">글번호</td>
			<td align="center" height="20" width="125">${groupEnterboardDto.board_number}</td>

			<td align="center" height="20" width="125">조회수</td>
			<td align="center" height="20" width="125">${groupEnterboardDto.read_count}</td>
		</tr>

		<tr>
			<td align="center" height="20" width="125">작성자</td>
			<td align="center" height="20" width="125">${groupEnterboardDto.writer}</td>

			<td align="center" height="20" width="125">마감날짜</td>
			<td align="center" height="20" width="125"><fmt:formatDate
					value="${groupEnterboardDto.end_date}"
					pattern="yy-MM-dd" /></td>
		</tr>
		<c:if test="${groupEnterboardDto.enterpeople < groupEnterboardDto.peoplecount}">
			<tr>
				<td align="center" height="20" width="125" colspan="2">인원수</td>
				<td align="center" height="20" width="125" colspan="2">${groupEnterboardDto.enterpeople} / ${groupEnterboardDto.peoplecount}</td>
			</tr>
		</c:if>
		<c:if test="${groupEnterboardDto.enterpeople == groupEnterboardDto.peoplecount}">
			<tr>
				<td align="center" height="20" width="125" colspan="2">인원수</td>
				<td align="center" height="20" width="125" colspan="2">${groupEnterboardDto.enterpeople} / ${groupEnterboardDto.peoplecount}</td>
			</tr>
		</c:if>

		<tr>
			<td align="center" height="200" width="125">글내용</td>
			<td valign="top" height="200" colspan="3"><img src="../uploadImg/${groupEnterboardDto.fileName}"/><br/>${groupEnterboardDto.contents}</td>
		</tr>

		<tr>
			<td height="30" colspan="4" align="center">
				<input type="button" value="참여" onclick="enter('${root}','${id}','${groupEnterboardDto.board_number}')" />
				<input type="button" value="글삭제" onclick="delFun('${root}','${boardDto.board_number}','${pageNumber}')" />
				<!-- 부모의 글번호, 그룹번호, 글순서, 글레벨 --> 
				<input type="button" value="답글" onclick="replyFun('${root}','${boardDto.board_number}','${boardDto.group_number}',
										 			'${boardDto.sequence_number}','${boardDto.sequence_level}','${pageNumber}')" />
				<input type="button" value="글목록" onclick="location.href='${root}/groupPurchase/list.do?pageNumber=${pageNumber}'" />
			</td>
		</tr>
		<tr>
			<td height="50" colspan="4" align="center">
				<div id="enter">
					<!-- 새로운 참여자 -->
					
					
					<!-- 기존 참여자 -->
					<c:forEach var="list" items="${enterlist}">
						<div class="enterDiv" id="${list.id}">
							<span class="cssid">id : ${list.id}
								<c:if test="${list.okcancel!=1}"> 
									<a href="javascript:okToServer('${list.id}', '${root}','${list.board_number}')">수락 &nbsp;</a>
									<a href="javascript:cancelToServer('${list.id}', '${root}','${list.board_number}')">거절</a>
								</c:if>
							</span>
						</div>
					</c:forEach>
				</div>
			</td>
		</tr>
	</table>

</body>
</html>








