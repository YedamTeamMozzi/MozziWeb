<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <style>
    #container{
      margin: 0 auto;
      text-align: center;
    }
    section{
      margin-top: 30px;
    }
    h1{
      margin-bottom: 20px;
    }
    fieldset ul{
      padding: 0px;
    }
    fieldset ul li{
      list-style: none;
      margin-bottom: 15px;
      text-align: center;
    }
    fieldset ul button{
      width: 310px;
      height: 50px;
      margin-bottom: 10px;
    }
    fieldset ul input{
      width: 310px;
      height: 50px;
    }
    p{
      margin-bottom: 30px;
    }
  </style>

<body>

  <!-- Product section-->
  <section>
    <div id="container">
      <h1>LOGIN</h1>
      <form action="#" method="POST"> <!--Post방식 등록-->
        <fieldset>
          <ul>
            <li>
              <input type="text" id="userId" name="userId" placeholder="아이디">
            </li>
            <li>
              <input type="password" id="userPw" name="userPw" placeholder="비밀번호">
            </li>
            <li>
              <button class="btn btn-outline-dark flex-shrink-0" type="button" id="btnLogin">로그인</button>
            </li>
          </ul>
        </fieldset>
      </form>
      <p>아이디가 없으신가요?<br>
        그렇다면 <a href="signUp.do">회원가입</a>을 눌러주세요.</p>
    </section>
  <!-- Bootstrap core JS-->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
 
