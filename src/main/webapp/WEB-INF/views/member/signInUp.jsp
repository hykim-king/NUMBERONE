<%--
/**
    Class Name: 
    Description:
    Author:user
    Modification information
    
    수정일     수정자      수정내용
    -----   -----  -------------------------------------------
    2024. 7. 24        최초작성 
    
    author eclass 개발팀
    since 2024.07.01
    Copyright (C) by KandJang All right reserved.
*/
 --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link rel="icon" type="image/png" href="/ehr/resources/img/favicon.ico">
<style>
    * {
        font-family: "Hahmlet", serif;
        font-optical-sizing: auto;
        font-style: normal;
    }
    body {
        margin: 0;
        color: #BDBDBD;
        background-color: #F5F5F5;
        display: flex;
        flex-direction: column;
        min-height: 100vh;
    }
    main {
        flex: 1;
    }
    
    #logo{
        width: 150px;
        height: auto;
        margin: auto;
        display: block;
        position : relative;
        top : 60px;
    
    }
    *,:after,:before { box-sizing: border-box; }
    .clearfix:after,.clearfix:before { content: ''; display: table; }
    .clearfix:after { clear: both; display: block; }
    a { color: inherit; text-decoration: none; }
    .login-wrap {
        width: 100%;
        margin: 0 auto;
        max-width: 525px;
        position: relative;
        top: 75px; 
        box-shadow: 0 12px 15px 0 rgba(0,0,0,.24),0 17px 50px 0 rgba(0,0,0,.19);
    }
    .login-html {
        width: 100%;
        height: 600px;
        position: absolute;
        padding: 80px;
        background-color: #134b70;
        border : 2px solid #E0E0E0;
        border-radius: 5px;
    }
    
    .login-html.white-background {
        background-color: #FAFAFA;
    }
    
    
    .login-html .sign-in-htm,
    .login-html .sign-up-htm {
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        position: absolute;
        transform: rotateY(180deg);
        backface-visibility: hidden;
        transition: all .4s linear;
    }
    .login-html .sign-in,
    .login-html .sign-up,
    .login-form .group .check {
        display: none;
    }
    .login-html .tab,
    .login-form .group .label,
    .login-form .group .button1,
    .login-form .group .button2 {
        text-transform: uppercase;
    }
    .login-html .tab {
        font-size: 22px;
        font-weight: 600;
        margin-right: 15px;
        padding-bottom: 5px;
        margin: 0 15px 10px 0;
        display: inline-block;
        border-bottom: 2px solid transparent;
    }
    .login-html .sign-in:checked + .tab
     {
        color: #fff;
        border-color: #eeeeee;
    }
    
    .login-html .sign-up:checked + .tab{
        color: #134b70;
        border-color: #134b70;
    }
    .login-form {
        min-height: 345px;
        position: relative;
        perspective: 1000px;
        transform-style: preserve-3d;
    }
    .login-form .group {
        margin-bottom: 15px;
    }
    .login-form .group .label,
    .login-form .group .input,
    .login-form .group .button1,
    .login-form .group .button2 {
        width: 100%;
        color: black;
        display: block;
    }
    .login-form .group .input,
    .login-form .group .button1,
    .login-form .group .button2{
        border: none;
        padding: 15px 20px;
        border-radius: 25px;
        background:#E0E0E080;
        cursor: pointer;
    }
    .login-form .group input[data-type="password"] {
        text-security: circle;
        -webkit-text-security: circle;
    }
    .login-form .group .label {
        color: #9E9E9E;
        font-size: 15px;
    }
    .login-form .group .button1 {
        background: #eeeeee;
        font-size : 14px;
    }
    .login-form .group .button2 {
        background: #134b70;
        color: white;
        font-size : 14px;
    }
    
    .login-form .group label .icon {
        width: 15px;
        height: 15px;
        border-radius: 2px;
        position: relative;
        display: inline-block;
        background: rgba(255,255,255,.1);
    }
    .login-form .group label .icon:before,
    .login-form .group label .icon:after {
        content: '';
        width: 10px;
        height: 2px;
        background: black;
        position: absolute;
        transition: all .2s ease-in-out 0s;
    }
    .login-form .group label .icon:before {
        left: 3px;
        width: 5px;
        bottom: 6px;
        transform: scale(0) rotate(0);
    }
    .login-form .group label .icon:after {
        top: 6px;
        right: 0;
        transform: scale(0) rotate(0);
    }
    .login-form .group .check:checked + label {
        color: #fff;
    }
    .login-form .group .check:checked + label .icon {
        background: #eeeeee;
    }
    .login-form .group .check:checked + label .icon:before {
        transform: scale(1) rotate(45deg);
    }
    .login-form .group .check:checked + label .icon:after {
        transform: scale(1) rotate(-45deg);
    }
    .login-html .sign-in:checked + .tab + .sign-up + .tab + .login-form .sign-in-htm {
        transform: rotate(0);
    }
    .login-html .sign-up:checked + .tab + .login-form .sign-up-htm {
        transform: rotate(0);
    }
    .hr {
        height: 2px;
        margin: 60px 0 50px 0;
        background: rgba(255,255,255,.2);
    }
    .foot-lnk {
        text-align: center;
    }
    
    
    #idDuplicateCheck{
            display: inline-block;
            padding: 3px 6px;
            font-size: 12px;
            color: #fff;
            background-color: #508c9b;
            border: none;
            border-radius: 25px; 
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            transition: background-color 0.3s ease;
    }
    #idDuplicateCheck:hover{
        background-color: #134b70;
    }
</style>
</head>
<body>
    <div>
        <a href="http://localhost:8080/ehr/main/index.do"><img src="/ehr/resources/img/logo1.png" alt="logo" id="logo"></a>
    </div>
    
    <section>
           <div class="login-wrap">
             
              <div class="login-html">
                <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
                <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
                <div class="login-form">
                  <div class="sign-in-htm">
                    <div class="group">
                      <label for="member_id" class="label">아이디</label>
                      <input id="usemember_idrId" type="text" class="input" name="member_id">
                    </div>
                    <div class="group">
                        <label for="password" class="label">비밀번호</label>
                        <input id="password" type="password" class="input" data-type="password" name="password">
                    </div>  
                    <div class="group">
                      <input id="check" type="checkbox" class="check" checked>
                      <label for="check"><span class="icon"></span> Keep me Signed in</label>
                    </div>
                    <div class="group">
                      <button class="button1" type="button" value="로그인" id="loginInfoBtn">로그인</button>
                    </div>
                    <div class="hr"></div>
                    <div class="foot-lnk">
                      <a href="http://localhost:8080/ehr/member/findIdPw.do">아이디나 비밀번호를 잊으셨나요?</a>
                    </div>
                  </div>
                  
                  
        
                   <div class="sign-up-htm">
			        <div class="group">
			            <label for="userIdSignUp" class="label">아이디</label>
			            <input id="userIdSignUp" type="text" class="input">
			            <button id="idDuplicateCheck" type="button">아이디 중복 체크</button>
			        </div>
			        <div class="group">
			            <label for="pass1" class="label">비밀번호</label>
			            <input id="pass1" type="password" class="input" data-type="password">
			        </div>
			        <div class="group">
			            <label for="pass2" class="label">비밀번호 재입력</label>
			            <input id="pass2" type="password" class="input" data-type="password">
			        </div>
			        <div class="group">
			            <label for="email" class="label">이메일</label>
			            <input id="email" type="text" class="input">
			        </div>
			        <div class="group">
			            <button id="doSave" class="button2" type="button">회원가입</button>
			        </div>
			    </div>

                  
    
                </div>
              </div>
            </div>
    </section>


   <script>
   
   document.addEventListener('DOMContentLoaded', (event) => {
       const signInRadio = document.getElementById('tab-1');
       const signUpRadio = document.getElementById('tab-2');
       const loginHtml = document.querySelector('.login-html');

       signInRadio.addEventListener('change', () => {
           loginHtml.classList.remove('white-background');
       });

       signUpRadio.addEventListener('change', () => {
           loginHtml.classList.add('white-background');
       });
   });

   
   
   </script>
    

</body>
</html>