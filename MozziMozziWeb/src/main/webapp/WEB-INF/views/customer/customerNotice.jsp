<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<link rel="stylesheet" href="bootstrap/css/notice.css">
		<link rel="stylesheet" href="bootstrap/css/top.css">

		<body>
			<nav>
				<div id="menuNav">
					<div id="nav_Div_top">
						<ul class="nav_top">
							<li><span class="txt_top">고객센터</span></li>
							<br>
							<span class="txt">이용시간 : 08:00 ~ 18:00</span>
						</ul>
					</div>
					<!--nav 구성 :1개의 슬라이드 메뉴, 베스트, 신상품, 고객지원, 검색창(search icon), shopping icon(장바구니)-->
					<div id="nav_Div">
						<ul class="nav_main">
							<li><a class="nav_a" href="customerNotice.do"> <span class="txt">공지사항</span>
								</a></li>
							<li><a class="nav_a" href="customerFna.do"> <span class="txt">자주하는 질문</span>
								</a></li>
							<li><a class="nav_a" href="customerQna.do"> <span class="txt">상품문의</span>
								</a></li>
						</ul>
					</div>
				</div>
				<div class="bar"></div>
			</nav>
			<div class="notice">공지사항</div>
			<c:if test="${'admin' eq logId }">
				<div class="btns">
					<input type="button" value="공지등록" class="btn" onclick="location.href='noticeAddForm.do'">
				</div>
			</c:if>
			<div id="notice_table_div">
				<table id="notice_table">
					<thead>
						<th class="notice_no">번호</th>
						<th class="notice_title">공지사항</th>
						<th class="notice_writer">작성자</th>
						<th class="notice_date">작성일자</th>
						<th class="hit_count">조회수</th>
					</thead>
					<tbody>
						<c:forEach var="notice" items="${noticelist}">
							<tr>
								<td>${notice.no}<input name="notice_no" type="hidden" value="${notice.no}"></td>
								<td><a href="customerNoticeIn.do?ntno=${notice.no}">${notice.title }</a></td>
								<td>관리자</td>
								<td>${notice.noticeDate}</td>
								<td>${notice.hitCount}</td>
							</tr>
						</c:forEach>
					</tbody>
					<tfoot>
						<th>번호</th>
						<th>공지사항</th>
						<th>작성자</th>
						<th>작성일자</th>
						<th>조회수</th>
					</tfoot>
				</table>
			</div>
			<div style="display: block; text-align: center;">		
		<c:if test="${paging.startPage != 1 }">
			<a href="/MozziMozziWeb/customerNotice.do?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
		</c:if>
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
			<c:choose>
				<c:when test="${p == paging.nowPage }">
					<b>${p }</b>
				</c:when>
				<c:when test="${p != paging.nowPage }">
					<a href="/MozziMozziWeb/customerNotice.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
				</c:when>
			</c:choose>
		</c:forEach>
		<c:if test="${paging.endPage != paging.lastPage}">
			<a href="/MozziMozziWeb/customerNotice.do?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
		</c:if>
	   </div> 