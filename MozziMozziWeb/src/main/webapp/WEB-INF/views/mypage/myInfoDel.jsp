<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


    <link rel="stylesheet" type="text/css" href="bootstrap/css/mypage_style.css">

    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script type="text/javascript" src="/online-shopping-mall/js/top.js"></script>

    <link rel="stylesheet" type="text/css" href="/online-shopping-mall/order/css/mypage_style.css">
    <script src="https://kit.fontawesome.com/115bcf1f34.js" crossorigin="anonymous"></script>

    <style>
        .btnsss {
            width: 100%;
            margin: 0 auto;
        }

        .btnsss ul {
            list-style: none;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        .btnsss ul li {
            text-align: center;
            margin: 0 auto;
        }

        #pwdCheckInput {
            margin-bottom: 10px;
        }
    </style>
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

                <h1 class="title">회원 탈퇴</h1>

                <!-- <div class="conf_pw">  -->
                <form id="pwdCheck_form" name="confirmForm" method="post" action="myInfoDel.do">

                    <div id="title_wrapper" style="padding-left: 300px;">
                        <span class="inner_title">비밀번호 확인</span>
                    </div>

                    <div class="btnsss">
                        <ul>
                            <li><input id="pwdCheckInput" type="password" name="pwd" placeholder="비밀번호"></li>
                            <li><input id="pwdCheckInput" type="password" name="pwdChek" placeholder="비밀번호 확인."></li>
                            <li><input id="pwdcheckBtn" type="submit" class="btn" value="확인"></li>
                        </ul>
                        <input id="pwdCheckInput" type=hidden name="checkPwd" value="${vo.userPw}">
                    </div>
                </form>
                <!-- </div>  -->
            </div>
        </div>
    </div> <!-- main (상단요약 + 버튼 + mypage) : mypage_side.jsp 에서 열림-->
    <script>
        $('#pwdcheckBtn').click(function () {
            // 간단한 유효성 검사
            var pwd = $('input[name=pwd]').val();
            var checkPwd = $('input[name=checkPwd]').val();
            var pwdChek = $('input[name=pwdChek]').val();

            if (pwd != pwdChek) { // 같지 않다면 실패 창 뜨게
                alert('비밀번호가 일치하지 않습니다.');
                return false
            }
            if (pwd != checkPwd) {
                alert('현재 비밀번호가 정확하지 않습니다.');
                return false
            }

            document.location.href = "login.do";
        });
    </script>