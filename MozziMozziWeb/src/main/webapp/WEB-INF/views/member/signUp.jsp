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
        
        <form action="#" method="POST" id="form">
          <fieldset>
            <ul>
              <li><input type="text" id="sign_userId" name="sign_userId" placeholder="아이디*"></li>
              <li><input type="password" id="sign_userPw" name="sign_userPw"
                  placeholder="비밀번호*"></li>
              <li><input type="password" id="sign_userPw_check" name="sign_userPw_check"
                  placeholder="비밀번호*"></li>
              <li><input type="text" id="sign_userNickName" name="sign_userNickName"
                  placeholder="이름"></li>
                  <li><input type="text" id="sign_userNickName" name="sign_userNickName"
                    placeholder="생년월일"></li>
              <li><input type="tel" id="sign_userPhone" name="sign_userPhone"
                  placeholder="전화번호"></li>
              <li><input type="email" id="sign_userEmail" name="sign_userEmail" placeholder="이메일">
              </li>
              <li ><input type="text" id="sign_userAddress" name="sign_userAddress" placeholder="주소" class="addressbox"> <button class="addressbtn">주소찾기</button>
              </li>
            </li>
            <li><input type="text" id="sign_userAddress" name="sign_userAddress" placeholder="상세주소">
            </li>
            </ul>
            <div class="button">
          <button class="butt">취소</button>
           <button class="butt">회원가입</button>
          </div>
           
         
  