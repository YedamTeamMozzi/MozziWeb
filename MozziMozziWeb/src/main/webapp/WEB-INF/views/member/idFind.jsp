<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/sign-in/">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
      @import url(" http://fonts.googleapis.com/earlyaccess/nanumgothic.css");
      @import url('https://fonts.googleapis.com/css2?family=Dongle:wght@700&family=Shadows+Into+Light&display=swap');

      html {
        height: 100%;
      }

      body {
        width:
          100%;
        height: 100%;
        margin: 0;
        padding-top: 200px;
        padding-bottom: 40px;
        font-family: "Nanum Gothic", arial,
          helvetica, sans-serif;
        background-repeat: no-repeat;
      }

      .card {
        margin: 0 auto;
        /* Added */
        float: none;
        /* Added
          */
        margin-bottom: 10px;
        /* Added */
        border: none;
        margin-top: 30px;
      }

      #btn-Yes {
        background-color: #e4932b;
        border: none;
      }

      .form-signin .form-control {
        position: relative;
        height: auto;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
        padding: 10px;
        font-size: 16px;
      }

      .card-title {
        margin: 0 auto;

        text-align: center;
      }

      .links {
        text-align: center;
        margin-bottom: 10px;
      }

      span {
        text-align: center;
      }

      #a_tag {
        color: #f58b34;
        text-decoration: none;
      }

      .text2 {
        color: blue;
      }
    </style>

    <body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%" align="center">

      <div class="card align-middle" style="width:25rem;">
        <div class="card-title" style="margin-top:30px;">
          <span class="card-title"
            style="color:#f58b34; font:50px bold; font-family: 'Shadows Into Light', cursive;">MozziMozzi</span>
          <br>
          <span class="hangle" style="color:#f58b34; font:50px bold; font-family: 'Dongle', sans-serif;">아이디 찾기</span>
        </div>

        <div class="card-body">
          <form action="findId" class="form-signin" method="POST">
            <p class="text2">${findid2}</p>
            <input type="text" name="name" id="name floatingInput" class="form-control" required autofocus><br>
            <label for="floatingInput">아이디</label>
            <input type="email" name="email" id="email floatingEmail" class="form-control" required><br>
            <label for="floatingEmail">이메일</label>
            <p class="check" id="check">${check}</p><br />
            <button id="btn-Yes" class="btn btn-lg btn-primary btn-block" type="submit">아 이 디 찾 기</button>

          </form>

        </div>
        <div class="links">
          <a id="a_tag" href="pwFind.do">비밀번호 찾기</a> | <a id="a_tag" href="login.do">로그인</a> | <a id="a_tag"
            href="signUpForm.do">회원가입</a>

        </div>
      </div>
      <script type="text/javascript">



        $("#name").focusout(function () {

          if ($('#name').val() == "") {
            $('#check').text('이름을 입력해주세요.');
            $('#check').css('color', 'orange');

          } else {
            $('#check').hide();
          }
        });

        $("#email").focusout(function () {
          if ($('#email').val() == "") {
            $('#check').text('이메일을 입력해주세요');
            $('#check').css('color', 'orange');
          } else {
            $('#check').hide();
          }
        });

      </script>