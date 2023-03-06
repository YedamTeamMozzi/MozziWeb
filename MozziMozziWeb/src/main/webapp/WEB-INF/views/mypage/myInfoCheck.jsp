<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


    <link rel="stylesheet" type="text/css" href="bootstrap/css/mypage_style.css">

    <!--메뉴 네비게이션(sticky)-->

    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script type="text/javascript" src="/online-shopping-mall/js/top.js"></script>

    <link rel="stylesheet" type="text/css" href="/online-shopping-mall/order/css/mypage_style.css">
    <script src="https://kit.fontawesome.com/115bcf1f34.js" crossorigin="anonymous"></script>

    <!-- top, bottom 제외 페이지 전체-->
    <div id="main">

        <div id="btn_mypage_wrapper">
            <div id="mypage_side">
                <div id="mypage_btn_wrapper">
                    <div id="section">마이페이지</div>
                    <ul>
                        <a id="btn_first" href="orderList.do?id=${logId}">
                            <li>
                                <span class="text">주문목록</span>
                                <span class="icon"><i class="fas fa-chevron-left"></i></span>
                            </li>
                        </a>
                        <a href="reviewManage.do?id=${logId}">
                            <li>
                                <span class="text">리뷰관리</span>
                                <span class="icon"><i class="fas fa-chevron-left"></i></span>
                            </li>
                        </a>
                        <a href="myInquiry.do?id=${logId}">
                            <li>
                                <span class="text">My문의</span>
                                <span class="icon"><i class="fas fa-chevron-left"></i></span>
                            </li>
                        </a>
                        <a id="btn_last" href="myInfoCheck.do">
                            <li>
                                <span class="text">회원정보</span>
                                <span class="icon"><i class="fas fa-chevron-left"></i></span>
                            </li>
                        </a>
                        <a id="btn_last" href="myInfoDelCheck.do">
                            <li>
                                <span class="text">회원탈퇴</span>
                                <span class="icon"><i class="fas fa-chevron-left"></i></span>
                            </li>
                        </a>
                    </ul>
                </div>
            </div>


            <!-- </div>   #btn_mypage_wrapper (버튼메뉴 + mypage) : 하위 페이지에서 닫아야함-->

            <!-- </div>  #main (상단요약 + 버튼 + mypage) : 하위페이지에서 닫아야함-->

            <div id="mypage">

                <h1 class="title">개인 정보 수정</h1>

                <!-- <div class="conf_pw">  -->
                <form id="pwdCheck_form" name="confirmForm" method="post" action="myInfoCheck.do">

                    <div id="title_wrapper">
                        <span class="inner_title">비밀번호 확인</span>
                    </div>

                    <div id="btn_group" style="padding-left: 230px;">
                        <input id="pwdCheckInput" type="password" name="pwd" placeholder="비밀번호">
                        <input type=hidden id="pwdCheckInput" name="checkPwd" value="${vo.userPw}">
                        <input id="pwdcheckBtn" class="btn" type="button" value="확인">
                    </div>
                </form>
                <!-- </div>  -->
            </div>
        </div>
    </div> <!--  #btn_mypage_wrapper (버튼메뉴 + mypage) : mypage_side.jsp 에서 열림-->
    <script>
        $('#pwdcheckBtn').click(function () {
            // 간단한 유효성 검사
            var pwd = $('input[name=pwd]').val();
            var checkPwd = $('input[name=checkPwd]').val();

            if (pwd != checkPwd) { // 같지 않다면 실패 창 뜨게
                alert('비밀번호가 일치하지 않습니다.');
                return false
            }

            document.location.href = "myInfo.do";
        });
    </script>