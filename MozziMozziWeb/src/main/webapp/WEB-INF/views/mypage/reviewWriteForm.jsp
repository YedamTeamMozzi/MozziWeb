<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

  <link rel="stylesheet" href="bootstrap/css/reviewForm.css">

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
      <span class="topHeader">상품 리뷰 쓰기</span>
    </div>
    <div class="reviewFormBody">
      <form id="reviewAddForm" action="reviewAdd.do" method="post" enctype="multipart/form-data">
        <table class="reviewFormTable">
          <thead class="tableTop">
            <tr>
              <th>주문번호</th>
              <th>상품명</th>
              <th>별점</th>
              <th>작성자</th>
            </tr>
          </thead>
          <tbody class="tableBody">
            <tr>
              <td><input type="hidden" id="orderNo" name="orderNo" value="${orderNo}">${orderNo}</td>
              <td><input type="hidden" id="prodName" name="prodName" value="${product.prodName}">${product.prodName}
              	  <input type="hidden" id="prodCode" name="prodCode" value="${product.prodCode}">
              </td>
              	  
              <td>
              
              <div class="starRev">
				  <span class="starR on"><input type='hidden' value="1">별1</span>
				  <span class="starR"><input type='hidden' value="2">별2</span>
				  <span class="starR"><input type='hidden' value="3">별3</span>
				  <span class="starR"><input type='hidden' value="4">별4</span>
				  <span class="starR"><input type='hidden' value="5">별5</span>
			 </div>
			 
              <input type="hidden" id="likeStar" name="likeStar" value="">
              </td>
              
              <td><input type="hidden" id="userId" name="userId" value="${logId}">${logId}</td>
            </tr>
            <tr>
              <th>리뷰내용</th>
              <td colspan="3"><textarea name="content" id="content" style="width: 90%; height: 200px;"></textarea></td>
            </tr>
            <tr>
              <th>이미지</th>
              <td colspan="2"><input name="reviewImg" id="reviewImg" type="file"></td>
              <td colspan="1"></td>
            </tr>
          </tbody>
          <tfoot>
            <tr>
              <td colspan="4" style="border-bottom: 2px solid orange;"></td>
            </tr>
          </tfoot>
        </table>
        <div class="reviewBtn">
          <input id="regBtn" type="button" value="등록하기">
          <input id="cancelBtn" type="button" onclick="history.back()" value="등록취소">
        </div>
      </form>
    </div>
  </div>
</body>


<script>

let like = 0; // 별점

// 별점 부분
$('.starRev span').click(function(){
	  $(this).parent().children('span').removeClass('on');
	  $(this).addClass('on').prevAll('span').addClass('on');
	  $('#likeStar').val($(this).children('input').val());
	  console.log($('#likeStar').val());
	  like = $('#likeStar').val();
	  return false;
});

$('#regBtn').click(function(){
	
	let formData = new FormData();
	
	formData.append('reviewImg', $('#reviewImg')[0].files[0]);
	formData.append('userId', '${logId}');
	formData.append('content', $('#content').val());
	formData.append('likeStar', like);
	formData.append('orderNo', $('#orderNo').val());
	formData.append('prodCode', $('#prodCode').val());
	formData.append('prodName', $('#prodName').val());
	
	/* console.log($('#reviewImg')[0].files[0]);
	console.log('${logId}');
	console.log($('#content').val());
	console.log($('#orderNo').val());
	console.log(like);
	console.log($('#prodCode').val());
	console.log($('#prodName').val()); */
	
        $.ajax({
            type : 'post',
            url : 'reviewAdd.do',
            data : formData,
            dataType : 'json',
	    processData : false,
	    contentType : false,
            success : function(result){
            	if(result.retCode == 'Success'){
                    alert("리뷰 등록 성공");
                    location.href = "reviewManage.do?id=${logId}";
            	}else{
            		console.log("등록 실패 오류!!!");
            	}
            },
            error: function(xhr, status, error){
                alert(error);
            }
        });
	
});


</script>