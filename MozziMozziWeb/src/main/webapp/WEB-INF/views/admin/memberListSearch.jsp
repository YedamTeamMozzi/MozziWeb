<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


		<link rel="stylesheet" type="text/css" href="bootstrap/css/admin_style.css">

		<!-- top, bottom 제외 페이지 전체-->
		<div id="main">

			<div id="btn_manager_wrapper">
				<!-- (버튼메뉴 + manager) -->

				<div id="admin_side">

					<div id="section">관리자모드</div>

					<!-- 메뉴 부분 -->
					<div id="manager_btn_wrapper">
						<ul>

							<a href="memberList.do">
								<li>
									<span class="text">회원관리</span> <!-- default 아이콘 -->
									<span class="icon"><i class="fas fa-chevron-left"></i></span>
									<!-- member_list.jsp / member_view.jsp :: -->
								</li>
							</a>
							<a href="adminProductAdd.do">
								<li>
									<span class="text">상품등록</span> <!-- default 아이콘 -->
									<span class="icon"><i class="fas fa-chevron-left"></i></span>

									<!-- order_list.jsp / order_view.jsp :: -->
								</li>
							</a>
							<a href="adminProductList.do">
								<li>
									<span class="text">상품목록</span> <!-- default 아이콘 -->
									<span class="icon"><i class="fas fa-chevron-left"></i></span>
									<!-- goods_master.jsp, goods_insert.jsp, goods_view.jsp, goods_stock.jsp :: -->
								</li>
							</a>
							<a href="goodsmaster.do">
								<li>
									<span class="text">주문관리</span> <!-- default 아이콘 -->
									<span class="icon"><i class="fas fa-chevron-left"></i></span> <!-- 접속관리 페이지 누락됨 :: -->
								</li>
							</a>
							<a href="reviewListManage.do">
								<li>
									<span class="text">리뷰관리</span> <!-- default 아이콘 -->
									<span class="icon"><i class="fas fa-chevron-left"></i></span> <!-- qna_list.jsp / qna_view.jsp :: -->
								</li>
							</a>
						</ul>
					</div>
				</div>
				<!-- #btn_wrapper -->
				<style>
					#manager {
						width: 90%;
						padding: 0;
					}

					.searchBtn {
						padding: 0;
						height: 40px;
						width: 80px;
						border: 2px solid orange;
						border-radius: 5px;
						color: orange;
					}

					.title {
						padding: 20px;
					}
				</style>

				<body>


					<div id="manager">

						<h1 class="title">회원 정보</h1>

						<form method="get" action="memberListSearch.do" id="searchid">
							<!-- enctype="multipart/form-data" 일때에는 post방식으로 보낸다. 
        대신에 action을 통해서 action="productProc.jsp?flag=insert" 를 해줘야한다.-->
							<input type="hidden" value="0">
							<div style="margin: 0 auto;  text-align: center; position: relative; right: 10px;">
								<h3 class="inner_title">회원정보 검색</h3>
								<table class="mgr_table verHead" id="search_table" style="margin: 0 auto;  text-align: center;">
									<tr style="text-align: center;">
										<th>회원 ID</th>
										<td><input id="select_value" placeholder="id을 입력해주세요" name="search"></td>
										<td><input type="submit" value="검색" id="member_search_btn" class="searchBtn" name="search"></td>
									</tr>
								</table>
							</div>
						</form>
						<h3 class="inner_title">회원 정보 List</h3>
						<table class="mgr_table verHead" id="result_table" style="text-align: center;">
							<tr>
								<th>ID</th>
								<th>이름</th>
								<th>생년월일</th>
								<th>이메일</th>
								<th>연락처</th>
								<th>주소</th>
							</tr>
							<c:forEach var="member" items="${search}">
								<tr>
									<td>${member.userId}</td>
									<td>${member.userName}</td>
									<td>${member.userBirth}</td>
									<td>${member.userEmail}</td>
									<td>${member.userPhone}</td>
									<td>${member.userAddr}</td>
								</tr>
							</c:forEach>

						</table>
						</form>

					</div>


					<!----------------->
					<!--  작업 영역 끝 -->
					<!----------------->
			</div>
			<!--  #btn_manager_wrapper (버튼메뉴 + manager) : admin_side.jsp 에서 열림-->
		</div>
		<!-- #main (상단요약 + 버튼 + manager) : admin_side.jsp 에서 열림-->


		<script src="bootstrap/js/member_list.js"></script>