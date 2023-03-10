<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<link rel="stylesheet" href="bootstrap/css/notice.css">


		<style>
			.customerNav {
				padding-top: 30px;
			}

			.navTop {
				text-align: center;
			}

			.big {
				font-size: 30px;
			}

			.navTop {
				width: 50%;
				margin: 0 auto;
			}

			a {
				text-decoration: none;
				color: black;
			}
		</style>

		<body>
			<div class="container">
				<div class="navBox">
					<div class="customerNav">
						<div class="navTop">
							<div><span class="txt_top">고객센터</span></div>
							<div><span class="txt">이용시간 : 08:00 ~ 18:00</span></div>
						</div>
					</div>
					<div class="notiTop">
						<div id="nav_Div">
							<ul class="nav_main">
								<li><a class="nav_a" href="customerNotice.do"> <span class="txt big">공지사항</span>
									</a></li>
								<li><a class="nav_a" href="customerFna.do"> <span class="txt">자주하는 질문</span>
									</a></li>
								<li><a class="nav_a" href="customerQna.do"> <span class="txt">상품문의</span>
									</a></li>
							</ul>
						</div>
					</div>
				</div>
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
						<a
							href="/MozziMozziWeb/customerNotice.do?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
					</c:if>
					<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
						<c:choose>
							<c:when test="${p == paging.nowPage }">
								<b>${p }</b>
							</c:when>
							<c:when test="${p != paging.nowPage }">
								<a
									href="/MozziMozziWeb/customerNotice.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p
									}</a>
							</c:when>
						</c:choose>
					</c:forEach>
					<c:if test="${paging.endPage != paging.lastPage}">
						<a
							href="/MozziMozziWeb/customerNotice.do?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
					</c:if>

				</div>

			</div>