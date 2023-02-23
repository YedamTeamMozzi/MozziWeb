<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <link rel="icon" href="/img/index/logo/favicon3.png">
  <link rel="stylesheet" href="bootstrap/css/signin.css">


<body>

  <div class="member">
    <form action="signUp.do" method="POST" id="signUpForm">

      <div class="field"><b style="text-align: center; font-size: 30px; margin-bottom: 30px; margin-top : 50px">회 원 가 입</b></div>

      <div class="field">
        <b>아이디</b>
        <span class="placehold-text"><input type="text" id="user_id" name="user_id"></span>
      </div>
      <div class="field">
        <b>비밀번호</b>
        <input class="userpw" id="user_pw" name="user_pw" type="password">
      </div>
      <div class="field">
        <b>비밀번호 재확인</b>
        <input class="userpw-confirm" type="password">
      </div>
      <div class="field">
        <b>이름</b>
        <input type="text" id="user_name" name="user_name">
      </div>

      <div class="field">
        <b>생년월일</b>
        <div>
          <input type="text" id="user_birth" name="user_birth" placeholder="생년월일 앞 8글자">

        </div>
      </div>


      <div class="field tel-number">
        <b>휴대전화</b>
        <input type="tel" id="user_phone" name="user_phone" placeholder="전화번호 입력">
      </div>
      <div class="field">
        <b>이메일</b>
        <input type="email" id="user_email" name="user_email" placeholder="mozzi@mozzi.com">
      </div>
      <div class="field">
        <b>주소</b>
        <input type="text" id="user_addr" name="user_addr" placeholder="대구 모찌구 모찌동">
      </div>

      <button id="sign_btn" type="submit">가입하기</button>

      <input id="reset_btn" type="reset" value="취소">

      <div class="member-footer">
        <div>
          <a href="#none">MyPage</a>
          <a href="#none">고객센터</a>
        </div>
        <span><a href="main.do">MOZZI Corp.</a></span>
      </div>
  </div>
  </form>        
         
  