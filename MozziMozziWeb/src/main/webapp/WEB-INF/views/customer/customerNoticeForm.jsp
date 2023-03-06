<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<link rel="stylesheet" href="bootstrap/css/customerNoticeForm.css">

	<style>
		html {
			width: 100%;
		}

		.noticeFormDiv {
			width: 80%;
			margin: 0 auto;
		}

		.noticeFormTop {
			padding-top: 30px;
			padding-bottom: 20px;
			border-bottom: 2px solid orange;
			margin-bottom: 30px;
		}

		.topHeader {
			font: 25px bold;
			padding-left: 10px;
		}

		.tableBody input[type="text"] {
			width: 250px;
			height: 30px;
		}

		.noticeFormBody {
			text-align: center;
		}

		.noticeFormTable {
			border-collapse: collapse;
			width: 100%;
			margin: 0 auto;
		}

		.noticeFormTable th {
			padding: 10px;
			width: 24%;
		}

		.noticeFormTable td {
			padding: 15px;
		}

		.tableTop th {
			padding-bottom: 10px;
		}

		.tableBody td {
			padding-bottom: 10px;
		}

		.reviewBtn {
			margin-top: 20px;
		}

		.reviewBtn input[type="submit"] {
			width: 110px;
			height: 40px;
			border-radius: 5px;
			background-color: orange;
			border: none;
			color: white;
			font: 15px bold;
		}

		.reviewBtn input[type="button"] {
			width: 110px;
			height: 40px;
			border-radius: 5px;
			border: 2px solid orange;
			background-color: white;
			color: orange;
			font: 15px bold;
		}
	</style>
	<link rel="stylesheet" href="noticeForm.css">

	<body>
		<div class="noticeFormDiv">
			<div class="noticeFormTop">
				<span class="topHeader">공지 등록 하기</span>
			</div>
			<div class="noticeFormBody">
				<form action="noticeAdd.do" method="post" id="notice_form">
					<table class="noticeFormTable">
						<thead class="tableTop">
							<tr>
								<th></th>
								<th colspan="2">공지 제목</th>
								<th>작성자</th>
							</tr>
						</thead>
						<tbody class="tableBody">
							<tr>
								<td>
								</td>
								<td colspan="2"><input name="notice_title" id="notice_title" type="text"></td>
								<td>관리자</td>
							</tr>
							<tr>
								<th>공지내용</th>
								<td colspan="3"><textarea name="notice_content" id="notice_content"
										style="width: 100%; height: 450px;"></textarea></td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="4" style="border-bottom: 2px solid orange;"></td>
							</tr>
						</tfoot>
					</table>
					<div class="reviewBtn">
						<input class="not_btn" type="submit" value="등록하기">
						<a href="customerNotice.do"><input class="not_btn" type="button" value="등록취소"></a>
					</div>
				</form>
			</div>
		</div>
	</body>