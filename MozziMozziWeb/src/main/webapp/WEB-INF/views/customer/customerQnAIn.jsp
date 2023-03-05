<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <link rel="stylesheet" href="bootstrap/css/prod_qna.css">

  <body>
    <div id="container">
      <div class="top_name">
        상담 문의
      </div>
      <form action="customerQnaUpdate.do" method="post" id="qna_form">
        <div class="qna_contents">
          <div class="font right">
            <span class="txt">카테고리</span>
            
            
            <select class="readChk" name="muni" id="muni" class="pl ri2"  disabled>
              
              <option value="payment" class="txt" <c:if test="${vo.category == 'payment' }">selected</c:if> >결제</option>
              <option value="delivery" class="txt" <c:if test="${vo.category == 'delivery' }">selected</c:if>>배송</option>
              <option value="order" class="txt" <c:if test="${vo.category == 'order' }">selected</c:if>>기타</option>
            
            </select>

          </div>
          <div class="font">
            <span class="txt">제목</span>
            <input class="readChk" type="text" id="qna_title" name="qna_title" value="${vo.qnaTitle}" readonly >
            <span id="dd" class="txt">작성자</span>
           <span id="dd" name="userId"class="txt">${vo.userId}</span>

          </div>
          <div class="font">
            <span id="left" class="txt">내용</span>
            <textarea class="readChk" name="qna_content" id="qna_content" cols="70" rows="20" readonly>${vo.qnaContent}</textarea>
          </div>
        </div>
        <input type="hidden" name="qnaNO" value="${vo.qnaNO}"/>
        <div class="btn_s">
          <a href="customerQna.do"><input class="add" type="button" value="목록으로"></a>
          <c:if test="${vo.userId eq logId }">
						<input class="add" id="upBtn" type="button" value="수정하기">
					<!--	<input class="add" class="sub_mit" type="submit" value="저장하기"> -->
            <button type="submit">저장하기1111</button>
						<input class="add" id="del_bt" type="button" value="삭제하기">
					</c:if>
        </div>
      </form>
    </div>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
		<script>
			$('#upBtn').click(() => {
				console.log("${ logId }")
        console.log("${vo.userId}")
        console.log("${ logId}"=="${vo.userId}")
				if ("${ logId}"=="${vo.userId}") {

					$('.readChk').attr('readonly', false);
					$('.readChk').attr('disabled', false);
				}
			});


		</script>