<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

			<link rel="stylesheet" type="text/css" href="bootstrap/css/review.css">
			<link rel="stylesheet" type="text/css" href="bootstrap/css/mypage_style.css">


			<style>
				.cusor:hover {
					background-color: lightyellow;
					cursor: pointer;
				}

				#column_tr th {
					border-bottom: 1px solid lightgray;
					padding-bottom: 20px;
					padding-top: 0px;
				}
			</style>

			<!--전체 페이지 Wrapper-->
			<div id="top_wrapper">

				<!-- top, bottom 제외 페이지 전체-->
				<div id="main">
					<div id="btn_mypage_wrapper">
						<div id="mypage_side">
							<div id="mypage_btn_wrapper">
								<div id="section">마이페이지</div>
								<ul>
									<a id="btn_first" href="orderList.do?id=${logId}">
										<li>
											<span class="text">주문목록</span>
											<span class="icon"><i class="fas fa-chevron-left"></i></span>
										</li>
									</a>
									<a href="reviewManage.do?id=${logId}">
										<li>
											<span class="text">리뷰관리</span>
											<span class="icon"><i class="fas fa-chevron-left"></i></span>
										</li>
									</a>
									<a href="myInquiry.do?id=${logId}">
										<li>
											<span class="text">My문의</span>
											<span class="icon"><i class="fas fa-chevron-left"></i></span>
										</li>
									</a>
									<a id="btn_last" href="myInfoCheck.do">
										<li>
											<span class="text">회원정보</span>
											<span class="icon"><i class="fas fa-chevron-left"></i></span>
										</li>
									</a>
									<a id="btn_last" href="myInfoDelCheck.do">
										<li>
											<span class="text">회원탈퇴</span>
											<span class="icon"><i class="fas fa-chevron-left"></i></span>
										</li>
									</a>
								</ul>
							</div>
						</div>

						<div id="mypage">

							<div id="review_btn_wrapper">

								<h1 class="review_title">리뷰관리</h1>

				<form name="reviewReadFrm" method="post" action="">
					<h3 class="inner_title" id="review_inner_title">내가 작성한 리뷰</h3>
					<table class="horHead review_table" id="review_read_tb" style="width:1000px;">
						<tr id="column_tr">
							<th style="width:50px">주문번호</th>
							<!-- if mypage_review.jsp 일 때만 -->
							<th colspan="2">제품정보</th>
							<th style="width:200px">별점</th>
							<th style="width:200px">내용</th>
							<th style="width:200px">구매일</th>
						</tr>

						<c:forEach var="review" items="${reviewList}" varStatus="status">
							<tr class = "cusor" onclick='clickBtn(${review.reNo})' style="height : 100px">
								<td>${status.count}</td>
								<td><img alt="제품사진" src="img/review/${review.reImage}"></td>
								<td><%-- <a href="productDetail.do?dduck=${review.prodCode}"> --%>${review.prodName}</a></td>
								
								<td><c:forEach var="i" begin="1" end="${review.starRating}" step="1">
										<i class="yStar fas fa-star"><input type="hidden" value="${i}" /></i>
									</c:forEach>
								</td>
								<td><c:set var="TextValue" value="${review.reContent}"/>${fn:substring(TextValue,0,10)}</td>
								<td><c:set var="TextValue" value="${review.orderDate}"/>${fn:substring(TextValue,0,11)}</td>
							</tr>
						</c:forEach>
					</table>
				</form>
			</div>
		</div>
	</div>
	
	<script>
    
    function clickBtn(reNo){
    	location.href = 'reviewDetail.do?reNo=' + reNo;
    }
    
    </script>
