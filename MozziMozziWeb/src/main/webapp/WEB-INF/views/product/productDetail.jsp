<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<link rel="stylesheet" type="text/css" href="bootstrap/css/goods_view.css">
    

  <body>

<main>
	
		<header>
			<div id="img_wrapper">
				<img id="main_pht" src="../img/product/fus_main1.jpg" style="height: 500px; width: 500px;">
			</div>
			
			<form id="header_info_wrapper" method="get" action="../order/order.jsp">
				<div class="header name">
					<span>모찌 기본 세트</span>
				</div>
				<div class="header price">
					<span class="title">가격</span>
					<span class="content" id="price">13000</span><span> 원</span>
					<!-- <input class="content" id="price" type="text" value="30000" readonly><span> 원</span>  -->
				</div>
				<div class="header volume">
					<span class="title">판매 용량</span>
					<span class="content">1상자 / 600g</span>
				</div>
				<div class="header quantity">
					<span class="title">구매 수량</span>
					<i id="button_down" class="far fa-minus-square"></i>
					<input id="quantity" class="quantity" type="number" min="1" max="9" step="1" value="1">
					<i id="button_up" class="far fa-plus-square"></i>
				</div>
				<div class="header total">
					<span class="title">총 상품 금액</span>
					<span id="total"></span><span> 원</span>
				</div>
				<div class="header btn_wrapper">
					<input id="cartBtn" type="button" class="btn" value="장바구니에 추가" onclick="location.href='${pageContext.request.contextPath}/order/cart.jsp?'"> 
					<input id="submit_btn" type="submit" class="btn" value="구매하기">
				</div>
			</form>			
	
		</header>
				
		

	            
	            <div id="nav_Div">
	                <ul class="nav_main">
	              
	                    <li>
	                        <a class="nav_a">
	                            <span class="txt">상품상세정보</span>
	                        </a>
	                    </li>
	                    <li>
	                        <a class="nav_a">
	                            <span class="txt">배송안내</span>
	                        </a>
	                    </li>
	                    <li>
	                        <a class="nav_a">
	                            <span class="txt">상품후기</span>
	                        </a>
	                    </li>					
					</ul>
				</div>
	        </div>
	
				<!--  제품 추천 알고리즘 영역 -->
				<div id="recom_wrapper" >
					<div class="title">
						<span>이 제품은 어떠세요?</span>
					</div>

				</div>
				
				<!-- 설명 이미지 영역 -->
				<div id="detail">
					<img id="detail_pht" src="./img/index/product_sample/범벅초코크림떡.webp">
				</div>
				
				<!-- 상세 이미지 영역    display : none -->
				<div id="detail" >
					<img id="detail_pht" src="./img/index/product_sample/범벅초코크림떡.webp">
				</div>
				
				
				<!--  리뷰 영역   display : none -->
				<div id="review">
					<table>	
						<thead>
							<th>
								메롱이다
							</th>
						</thead>
						<tr>
							<td>
							</td>
						</tr>
					</table>
				</div>
			</div>
	</main>
<script src="bootstrap/js/goods_view.js"></script>

    
