<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" type="text/css" href="bootstrap/css/review.css">
  <link rel="stylesheet" href="bootstrap/css/adminReviewDetail.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
  <link rel="stylesheet" type="text/css" href="bootstrap/css/mypage_style.css">


<body>
  <div class="reviewFormDiv">
    <div class="reviewFormTop">
      <span class="topHeader">${review.userId}님의 상품 리뷰</span>
    </div>
    <div class="reviewFormBody">
      <form action="">
        <table class="reviewFormTable">
          <thead class="tableTop">
            <tr>
              <th colspan="2">후기이미지</th>
              <th>상품명</th>
              <th>별점</th>
              <th>작성자</th>
            </tr>
          </thead>
          <tbody class="tableBody">
            <tr>
              <td colspan="2"><img style="width: 80%;" src="img/review/${review.reImage}" alt="이미지없음"></td>
              <td>${review.prodName}</td>
              <td>
	              <c:forEach var="i" begin="1" end="${review.starRating}" step="1">
						<i class="yStar fas fa-star"><input type="hidden" value="${i}" /></i>
				  </c:forEach>
              </td>
              <td>${review.userId}</td>
            </tr>
          </tbody>
          <tfoot>
            <tr>
              <td>리뷰내용</td>
              <td colspan="4"><textarea name="" id="" style="width: 100%; height: 200px;" readonly>${review.reContent}</textarea></td>
            </tr>
            <tr>
              <td colspan="5" style="border-bottom: 2px solid orange;"></td>
            </tr>
          </tfoot>
        </table>
        <div class="adminReplyForm">
          <ul>
            <li><span class="textDiv">리뷰 댓글 </span><i class="fa-solid fa-comment fa-2x" style="color: orange;"></i></li>
            <li><input id="replyAddBtn" type="button" value="등록"></li>
          </ul>
          <ul>
            <li><textarea name="content" id="content" style="width: 98%; height: 70px; resize: none;"></textarea></li>
          </ul>
        </div>
      </form>
      	<div>
      		<ul style="display : flex">
      			<li style="flex : 1"><b>번호</b></li>
      			<li style="flex : 2"><b>ID</b></li>
      			<li style="flex : 2"><b>내용</b></li>
      			<li style="flex : 2"><b>등록일자</b></li>
      		</ul>
      		<c:forEach var="reply" items="${replyList}" varStatus="status">
      		<ul style="display : flex">
      			<li style="flex : 1">${status.count}</li>
      			<li style="flex : 2">${reply.userId}</li>
      			<li style="flex : 2">${reply.content}</li>
      			<li style="flex : 2">${reply.regDate}</li>
      		</ul>
      		</c:forEach>
      	</div>
    </div>
  </div>
</body>

<script>
	$('#replyAddBtn').click(function(){
		
		let prodCode = '${review.prodCode}';
		let userId = '${logId}';
		let content = $('#content').val();
		let reNo = '${review.reNo}';
		
		console.log(prodCode);
		console.log(userId);
		console.log(content);
		
		$.ajax({
			url: 'replyAdd.do',
			type: 'POST',
			data: {prodCode : prodCode, userId : userId, content : content, reNo : reNo},
			success: function(result){
				if(result.retCode == 'Success'){	
					// 댓글 만들고
					window.location.reload(); // 새로고침   
				}else{
					alert("댓글 등록 실패");
				}
			},
			fail : function(reject){
				console.log(reject);
			}
		})
		
	})

</script>