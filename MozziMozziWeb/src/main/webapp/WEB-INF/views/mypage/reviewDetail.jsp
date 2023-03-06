<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
  <link rel="stylesheet" type="text/css" href="bootstrap/css/mypage_style.css">
  <link rel="stylesheet" href="bootstrap/css/reviewDetail.css">

<style>
.starR{
  background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
  background-size: auto 100%;
  width: 30px;
  height: 30px;
  display: inline-block;
  text-indent: -9999px;
  cursor: pointer;
}
.starR.on{background-position:0 0;}

</style>

<body>
  <div class="reviewFormDiv">
    <div class="reviewFormTop">
      <span class="topHeader">${review.userId}님의 상품 리뷰</span>
    </div>
    <div class="reviewFormBody">
      <form action="#">
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
              <td colspan="2"><img style="width: 100%;" src="img/review/${review.reImage}" alt="이미지없음"></td>
              <td>${review.prodName}</td>
              
              <td>
	              <div class="starRev">
					  <span class="starR"><input type='hidden' value="1">별1</span>
					  <span class="starR"><input type='hidden' value="2">별2</span>
					  <span class="starR"><input type='hidden' value="3">별3</span>
					  <span class="starR"><input type='hidden' value="4">별4</span>
					  <span class="starR"><input type='hidden' value="5">별5</span>
					  <input id="likeStar" type="hidden" value="">
				 </div>
              </td>
              
              <td>${review.userId}</td>
            </tr>
          </tbody>
          <tfoot>
            <tr>
              <td>리뷰내용</td>
              <td colspan="4"><textarea id="content" name="content" style="width: 100%; height: 200px;">${review.reContent}</textarea></td>
            </tr>
            <tr>
              <td colspan="5" style="border-bottom: 2px solid orange;"></td>
            </tr>
          </tfoot>
        </table>
        <div class="reviewBtn">
          <input id="modiBtn" type="button" value="수정하기">
          <input id="delBtn" type="button" value="삭제하기">
        </div>
      </form>
    </div>
  </div>
</body>

<script>


	// 리뷰 등록시의 이전 별점값 가져옴
	let start = document.getElementsByClassName('starR');
	let starRating = '${review.starRating}';
	for(let i = 0; i < parseInt(starRating); i++){
	  start[i].classList.add('on');
	}


	// 별점 부분
	let like = '${review.starRating}';
	//console.log(like);
	$('.starRev span').click(function(){
		  $(this).parent().children('span').removeClass('on');
		  $(this).addClass('on').prevAll('span').addClass('on');
		  $('#likeStar').val($(this).children('input').val());
		  like = $('#likeStar').val();
		  //console.log(like);
		  return false;
	});
	
	
	// 수정하기 버튼 클릭시
	$('#modiBtn').click(function(){
		
		let reNo = '${review.reNo}';
		let content = $('#content').val();
		
		$.ajax({
	          url: 'reviewModify.do',
	          method: 'post', // get , put , post 가능함
	          data: {reNo : reNo, content : content, like : like}, // 쿼리스트링
	          success: function (result) {
	            if (result.retCode == 'Success') {
	              alert("리뷰 수정 완료!");
	              window.location.assign("reviewManage.do?id=${logId}");
	            } else {
	              alert("리뷰 수정 오류!!");
	            }
	          },
	          error: function (reject) {
	            console.log(reject);
	          }
	        })
	});
	
	// 삭제 버튼 눌렀을때
	$('#delBtn').click(function(){
		
		let reNo = '${review.reNo}';
		
		$.ajax({
	          url: 'reviewDelete.do',
	          method: 'post', // get , put , post 가능함
	          data: {reNo : reNo}, // 쿼리스트링
	          success: function (result) {
	            if (result.retCode == 'Success') {
	              alert("리뷰 삭제 완료!");
	              window.location.assign("reviewManage.do?id=${logId}");
	            } else {
	              alert("리뷰 삭제 오류!!");
	            }
	          },
	          error: function (reject) {
	            console.log(reject);
	          }
	        })
	})
	
</script>
