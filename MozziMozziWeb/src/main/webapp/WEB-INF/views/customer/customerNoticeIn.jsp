<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	<style>
.noticeDetailBox {
  width: 90%;
  margin: 0 auto;
}
.boxTop {
  border-bottom: 2px solid orange;
  padding: 20px;
  padding-bottom: 30px;
}
.boxTop span {
  font-size: 25px;
}
.boxBody {
  text-align: center;
  position: relative;
  right: 30px;
}
.boxBody textarea {
  width: 90%;
  height: 250px;
  resize: none;
}
.boxBody ul {
  list-style: none;
  display: flex;
}
.boxBody ul:nth-child(3) li:nth-child(2) {
  flex: 3;
}
.boxBody ul:nth-child(1) li {
  padding-bottom: 5px;
  border-bottom: 1px solid darkgray;
}
.boxBody li {
  flex: 1;
}
.boxBot {
  border-top: 2px solid orange;
  padding-top: 20px;
  text-align: center;
}
.boxBot input[type="button"] {
  width: 100px;
  height: 40px;
  color: orange;
  border: 2px solid orange;
  border-radius: 5px;
}
.boxBot input[type="submit"] {
  width: 100px;
  height: 40px;
  color: orange;
  border: 2px solid orange;
  border-radius: 5px;
}
.boxBot input[type="button"]:nth-child(3) {
  color: white;
  background-color: orange;
}

.boxBody input[type="text"] {
  width: 500px;
}

	</style>

		<link rel="stylesheet" href="noticeDetail.css">

	

	  <div class="noticeDetailBox">
		<div class="boxTop">
		  <span>공지 사항</span>
		</div>
		<form action="noticeUpdate.do" method="post" id="notice_form" name="notice_form">
		<div class="boxBody">
		  <ul>
			<li><b></b></li>
			<li><b>제목</b></li>
			<li><b>작성자</b></li>
			<li><b>작성일자</b></li>
		  </ul>
		  <ul>
			<li></li>
			<li><c:if test="${'admin' eq logId }">
				<input type="text" class="b_der readChk" name="notice_title" id="notice_title"
				value="${vo.title}" readonly></c:if>
				<span type="text" class="b_der readChk" name="notice_title" id="notice_title" value="${vo.title}">"${vo.title}"</span></li>
			<li>관리자</li>
			<li><span type=" text" name="notice_date" id="notice_date" value="${vo.noticeDate}" readonly>"${vo.noticeDate}"</span></li>
			
		  </ul>
		  <ul>
			<li><b>공지내용</b></li>
			<li><textarea  class="b_der readChk" name="notice_content" id="notice_content" cols="80" rows="40"
				readonly>${vo.content}</textarea></li>
		  </ul>
		</div>
		<input type="hidden" name="no" value="${vo.no}" readonly>
		<div class="boxBot">
		  <a href="customerNotice.do"><input class="not_btn" type="button" value="목록"></a>
		  <c:if test="${'admin' eq logId }">
			<input class="not_btn" id="upBtn" type="button" value="수정">
			<input class="sub_mit" type="submit" value="저장">
		  <input class="del_btn"  id="del_btn" type="button" value="삭제">
		</c:if>
		</div>
	</form>
	  </div>





		<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
		<script>
			$('#upBtn').click(() => {
				console.log("${ logId }")
				if ("${ logId }" == "admin") {
					$('.readChk').attr('readonly', false);
				}
			});

			$("#del_btn").click(function () {
				var result = confirm("게시글을 삭제하시겠습니까?");
				if (result) {
					location.href = "noticeDelete.do?no=${vo.no}";
				}
			});


		</script>