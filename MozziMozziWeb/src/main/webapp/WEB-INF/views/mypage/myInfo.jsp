<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>



    <script src="https://code.jquery.com/jquery-3.6.3.min.js"
        integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script type="text/javascript" src="/online-shopping-mall/js/top.js"></script>
    <script src="https://kit.fontawesome.com/115bcf1f34.js" crossorigin="anonymous"></script>

    <link rel="stylesheet" type="text/css" href="bootstrap/css/mypage_style.css">


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


            <div id="mypage" style="display:inline">

                <h1 class="title">개인 정보 수정</h1>


                <form name="myinfoForm" method="post">
                    <table class="mypage_table verHead" id="myinfo_table">
                        <tr>
                            <th>아이디</th>
                            <td>
                                <input name="id" value="${vo.userId}" readOnly>
                            </td>
                        </tr>
                        <tr>
                            <th>이름</th>
                            <td>
                                <input name="NAME" value="${vo.userName}">
                            </td>
                        </tr>

                        <tr>
                            <th>현재 비밀번호</th>
                            <td>
                                <input type="password" name="pwd">
                                <input type="hidden" value="${vo.userPw}" name="oldPwd">
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
                                <input name="birthday" placeholder="Ex)1900-01-01" value="${vo.userBirth}">
                            </td>
                        </tr>
                        <tr>
                            <th>이메일</th>
                            <td>
                                <input name="email" placeholder="Ex)mills@gmail.com" value="${vo.userEmail}">
                            </td>
                        </tr>
                        <tr>
                            <th>연락처</th>
                            <td>
                                <input name="contact" placeholder="Ex)010-0000-0000" value="${vo.userPhone}">
                            </td>
                        </tr>
                        <tr>
                            <th id="address_th">우편번호</th>
                            <td id="address_td">
                                <input id="zip_btn" class="btn" name="zip_btn" type="button" value="주소" />
                                <input id="address" class="input_zipcode" name="address" type="text"
                                    value="${vo.userAddr}" readOnly />
                                <input class="input_zipcode" name="address_detail" type="text" value=""
                                    placeholder="상세주소를 입력하세요.">
                            </td>
                        </tr>
                    </table>
                    <div class="update_btn">
                        <input class="btn_submit" type="button" id="modify_btn" value="회원정보수정">
                        <a href="myInfoCheck.do"><input class="btn_submit" type="button" value="취소"></a>
                    </div>
                </form>
            </div>
        </div>
    </div>


    <script>
        var width = 500; //팝업의 너비
        var height = 500; //팝업의 높이
        window.onload = function () {
            document.getElementById("zip_btn").addEventListener("click", function () { //주소입력칸을 클릭하면
                //카카오 지도 발생
                new daum.Postcode({

                    oncomplete: function (data) { //선택시 입력값 세팅
                        document.getElementById("address").value = data.address; // 주소 넣기
                        document.querySelector("input[name=address_detail]").focus(); //상세입력 포커싱
                    },
                    width: width, //생성자에 크기 값을 명시적으로 지정해야 합니다.
                    height: height
                }).open({
                    // 창이 뜰때의 위치를 중앙으로 맞춘다
                    left: (window.screen.width / 2) - (width / 2),
                    top: (window.screen.height / 2) - (height / 2)
                });
            });
        }
    </script>
    <script>
        $('#modify_btn').click(function () {
            // 간단한 유효성 검사
            var pwd = $('input[name=pwd]').val();
            var oldPwd = $('input[name=oldPwd]').val();
            var newPwd = $('input[name=newPwd]').val(); // 위의 pw값과 pw_re값을 변수에 넣는다
            var checkPwd = $('input[name=checkPwd]').val();

            if (newPwd != checkPwd) { // 같지 않다면 실패 창 뜨게
                alert('비밀번호가 서로 다릅니다.');
                return false
            }

            if (pwd != oldPwd) {
                alert('현재 비밀번호가 정확하지 않습니다.');
                return false
            }

            var params = {
                id: $("input[name=id]").val(),
                pwd: $("input[name=pwd]").val(),
                NAME: $("input[name=NAME]").val(),
                birthday: $('input[name=birthday]').val(),
                email: $('input[name=email]').val(),
                contact: $('input[name=contact]').val(),
                newPwd: $('input[name=newPwd]').val(),
                address: $('input[name=address]').val(),
                address_detail: $('input[name=address_detail]').val()
            }
            console.log("params :: ", params);

            $.ajax({
                type: "POST",            // HTTP method type(GET, POST) 형식이다.
                url: "myInfoModify.do",      // 컨트롤러에서 대기중인 URL 주소이다.
                data: params,            // Json 형식의 데이터이다.
                success: function (res) { // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
                    console.log(JSON.parse(res));
                    var res = JSON.parse(res)
                    if (res.result = 'success') {
                        alert("회원정보가 변경되었습니다.")
                        document.location.href = "main.do";
                    }

                },
                error: function (XMLHttpRequest, textStatus, errorThrown) { // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
                    alert("통신 실패.")
                }
            });

            //return true;
        });

    </script>