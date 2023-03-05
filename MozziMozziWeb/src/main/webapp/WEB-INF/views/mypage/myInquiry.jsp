<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <style>
            .cusor:hover {
                background-color: lightyellow;
                cursor: pointer;
            }

            #column_tr th {
                border-bottom: 1px solid lightgray;
                padding-bottom: 20px;
                padding-top: 0px;

            }
        </style>


        <link rel="stylesheet" type="text/css" href="bootstrap/css/mypage_style.css">

        <!--전체 페이지 Wrapper-
            <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>



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

                <!-- mypage 내용 영역 -->


                <div id="mypage">

                    <h1 class="title">My 문의</h1>

                    <table class="mypage_table">
                        <tr id="column_tr">
                            <th>문의번호</th>
                            <th>카테고리</th>
                            <th>제목</th>
                            <th>문의일자</th>
                            <th>문의상태</th>
                        </tr>
                        <c:forEach var="qna" items="${list}">
                            <tbody>
                                <td>${qna.qnaNO}</td>
                                <td><a href="customerQnaIn.do?qnano=${qna.qnaNO}">${qna.qnaTitle}</a></td>
                                <td>${qna.qnaContent} </td>
                                <td>${qna.userId} </td>
                                <td>${qna.writeDate} </td>
                                <td>${qna.hitCount} </td>
                            </tbody>
                        </c:forEach>
                    </table>
                </div>
            </div>

            <script>

                function clickBtn(result) {
                    location.href = 'orderDetail.do';
                }

            </script>