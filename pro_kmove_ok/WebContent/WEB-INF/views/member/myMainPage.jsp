<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<c:set var="id" value="${id}" scope="session"/>
<c:set var="memberDto" value="${memberDto}" scope="session"/>
<html>
<head>
<meta charset="UTF-8">
<title>form</title>
<link rel="stylesheet" href="${root}/css/mypage.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
	<nav class="menu">
		<div class="search">
			<input type="text" placeholder="Search">
			<input type="image" src="${root}/img/click1.png" alt="검색">
		</div>
		<div id="contents">
			<a href="${root}/main.jsp" ><span><img alt="로고	" src="${root}/img/logo3.png"></span></a>
			<a href="${root}/groupPurchase/list.do" ><span>공동구매</span></a>
			<a href="#" ><span>해외직구</span></a>
			<a href="#" ><span>주문제작</span></a>
			<a href="#" ><span>자유게시판</span></a>
			<a href="${root}/main.jsp" ><span>로그아웃</span></a>
			<a href="${root}/member/myPage.do"><span>마이페이지</span></a>
			<span></span>
		</div> 
	</nav>	
			
			<div id=idx_board_wrap>
				<div>
					<div class="idx_board">
						<div class="title">
							<a href="#" class="name">내정보</a>
							<a href="#" class="more"><img src="${root}/img/logo3.png" alt="더 보기"></a>
						</div>
						<div class="list">
							<ul>
								<li>
									<a>닉네임</a>
									<span>${memberDto.nickname}</span>
								</li>
								<li>
									<a>이름</a>
									<span>홍길동</span>
								</li>
								<li>
									<a>전화번호</a>
									<span>${memberDto.phone1}-${memberDto.phone2}-${memberDto.phone3}</span>
								</li>
								<li>
									<a>주소</a>
									<span>${memberDto.address1} ${memberDto.address2}</span>
								</li>
							</ul>
							<div id=id_all>
								<input type="submit"  onclick="location.href='${root}/member/update.do'" value="정보수정">
								<input type="submit" onclick="location.href='${root}/member/delete.do'" value="아이디삭제">
							</div>

						</div>
					</div>
					<div class="idx_board">
						<div class="title">
							<a href="#" class="name">내가쓴 게시물</a>
							<a href="#" class="more"><img src="${root}/img/logo3.png" alt="더 보기"></a>
						</div>
						<div class="list">
							<ul>
								<c:forEach var="myList" items="${myList}" begin="0" end="4">
									<li>
										<a href="#">${myList.subject}</a>
										<span><fmt:formatDate value="${myList.write_date}" pattern="yyyy-MM-dd"/></span>
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>
					<div class="idx_board">
						<div class="title">
							<a href="#" class="name">참여한 게시물</a>
							<a href="#" class="more"><img src="${root}/img/logo.png" alt="더 보기"></a>
						</div>
						<div class="list">
							<ul>
							<c:if test="${myEnter==null}">
								참여한 게시물이 없습니다.
							</c:if>
							<c:if test="${myEnter!=null}">
								<c:forEach var="myEnterList" items="${myEnter}"  begin="0" end="4">
									<li>
										<a href="#">${myEnterList.subject}</a>
										<span>2021-01-27</span>
									</li>
								</c:forEach>
							</c:if>
							</ul>
						</div>
					</div>
					<div class="idx_board">
						<div class="title">
							<a href="#" class="name">찜한 게시물</a>
							<a href="#" class="more"><img src="${root}/img/logo.png" alt="더 보기"></a>
						</div>
						<div class="list">
							<ul>
								<c:forEach var="jjimList" items="${list}" begin="0" end="4">
									<li>
										<a href="#">${jjimList.subject}</a>
									</li>							
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
			</div>
		<footer>
			ⓒshop.09<br>
			블랙리스트<a href="#">바로가기</a>
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