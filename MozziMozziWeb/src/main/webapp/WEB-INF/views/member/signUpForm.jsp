<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
h1 { text-align: center;
      }
li {text-align: center;
    list-style: none;
    margin-bottom: 30px;
    
  } 
  input{
    width: 300px;
  }   

.button{
  text-align: center;
  margin-left: 20px;
}

.butt{
        text-align: center;
        width:150px;
        margin:auto;
        display:block;
        border: 1px solid;
        border-radius: 5px;
        display: inline-block; 
        margin-left: 20px;
        
} 
.addressbtn{
position: relative;
left: 0px;
display:block;
        border: 1px solid;
        border-radius: 5px;
        display: inline-block; 
        margin-left: 20px;
}
.addressbox{
  margin-left: 100px;
}

</style>   

    <div id="container">
      
      <h1>회원가입</h1>
      <section>
        
        <form action="signUp.do" method="POST" id="signUpForm">
          <fieldset>
            <ul>
              <li><input type="text" id="user_id" name="user_id" placeholder="아이디*"></li>
              <li><input type="password" id="user_pw" name="user_pw"
                  placeholder="비밀번호*"></li>
           <!--    <li><input type="password" id="sign_userPw_check" name="sign_userPw_check"
                  placeholder="비밀번호*"></li> -->
              <li><input type="text" id="user_name" name="user_name"
                  placeholder="이름"></li>
                  <li><input type="text" id="user_birth" name="user_birth"
                    placeholder="생년월일"></li>
              <li><input type="tel" id="user_phone" name="user_phone"
                  placeholder="전화번호"></li>
              <li><input type="email" id="user_email" name="user_email" placeholder="이메일">
              </li>
              <li ><input type="text" id="user_addr" name="user_addr" placeholder="주소" class="addressbox"> <button class="addressbtn">주소찾기</button>
              </li>
            </li>
           <!--  <li><input type="text" id="sign_userAddress" name="sign_userAddress" placeholder="상세주소">
            </li> -->
            </ul>
            <div class="button">
          <button class="butt">취소</button>
           <button class="butt">회원가입</button>
          </div>
           
         
  