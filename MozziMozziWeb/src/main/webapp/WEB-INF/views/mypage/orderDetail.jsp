<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
		<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

		<link rel="stylesheet" href="bootstrap/css/order.css">

		<style>
		.addr_style{
		 	background-color: orange;
		 	color: white;
		 	padding: 10px;
		 	width: 120px;
		 	line-height: 20px;
		}
		</style>
		<main>
			<div id="main_wrapper">
				<div class="title_wrapper">
					<h1 class="title">주문서</h1>
					<span class="description">주문하실 상품명 및 수량을 정확하게 확인해주세요.</span>
				</div>


				<section id="order_product">
					<h3 class="order_subtitle">상품정보</h3>
					<table class="horHead">
						<tr>
							<th colspan="2">상품정보</th>
							<th>상품수량</th>
							<th>상품금액</th>
						</tr>
						<%-- <%ProductBean pbean=null; CartBean cbean=null; for(int i=0; i<goods.size(); i++){ /* 물건 하나 구매할때*/
							if(flag.equals("oneProduct")){ pbean=(ProductBean)goods.get(i);
							o_qty=Integer.parseInt(request.getParameter("quantity")); /* 장바구니 구매할 때 */ }else if(flag.equals("cart")){
							cbean=(CartBean)goods.get(i); o_qty=cbean.getC_qty(); pbean=pMgr.getProduct(cbean.getP_code()); }
							price=pbean.getP_price(); totalPrice +=price * o_qty; countPart=goods.size(); %> --%>
							<c:forEach var="cartItem" items="${orderList}">
								<tr>
									<td>
										<a style="text-decoration-line: none;" href="productDetail.do?dduck=${cartItem.prodCode}">
											<img alt="제품사진" src="img/product/${cartItem.mainImage}">
										</a>
									</td>
									<td>
										<%-- <p style="margin: 0; font-size: 10px;">${cartItem.prodCode}</p><br> --%>
										<a style="margin: 0; text-decoration-line: none;" 
										  href="productDetail.do?dduck=${cartItem.prodCode}">${cartItem.prodName}</a>
										</td>
									<td>${cartItem.cartQuantity}개</td>
									<td>${cartItem.cartPrice}원</td>
								</tr>
							</c:forEach>
							<%-- <% } %> --%>
					</table>
				</section>

				<section id="order_member">
					<h3 class="order_subtitle">주문자 정보</h3>
					<table class="verHead">

						<tr>
							<%-- <% MemberBean mbean=mMgr.getMember(o_id); String mName=mbean.getNAME(); String
								mContact=mbean.getContact(); String mEmail=mbean.getEmail(); %> --%>
								<th>보내는 분</th>
								<td>${orderList[0].userName}</td>

						</tr>
						<tr>
							<th>휴대폰</th>
							<td>${orderList[0].userPhone}</td>
						</tr>
						<tr>
							<th>이메일</th>
							<td>${orderList[0].userEmail}</td>
						</tr>
					</table>

				</section>

				<form name="orderFrm" method="post" action="#">

					<section id="order_delivery">
						<h3 class="order_subtitle">배송정보</h3>
						<table class="verHead">
							<%-- <% Vector<OrderBean> olist = oMgr.getOrder(o_id);
								OrderBean order = olist.get(0); //최근 주문 정보
								%> --%>
								<tr>
									<th>수령인 이름</th>
									<td><input name="addressee" id = "addressee" value=""></td>
								</tr>

								<tr>
									<th>휴대폰</th>
									<td><input id="addressee_phone" name="addressee_phone" value=""></td>
								</tr>

								<tr>
									<th>배송주소</th>
									<td><input id="addressee_addr" name="addressee_addr" readonly="readonly">
										<input class="addr_style" type="button"
											id="addr_btn" value="주소검색">
									</td>
								</tr>
								<tr>
									<th>상세주소</th>
									<td><input id="address_detail" name="address_detail" style="width: 300px"></td>
								</tr>

								<tr>
									<th>배송요청사항</th>
									<td><textarea class="textarea_css" id ="delivery_request" name="delivery_request" rows="10" cols="50"></textarea></td>
								</tr>
						</table>
					</section>

					<section id="order_pay">
						<h3 class="order_subtitle">결제금액</h3>
						<table class="verHead">
							<tr>
								<th>상품금액</th>
								<td><span id="total"></span>원</td>
							</tr>
							<tr>
								<th>배송비</th>
								<td><span>무료</span></td>
							</tr>
							<tr>
								<th>최종결재금액</th>
								<td><b><span id='final_total'></span></b>원
									<!-- <span id="total_point">구매 시 UtilMgr.intFormat(totalPrice)P 적립</span> -->
								</td>
							</tr>
							<!-- <tr>
                            <td></td>
                        </tr> -->
						</table>
					</section>

					<section id="order_howpay">
						<h3 class="order_subtitle">결제수단</h3>
						<table class="verHead">
							<!-- <tr>
                            <th>일반결재</th>
                            <td> 신용카드
                                <input type="radio" name="o_pay_method" value="신용카드" onclick='paymentMethod(this.value);'
                                    checked>휴대폰
                                <input type="radio" name="o_pay_method" value="휴대폰" onclick='paymentMethod(this.value);'>
                            </td>
                        </tr>
                        <tr id='tr1'>
                            <td>
                                <select id="card">
                                    <option value="0">카드를 선택해주세요.</option>
                                    <option value="1">현대(무이자)</option>
                                    <option value="2">신한</option>
                                    <option value="3">비씨</option>
                                    <option value="4">NH</option>
                                    <option value="5">삼성</option>
                                </select>
                                <select id="installment">
                                    <option value="0">일시불</option>
                                    <option value="1">2개월 할부</option>
                                    <option value="2">3개월 할부</option>
                                    <option value="3">4개월 할부</option>
                                    <option value="4">5개월 할부</option>
                                    <option value="5">6개월 할부</option>
                                </select>
                            </td>
                        </tr>
                        <tr id='tr2' style="display:none">
                            <td></td>
                            <td><input name="cellphone1" size="13" placeholder="010-1234-1234">
                            <td>
                        </tr> -->
							<tr>
								<th>카드결제</th>
								<td>카카오 페이<input type="radio" name="o_pay_method" id="kakao_pay" value="카카오페이" checked></td>
							</tr>
						</table>
					</section>

					<section id="order_private">
						<h3 class="order_subtitle">개인정보 수집/제공*</h3>
						<table class="verHead">
							<tr>
								<th>개인정보 수집/제공*</th>
								<th></th>
							</tr>
							<tr>
								<td style="display: flex;">
									<span style="flex: 2;">필수동의 결재진행</span>
									<input style="flex: 1;" id="agreement" type="checkbox">
								</td>
								<td></td>
							</tr>
							<tr>
								<td>개인정보 수집/이용동의(필수)</td>
								<td><a href="#">약관확인></a></td>
							</tr>
							<tr>
								<td>결재대행 서비스 약관 동의(필수)</td>
								<td><a href="#">약관확인></a></td>
							</tr>
						</table>
						<input type="hidden" name="o_id" value="o_id">
						<input type="hidden" name="o_status" value="o_status">
						<input type="hidden" name="countPart" value="countPart">
						<div class="order_btn_wrapper">
							<input type="button" class="btn order_submit" id="payCheck" value="결제하기">
							<input type="submit" class="btn order_submit" value="취소">
						</div>
					</section>
				</form>
			</div>
		</main>