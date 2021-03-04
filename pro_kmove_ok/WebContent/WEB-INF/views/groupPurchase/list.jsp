<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath }"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${root}/css/stylebuy.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="${root}/XHR/xhr.js"></script>
<script type="text/javascript" src="${root}/javascipt/groupPurchase/jjim.js"></script>
</head>
<body>
	<nav class="menu">
		<div class="search">
			<input type="text" placeholder="Search">
			<input type="image" src="${root}/img/click1.png" alt="검색">
		</div>
		<div class="contents">
			<a href="${root}/main.jsp" ><span><img alt="로고	" src="${root}/img/logo3.png" alt="메인로고"></span></a>
			<a href="${root}/groupPurchase/list.do" class=on><span>공동구매</span></a>
			<a href="#" ><span>해외직구</span></a>
			<a href="#" ><span>주문제작</span></a>
			<a href="#" ><span>자유게시판</span></a>
			<a href="../main.jsp" ><span>로그아웃</span></a>
			<a href="${root}/member/myPage.do"><span>마이페이지</span></a>
			<span></span>
		</div> 
	</nav>
	<div class="wrap">
		<div class="main">
			<div>
				<h1><span>공동구매</span></h1>
				
			</div>
				<div class="top">
					<div class="check">
						<a href="#">시간임박순</a>
						<a href="#">인원마감순</a>
						<a href="#">최신순</a>
						<a href="#">인기순</a>
					</div>
					<div><a href="${root}/groupPurchase/write.do">글쓰기</a></div>
					<div class="page_top">
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
				</div>
				<div class="card_box">
						<div class="card_cnt">
					<c:forEach var="groupboardDto" items="${groupboardList}">
						<div class="shadow">
							<div class="card_cnt_top">
								<div id="today">
									<fmt:formatDate value="${groupboardDto.write_date}"
										pattern="yyyy-MM-dd" />
								</div>
								<div id=jjim>
									<input type="button" value="찜하기" name="jjim"
										onclick="like('${root}','${groupboardDto.board_number}','${id}')">♥♡
								</div>
								
							</div>
							<div class="image"><img src="../uploadImg/${groupboardDto.fileName}"/></div>
							<div class="cont"
								onclick="location.href='${root}/groupPurchase/read.do?board_number=${groupboardDto.board_number}&pageNumber=${currentPage}'">
								<strong>${groupboardDto.subject}</strong>
								<p>${groupboardDto.enterpeople}/${groupboardDto.peoplecount}</p>
								<p>${groupboardDto.contents}</p>
							</div>
						</div>
					</c:forEach>
					</div>
				</div>
			<div class="page_bot">
				<a href="#">&lt;</a><a href="#">1</a><a href="#">2</a><a href="#">3</a><a href="#">4</a><a href="#">5</a><a href="#">6</a><a href="#">7</a><a href="#">8</a><a href="#">9</a><a href="#">10</a><a href="#">&gt;</a>
				<br/><input type="text"placeholder="검색">
			</div>
		</div>
	</div>
	<footer>
		ⓒshop.09<br> 블랙리스트<a href="#">바로가기</a>
	</footer>


	<script type="text/javascript">
		$(document).ready(function(){
			$('nav a').on('click',function(){
				$(this).addClass('on');
				$(this).siblings().removeClass('on');
			});
		});
	</script>
</body>
</html>