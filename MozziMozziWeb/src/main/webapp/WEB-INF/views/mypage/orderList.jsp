<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <link rel="stylesheet" type="text/css" href="/css/order/mypage_orderlist.css">
    
    
    <!--<!DOCTYPE html>
    <html>
        <head>-->
            <meta charset="EUC-KR">
            <link rel="stylesheet" type="text/css" href= "/css/reset.css">
            <link rel="stylesheet" href="css/index/top.css">
            <script src="https://kit.fontawesome.com/115bcf1f34.js" crossorigin="anonymous"></script>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
            <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
        <!--</head>
        <body> -->
                
                    <div id="wrap" style="display:none;border:1px solid #DDDDDD;width:500px;margin-top:500px; margin-left: 200px, z-index: 200"></div>
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

        </div>
    
        <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        <script type="text/javascript" src="/online-shopping-mall/js/top.js"></script>
    
<!-- top.jsp 끝 -->
    


    <!-- top, bottom 제외 페이지 전체-->
    <div id="main">
        
    
    
    
    <link rel="stylesheet" type="text/css" href="/css/order/mypage_style.css">
    <script src="https://kit.fontawesome.com/115bcf1f34.js" crossorigin="anonymous"></script>
      

    <header>  <!-- mypage 요약창 구역 -->


          <!-- 요약창 부분 -->



    </header>

    <!-- 버튼 메뉴 + mypage 내용 wrapper (flex container) -->
    <div id="btn_mypage_wrapper">


        <!-- 사이드 메뉴 영역 -->
        <div  id="mypage_side">

                <div id="section">
                        마이페이지
                </div>
    
    
            <!-- 메뉴 부분 -->
            <div id="mypage_btn_wrapper">
                <ul>
                    <a id="btn_first" href="#">
                        <li>
                            <span class="text">주문관리</span>
        
                            <!-- default 아이콘 -->
                            <span class="icon"><i class="fas fa-chevron-left"></i></span>
        
                            <!-- mypage_orderlist.jsp / order_view.jsp :: -->
                            <!-- <span class="icon"><i class="fas fa-chevron-right"></i></span> -->
                    
                        </li>
                    </a>
                    <a href="#">
                        <li>
                            <span class="text">리뷰관리</span>
                            
                            <!-- default 아이콘 -->
                            <span class="icon"><i class="fas fa-chevron-left"></i></span>
        
                            <!-- mypage_review.jsp / review_write.jsp :: -->
                            <!-- <span class="icon"><i class="fas fa-chevron-right"></i></span> -->
        
                        </li>
                    </a>
                    <a href="#">
                        <li>
                            <span class="text">My문의</span>
                            
                            <!-- default 아이콘 -->
                            <span class="icon"><i class="fas fa-chevron-left"></i></span>
                        
                            <!-- mypage_point.jsp :: -->
                            <!-- <span class="icon"><i class="fas fa-chevron-right"></i></span> -->
                        
                        </li>
                    </a>
                    <a id="btn_last" href="#">
                        <li>
                            <span class="text">회원정보</span>
                            
                            <!-- default 아이콘 -->
                            <span class="icon"><i class="fas fa-chevron-left"></i></span>
                        
                            <!-- myinfo_check.jsp / mypage_myinfo.jsp :: -->
                            <!-- <span class="icon"><i class="fas fa-chevron-right"></i></span> -->
                        
                        </li>
                    </a>
                    <a id="btn_last" href="#">
                        <li>
                            <span class="text">회원탈퇴</span>
                            
                            <!-- default 아이콘 -->
                            <span class="icon"><i class="fas fa-chevron-left"></i></span>
                        
                             <!-- myinfo_check.jsp / mypage_myinfo.jsp :: -->
                            <!-- <span class="icon"><i class="fas fa-chevron-right"></i></span> -->
                        </li>
                    </a>
                </ul>
            </div>
    
    
        </div>
    
    
      
        
    
    
    
    
        <!-- mypage 내용 영역 -->

    
        <!-- orderlist.jsp 작업부분 !! -->
        <!-- orderlist.jsp 작업부분 !! -->
        <!-- orderlist.jsp 작업부분 !! -->
        <!-- orderlist.jsp 작업부분 !! -->
        <!-- orderlist.jsp 작업부분 !! -->
        
        <div id="mypage">

            <h1 class="title">주문내역</h1>
            
            <table class="mypage_table">
                <tr id="column_tr">
                    <th>주문번호</th>
                    <th>제품명</th>
                    <th>주문날짜</th>
                    <th>주문상태</th>
                    <th>주문방법</th>
                </tr>
            <!-- 주문내역 가져오기 -->
                
                <tr>
                    <td class="btn_td"><a href="#">1</a></td>
                    <td class="btn_td"><a href="#">[제주특산품] 오메기떡</a></td>
                    <td>2019-12-11</td>
                    <td>결제완료</td>
                    <td>카드</td>
                </tr>
                                
                    <tr>
                        <td>1</td>
                        <td>[한정판매]시루떡</td>
                        <td>2019-12-11</td>
                        <td>결제완료</td>
                        <td>카드</td>
                    </tr>
                    
                    
            </table>
        </div>
    
        <!-- orderlist.jsp 작업부분 !! -->
        <!-- orderlist.jsp 작업부분 !! -->
        <!-- orderlist.jsp 작업부분 !! -->
        <!-- orderlist.jsp 작업부분 !! -->
        <!-- orderlist.jsp 작업부분 !! -->


    </div>

    </div>

    <link rel="stylesheet" type="text/css" href="/css/index/bottom.css">
    </body>
    </html>
    
    
    
    