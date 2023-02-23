<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
  <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/sign-in/">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">



  <style>
    .bd-placeholder-img {
      font-size: 1.125rem;
      text-anchor: middle;
      -webkit-user-select: none;
      -moz-user-select: none;
      user-select: none;
    }

    @media (min-width: 768px) {
      .bd-placeholder-img-lg {
        font-size: 3.5rem;
      }
    }

    .b-example-divider {
      height: 3rem;
      background-color: rgba(0, 0, 0, .1);
      border: solid rgba(0, 0, 0, .15);
      border-width: 1px 0;
      box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
    }

    .b-example-vr {
      flex-shrink: 0;
      width: 1.5rem;
      height: 100vh;
    }

    .bi {
      vertical-align: -.125em;
      fill: currentColor;
    }

    .nav-scroller {
      position: relative;
      z-index: 2;
      height: 2.75rem;
      overflow-y: hidden;
    }

    .nav-scroller .nav {
      display: flex;
      flex-wrap: nowrap;
      padding-bottom: 1rem;
      margin-top: -1px;
      overflow-x: auto;
      text-align: center;
      white-space: nowrap;
      -webkit-overflow-scrolling: touch;
    }

    .link_look {
      color: gray;
    }
  </style>


<body class="text-center">

  <main class="form-signin w-100 m-auto">
    <form>

      <h1 class="h3 mb-3 fw-normal" style="margin-top:60px">로그인</h1>

      <div class="form-floating">
        <input style = "width:300px; margin-bottom:5px" type="text" class="form-control" id="floatingInput" placeholder="name@example.com">
        <label for="floatingInput">아이디</label>
      </div>
      <div class="form-floating">
        <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
        <label for="floatingPassword">비밀번호</label>
      </div>

      <div>
        <button class="w-100 btn btn-lg btn-warning" type="submit" style="margin-top:10px; margin-bottom:20px">로그인</button>
      </div>
    </form>
    <div class="sub_area">
      <div class="look_box">
        <a href="#" class="link_look" data-clk="log_off.searchid">아이디</a>
        <a href="#" class="link_look" data-clk="log_off.searchpass">비밀번호찾기</a>
        <a href="signUpForm.do" class="link_look" data-clk="log_off.registration">회원가입</a>

  </main>
