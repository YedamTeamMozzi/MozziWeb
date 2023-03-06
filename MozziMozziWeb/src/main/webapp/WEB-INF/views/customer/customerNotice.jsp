<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<link rel="stylesheet" href="bootstrap/css/notice.css">
		<link rel="stylesheet" href="bootstrap/css/top.css">

		<style>
			.navBox {
				text-align: center;
			}

			.big {
				font-size: 30px;
			}

			.customerNav {
				padding-top: 30px;
			}

			.notiTop {
				text-align: center;
				padding: 30px;
			}
		</style>

		<body>
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
						<c:forEach var="notice" items="${list}">
							<tr>
								<td>${notice.num}<input name="notice_no" type="hidden" value="${notice.no}"></td>
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
			<div class="pagings">
				<a href="#"><img src="./img/paging/왼쪽화살표.jpg" alt=""></a> <a href="#"><img src="./img/paging/1.jpg" alt=""></a>
				<a href="#"><img src="./img/paging/2.jpg" alt=""></a> <a href="#"><img src="./img/paging/3.jpg" alt=""></a> <a
					href="#"><img src="./img/paging/4.jpg" alt=""></a> <a href="#"><img src="./img/paging/5.jpg" alt=""></a> <a
					href="#"><img src="./img/paging/6.jpg" alt=""></a> <a href="#"><img src="./img/paging/7.jpg" alt=""></a> <a
					href="#"><img src="./img/paging/8.jpg" alt=""></a> <a href="#"><img src="./img/paging/9.jpg" alt=""></a> <a
					href="#"><img src="./img/paging/10.jpg" alt=""></a> <a href="#"><img src="./img/paging/오른쪽화살표.jpg" alt=""></a>
			</div>