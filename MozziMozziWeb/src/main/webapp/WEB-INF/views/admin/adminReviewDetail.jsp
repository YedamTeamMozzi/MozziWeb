<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <link rel="stylesheet" href="bootstrap/css/adminReviewDetail.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
  <link rel="stylesheet" type="text/css" href="bootstrap/css/mypage_style.css">



<body>
  <div class="reviewFormDiv">
    <div class="reviewFormTop">
      <span class="topHeader">박선아 님의 상품 리뷰</span>
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
              <td colspan="2"><img style="width: 100%;" src="img/" alt="사진없음"></td>
              <td>꿀오랑</td>
              <td>★★★★★</td>
              <td>박선아</td>
            </tr>
          </tbody>
          <tfoot>
            <tr>
              <td>리뷰내용</td>
              <td colspan="4"><textarea name="" id="" style="width: 100%; height: 200px;"></textarea></td>
            </tr>
            <tr>
              <td colspan="5" style="border-bottom: 2px solid orange;"></td>
            </tr>
          </tfoot>
        </table>
        <div class="adminReplyForm">
          <ul>
            <li><span class="textDiv">리뷰 댓글 </span><i class="fa-solid fa-comment fa-2x" style="color: orange;"></i></li>
            <li><input type="submit" value="등록"></li>
          </ul>
          <ul>
            <li><textarea name="" id="" style="width: 98%; height: 70px; resize: none;"></textarea></li>
          </ul>
        </div>
      </form>
    </div>
  </div>
</body>