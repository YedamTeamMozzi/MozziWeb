<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Hi+Melody&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="bootstrap/css/fna.css" />
  <link rel="stylesheet" href="bootstrap/css/top.css">

<style>
.fqaBox {
  width: 50%;
  margin: 0 auto;
}
.fqaTop {
  text-align: center;
  padding: 30px;
}
.navTop {
  text-align: center;
}
.navTop div:nth-child(1) {
  font: 30px bold;
}
.navTop div:nth-child(2) {
  font-size: 22px;
}

</style>

<link rel="stylesheet" href="noticeFqaList.css">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
  integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
  crossorigin="anonymous"></script>



<div class="customerFqaBox">
  <div class="customerNav">
    <div class="navTop">
      <div>고객센터</div>
      <div>09:00 ~ 18:00</div>
    </div>
    <div class="navBody"></div>
  </div>

  <div class="fqaBox">
    <div class="fqaTop">
      <h2>자주하는 질문 ( FQA )</h2>
    </div>
    <div class="accordion" id="accordionExample">
      <div class="accordion-item">
        <h2 class="accordion-header" id="headingOne">
          <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne"
            aria-expanded="true" aria-controls="collapseOne">
            Q. 떡 제작과 배송은 어떻게 진행되나요???
          </button>
        </h2>
        <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne"
          data-bs-parent="#accordionExample">
          <div class="accordion-body">
            A. 당일제작, 당일 배송을 원칙으로 하고 있습니다.
          </div>
        </div>
      </div>

      <div class="accordion-item">
        <h2 class="accordion-header" id="headingTwo">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
            data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
            Q. 재료들의 원산지가 궁금해요!!!
          </button>
        </h2>
        <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo"
          data-bs-parent="#accordionExample">
          <div class="accordion-body">
            A. 저희 모찌모찌에서는 모든 재료 국내산을 사용하고 있습니다.
          </div>
        </div>
      </div>

      <div class="accordion-item">
        <h2 class="accordion-header" id="headingThree">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
            data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
            Q. 떡은 어떻게 보관하나요?
          </button>
        </h2>
        <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree"
          data-bs-parent="#accordionExample">
          <div class="accordion-body">
            A 1. 떡은 한번 먹을 분량씩 소분해서 랩 또는 지퍼팩으로 감싼다.<br>
            &nbsp;&nbsp;&nbsp;2. 공기를 모두 빼준다.<br>
            &nbsp;&nbsp;&nbsp;3. 냉동 보관한다.
          </div>
        </div>
      </div>

      <div class="accordion-item">
        <h2 class="accordion-header" id="headingFour">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
            data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
            Q. 상품을 구매했는데 구매 내역이 사라지고 없습니다.
          </button>
        </h2>
        <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingTwo"
          data-bs-parent="#accordionExample">
          <div class="accordion-body">
            A. 주문내역이 확인되지 않는다면, 우선 가족 또는 지인의 아이디로 주문하신 것은 아닌지 확인하시고,
            고객센터 ( 02 - 2276 - 5284 ) 또는 고객센터 > 1:1문의 로 문의 주시기 바랍니다.
            ※ 주문내역은 [마이페이지 > 주문조회] 에서 확인 가능합니다.
          </div>
        </div>
      </div>

      <div class="accordion-item">
        <h2 class="accordion-header" id="headingFive">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
            data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
            Q. 장바구니에 담아놓았던 상품들이 사라졌어요.
          </button>
        </h2>
        <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingTwo"
          data-bs-parent="#accordionExample">
          <div class="accordion-body">
            A. 장바구니에 담은 상품이 품절되거나, 판매 기간이 종료되어 더 이상 구매하실 수 없는 경우, 상품의 가격 및 정보가 변동 된 경우 전체공지로 먼저 안내드립니다.
            이와 함께 장바구니에 담긴 상품은 자동으로 삭제됩니다.
          </div>
        </div>
      </div>

      <div class="accordion-item">
        <h2 class="accordion-header" id="headingSix">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
            data-bs-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
            Q. 주문 상품은 도로명주소로 표기되어 배송되나요?
          </button>
        </h2>
        <div id="collapseSix" class="accordion-collapse collapse" aria-labelledby="headingTwo"
          data-bs-parent="#accordionExample">
          <div class="accordion-body">
            A. 고객님께서 주문 시 지번주소 또는 도로명 주소 입력여부에 관계없이 실제 배송사 진행은 지번 주소로 전달됩니다.
          </div>
        </div>
      </div>

      <div class="accordion-item">
        <h2 class="accordion-header" id="headingSeven">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
            data-bs-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
            Q. 상품정보 변경은 가능한가요?
          </button>
        </h2>
        <div id="collapseSeven" class="accordion-collapse collapse" aria-labelledby="headingTwo"
          data-bs-parent="#accordionExample">
          <div class="accordion-body">
            A. 주문 완료 시 상품의 대한 정보 변경은 불가능 합니다.
          </div>
        </div>
      </div>

      <div class="accordion-item">
        <h2 class="accordion-header" id="headingEight">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
            data-bs-target="#collapseEight" aria-expanded="false" aria-controls="collapseEight">
            Q. 회원 가입시 자꾸 오류가 뜹니다.
          </button>
        </h2>
        <div id="collapseEight" class="accordion-collapse collapse" aria-labelledby="headingTwo"
          data-bs-parent="#accordionExample">
          <div class="accordion-body">
            A. 회원가입 도중 발생한 에러는 일시적인 현상일 수 있습니다.
            번거로우시더라도 잠시 후에 다시 한번 시도해 주시기 바라며, 같은 에러가 지속적으로 발생할 경우 에러 메시지 내용을 포함하여 상세한 내용을 1:1고객상담으로 문의주시면 확인 후 처리해
            드리겠습니다.
          </div>
        </div>
      </div>

      <div class="accordion-item">
        <h2 class="accordion-header" id="headingNine">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
            data-bs-target="#collapseNine" aria-expanded="false" aria-controls="collapseNine">
            Q. 개인정보 수정은 어디에서 가능한가요?
          </button>
        </h2>
        <div id="collapseNine" class="accordion-collapse collapse" aria-labelledby="headingTwo"
          data-bs-parent="#accordionExample">
          <div class="accordion-body">
            A. 로그인 후 [마이페이지 > 회원정보변경] 에서 수정 가능합니다.
          </div>
        </div>
      </div>

      <div class="accordion-item">
        <h2 class="accordion-header" id="headingTen">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
            data-bs-target="#collapseTen" aria-expanded="false" aria-controls="collapseTen">
            Q. 배송가능 지역은 어떻게 되나요?
          </button>
        </h2>
        <div id="collapseTen" class="accordion-collapse collapse" aria-labelledby="headingTwo"
          data-bs-parent="#accordionExample">
          <div class="accordion-body">
            A. 전국배송을 원칙으로 하지만 상품에 따라 배송이 불가할 경우가 있습니다.
            상품을 주문하기 전에 배송가능지역을 검색 후 주문해 주시기 바랍니다.
            (해외배송은 불가합니다.)
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
