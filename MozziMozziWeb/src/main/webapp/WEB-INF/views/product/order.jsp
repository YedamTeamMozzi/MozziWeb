<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <div style="height:10px;"></div>
	<div id="modalDiv">
	    <div id="modalInnerFrame">
			<div id="modal_elements_wrapper">
				<!-- modal_header : 로그인 / 회원가입 버튼-->
				<div id="modal_header">
					<input type="radio" id="login_btn" class="login_signup_btns" name="login_signup_btns" onclick="login_signup('login')" checked>
					<label for="login_btn" id="login_btn_label" class="login_signup_btns_label" >&nbsp로그인&nbsp</label>
					<span id="modal_header_span">&nbsp&nbsp&nbsp&nbsp&nbsp</span>
					<input type="radio" id="signup_btn" class="login_signup_btns" name="login_signup_btns" onclick="login_signup('signup')">
					<label for="signup_btn" id="signup_btn_label" class="login_signup_btns_label">회원가입</label>
				</div>
				<form method="POST" id="login_form" action="#">
					<h3>어서오세요!</h3>
					<input type="text" id="login_id_input" class="login_input" name="id" placeholder="아이디를 입력해주세요." autocomplete="off">
					<input type="password" id="login_pwd_input" class="login_input" name="pwd" placeholder="비밀번호를 입력해주세요."autocomplete="off">
					<div id="lost_id_pwd_wrapper">
						<a href="#">아이디나 비밀번호를 잊어버렸습니까?</a>
					</div>
					<button type="button" class="top_modal_button top_modal_button_style top_modal_orange" id="login_submit_btn">
						<span id="login_span">로그인</span>
					</button>
				</form>
				<form id="signup_form">
					<h3>처음이세요?</h3>
					<div id="daumWrap"></div>
					<div id="id_section">
						<input type="text" class="signup_input" id="id_section_input" autocomplete="off" placeholder="아이디를 입력하세요.">
						<!-- ajax 필요 ?-->
						<button type="button" class="signup_util_btn top_modal_button_style top_modal_orange top_modal_button" id="id_section_btn"><span>중복확인</span></button>
					</div>
					<input type="password" class="signup_input signup_long_input" id="signup_pwd"autocomplete="off" placeholder="비밀번호를 입력하세요.">
					<input type="password" class="signup_input signup_long_input" id="signup_pwd_check" autocomplete="off" placeholder="비밀번호를 한번 더 입력하세요.">
					<input type="text" class="signup_input signup_long_input" id="signup_name" autocomplete="off" placeholder="이름을 입력하세요.">
					<input type="text" class="signup_input signup_long_input" id="signup_birth" autocomplete="off" placeholder="생년월일을 입력하세요. Ex)1900-01-01">
					<input type="text" class="signup_input signup_long_input" id="signup_email" autocomplete="off" placeholder="이메일을 입력하세요. Ex)timi2030@gmail.com">
					<input type="text" class="signup_input signup_long_input" id="signup_phone" autocomplete="off" placeholder="연락처를 입력하세요. Ex)010-0000-0000">
					<div id="address_section">
						<div id ="address_section_header">
						    <input id="address_section_zipcode" class="signup_input" type="text" value="" readOnly/>
						    <input id="address_section_btn" class="signup_util_btn top_modal_button_style top_modal_orange top_modal_button" type="button" onClick="openDaumZipAddress();" value = "주소 찾기"/>
						
						    <!-- 다음 우편번호 찾기 리스트를 띄울 영역을 지정 -->
						
						    <input type="text" class="signup_input signup_long_input" id="signup_addr" readOnly/>
						    <input type="text" class="signup_input signup_long_input" id="signup_addr_detail" placeholder="상세주소를 입력하세요."/>
						</div>
					</div>
					<button type="button" class="top_modal_button top_modal_button_style top_modal_orange" id="signup_submit_btn" >
						<span id="submit_span" class="box">회원가입</span>
					</button>
				</form>
			</div>
	    </div>
	    <label for="userPopup"></label>
	</div>
		    <!--전체 페이지 Wrapper-->
	<div id="top_wrapper">
	    <!--header Wrapper(로고 상단 Div(추가 Contents 대비용), Hompage Logo)-->
	    
	    <!--메뉴 네비게이션(sticky)-->
	    <div id="menuNav">
	        <!--nav 구성 :1개의 슬라이드 메뉴, 베스트, 신상품, 고객지원, 검색창(search icon), shopping icon(장바구니)-->
	        
	</div>
    </div>
<link rel="stylesheet" href="bootstrap/css/order.css">
 


<!--  order.jsp 영역 -->
<!--  order.jsp 영역 -->
<!--  order.jsp 영역 -->
<!--  order.jsp 영역 -->

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
               <%--  <%
                
                ProductBean pbean =null;
                CartBean cbean = null;
                
                for(int i=0; i<goods.size(); i++){			
                    
                    /* 물건 하나 구매할 때*/
                    if(flag.equals("oneProduct")){
                        pbean = (ProductBean)goods.get(i);	
                        o_qty = Integer.parseInt(request.getParameter("quantity"));
                        
                        /* 장바구니 구매할 때 */
                    }else if(flag.equals("cart")){
                        
                        cbean = (CartBean)goods.get(i);
                        o_qty = cbean.getC_qty();
                        pbean = pMgr.getProduct(cbean.getP_code());
                    }
                    
                    price = pbean.getP_price();
                    totalPrice += price * o_qty;
                    countPart = goods.size();
                    %> --%>
                    <tr>
                        <td>
                            <img alt="제품사진" src="../img/product/fus_main1.jpg">
                            <!-- <img alt="제품사진" src="${pageContext.request.contextPath}/img/product/pbean.getP_main_pht_name()"> -->
                            </td>
                            <td><a>pbean.getP_name()</a></td>
                            <td>o_qty개</td>
                            <td>UtilMgr.intFormat(price)원</td>
                        </tr>
                      <%--   <%
                                }
                            %> --%>
            </table>
        </section>



        <section id="order_member">
            <h3 class="order_subtitle">주문자 정보</h3>
            <table class="verHead">

                <tr>
               <%--  <%
                    MemberBean mbean = mMgr.getMember(o_id);
                    
                    String mName = mbean.getNAME();
                    String mContact = mbean.getContact();
                    String mEmail = mbean.getEmail();
                    
                %> --%>
                
                        <th>보내는 분</th>
                        <td>mName</td>
                    </tr>
                    <tr>
                        <th>휴대폰 </th>
                        <td>mContact</td>
                    </tr>
                    <tr>
                        <th>이메일 </th>
                        <td>mEmail</td>
                    </tr>
                </table>

            </section>

            <form name="orderFrm" method="post" action="mypage_orderProc.jsp">

                <section id="order_delivery">
                    <h3 class="order_subtitle">배송정보</h3>
                    <table class="verHead">
                            <%-- <%
                                Vector<OrderBean> olist = oMgr.getOrder(o_id);
                                OrderBean order = olist.get(0); //최근 주문 정보 
                            %> --%>
                        <tr>
                            <th>배송주소</th>
                            <td><input name="o_recpt_add" readonly="readonly" value="order.getO_recpt_add()"><input class="btn" type="button" value="주소검색"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input name="o_recpt_add_det"  value="order.getO_recpt_add_det()"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input name="o_recpt_zipcode" readonly="readonly" value="order.getO_recpt_zipcode()"></td>
                        </tr>
                        <tr>
                            <th>수령인 이름</th>
                            <td><input name="o_recpt_name" value="order.getO_recpt_name()"></td>
                        </tr>
                        <tr>
                            <th>휴대폰</th>
                            <td><input name="o_recpt_contact"  value="order.getO_recpt_contact()"></td>
                        </tr>
                        
                        <tr>
                            <th>배송요청사항</th>
                            <td><textarea name="o_del_msg" rows="5" cols="50"></textarea></td>
                        </tr>
                    </table>
                </section>

                <section id="order_point">
                    <h3 class="order_subtitle">적립금</h3>
                    <table class="verHead"> 
                        <tr>
                            <th>적립급 적용</th>
                            <td><input placeholder="사용가능한 적립금 : 5000원">원</td>
                        </tr>
                    </table>
                </section>

                <section id="order_pay">
                    <h3 class="order_subtitle">결제금액</h3>
                    <table class="verHead">
                        <tr>
                            <th>상품금액&nbsp;&nbsp;&nbsp;</th>
                            <td><input name="o_prod_amount" readonly size="13" 	value="UtilMgr.intFormat(totalPrice)">원</td>
                        </tr>
                        <tr>
                            <th>배송비&nbsp;&nbsp;&nbsp;</th>
                            <td><input name="o_del_fee" readonly size="13" 	value="UtilMgr.intFormat(shippingPrice)">원</td>
                        </tr>
                        <tr>
                            <th>최종결재금액&nbsp;&nbsp;&nbsp;</th>
                            <td>
                                <input name="o_total_amount" readonly size="13" value="UtilMgr.intFormat(totalPrice+shippingPrice)">원
                                <span id="total_point">구매 시 UtilMgr.intFormat(totalPrice)P 적립</span>
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
                        <tr>
                            <th>일반결재 &nbsp;&nbsp;&nbsp;</th>
                            <td> 신용카드
                            <input type=radio name="o_pay_method" value="신용카드" onclick='paymentMethod(this.value);' checked>
                            &nbsp;&nbsp;&nbsp; 휴대폰
                            <input type=radio name="o_pay_method" value="휴대폰" onclick='paymentMethod(this.value);'>
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
                            <td><input name="cellphone1" size="13" placeholder="010-1234-1234"><td>
                        </tr>
                        <tr>
                            <th>간편결제 &nbsp;&nbsp;&nbsp;</th>
                            <td>네이버 페이<input type=radio name="o_pay_method" value="네이버페이" onclick='paymentMethod(this.value);'></td>
                        </tr>
                    </table>
                </section>

                <section id="order_private">
                    <h3 class="order_subtitle">개인정보 수집/제공*</h3>
                    <table class="verHead">
                        <tr>
                            <th>개인정보 수집/제공*</th>
                        </tr>
                        <tr>
                            <td><input id="agreement" type=checkbox value=1>결재진행 필수동의</td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;개인정보 수집/이용동의(필수)</td>
                            <td>&nbsp;&nbsp;&nbsp;<a href="#">약관확인></a></td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;결재대행 서비스 약관 동의(필수)</td>
                            <td>&nbsp;&nbsp;&nbsp;<a href="#">약관확인></a></td>
                        </tr>
                    </table>
                    <input type="hidden" name="o_id" value="o_id">
                    <input type="hidden" name="o_status" value="o_status">
                    <input type="hidden" name="countPart" value="countPart">
                    <%-- <%for(int i =0; i<countPart;i++){ %>
                        <input type="hidden" name="o_qty" value="<%=o_qty%>">
                        <input type="hidden" name="p_code" value="<%=p_code%>">
                    <%} %> --%>
                    <div class="order_btn_wrapper">
                        <input type="submit" class="btn order_submit" value="결제하기" onclick="agreement()">
                        <input type="submit" class="btn order_submit" value="취소">
                    </div>
                </section>
            </form>
</div>
</main>


<!--  order.jsp 영역 -->
<!--  order.jsp 영역 -->
<!--  order.jsp 영역 -->
<!--  order.jsp 영역 -->
    