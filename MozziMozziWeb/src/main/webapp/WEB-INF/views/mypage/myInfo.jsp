<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>



    <link rel="stylesheet" type="text/css" href="bootstrap/css/mypage_style.css">

    <!--전체 페이지 Wrapper-->
    <div id="top_wrapper">
        <!--header Wrapper(로고 상단 Div(추가 Contents 대비용), Hompage Logo)-->

        <!--메뉴 네비게이션(sticky)-->


        <link rel="stylesheet" type="text/css" href="bootstrap/css/mypage_style.css">
        <script src="https://kit.fontawesome.com/115bcf1f34.js" crossorigin="anonymous"></script>

        <!-- top, bottom 제외 페이지 전체-->
        <div id="main">
            <header></header>
            <div id="btn_mypage_wrapper">
                <!-- (버튼메뉴 + mypage) -->
                <div id="mypage_side">
                    <!-- 메뉴 부분 -->
                    <div id="mypage_btn_wrapper">
                        <div id="section">
                            마이페이지
                        </div>
                        <ul>
                            <a id="btn_first" href="#">
                                <li>
                                    <span class="text">주문목록</span>

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


                </div> <!-- #btn_wrapper -->


                <!-- </div>   #btn_mypage_wrapper (버튼메뉴 + mypage) : 하위 페이지에서 닫아야함-->

                <!-- </div>  #main (상단요약 + 버튼 + mypage) : 하위페이지에서 닫아야함-->

                <div id="mypage" style="display:inline">

                    <h1 class="title">개인 정보 수정</h1>


                    <form name="myinfoForm" method="post" action="mypage_myinfo_Proc.jsp">
                        <table class="mypage_table verHead" id="myinfo_table">
                            <tr>
                                <th>아이디</th>
                                <td>
                                    <input name="id" value="bean.getId()">
                                </td>
                            </tr>
                            <tr>
                                <th>이름</th>
                                <td>
                                    <input name="NAME" value="bean.getNAME()">
                                </td>
                            </tr>

                            <tr>
                                <th>현재 비밀번호</th>
                                <td>
                                    <input type="password" name="pwd">
                                    <!-- <p class="txt_guide" style="display: block;">
					<span class="txt_guide_pwd">현재 비밀번호를 확인해주세요.</span></p> -->
                                </td>
                            </tr>

                            <tr>
                                <th>새 비밀번호</th>
                                <td>
                                    <input type="password" name="newPwd">
                                </td>
                            </tr>

                            <tr>
                                <th>새 비밀번호 확인</th>
                                <td>
                                    <input type="password" name="checkPwd">
                                </td>
                            </tr>

                            <tr>
                                <th>생년월일</th>
                                <td>
                                    <input name="birthday" placeholder="Ex)1900-01-01">
                                </td>
                            </tr>
                            <tr>
                                <th>이메일</th>
                                <td>
                                    <input name="email" placeholder="Ex)mills@gmail.com">
                                </td>
                            </tr>
                            <tr>
                                <th>연락처</th>
                                <td>
                                    <input name="contact" placeholder="Ex)010-0000-0000">
                                </td>
                            </tr>
                            <!-- <div id="address_section"> -->
                            <tr>
                                <th id="address_th">우편번호</th>
                                <td id="address_td">
                                    <input id="zip_btn" class="btn" name="zip_btn" type="button"
                                        onclick="openDaumZipAddress();" value="주소" />
                                    <input class="input_zipcode" name="zipcode" type="text" value="bean.getZipcode()" />
                                    <input class="input_zipcode" name="address" type="text" value="bean.getAddress()" />
                                    <input class="input_zipcode" name="address_detail" type="text"
                                        value="bean.getAddress_detail()" placeholder="상세주소를 입력하세요.">
                                </td>
                            </tr>
                            <!-- </div> -->
                        </table>
                        <div class="update_btn">
                            <input class="btn_submit" type="submit" value="회원정보수정">
                            <input class="btn_submit" type="reset" value="취소">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>