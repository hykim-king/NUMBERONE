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
<title>로그인/회원가입</title>
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
    
    
    
	    
	.login-wrap.signup-active {
	    height: 800px; /* Sign Up을 선택할 때 높이를 증가시킴 */
	}
	
	.login-html {
	    transition: height 0.4s ease;
	}
	
	.login-html.signup-active {
	    height: 900px;
	     
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
    
    
    #idDuplicateCheck , #nicknameDuplicateCheck{
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
    
    

	select {
	    width: 70%;
	    padding: 13px 15px;
	    border: none;
	    border-radius: 25px;
	    background: #E0E0E080;
	    color: black;
	    font-size: 15px;
	    margin-bottom: 15px;
	    cursor: pointer;
	}
	
	select:focus {
	    outline: none;
	    background: #eeeeee;
	}
	
	
	option {
	    background: #F5F5F5;
	    color: black;
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
                      <input id="member_id" type="text" class="input" name="member_id">
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
                        <label for="nameSignUp" class="label">이름</label>
                        <input id="nameSignUp" type="text" class="input">
                    </div>
                    <div class="group">
                        <label for="nicknameSignUp" class="label">닉네임</label>
                        <input id="nicknameSignUp" type="text" class="input">
                        <button id="nicknameDuplicateCheck" type="button">닉네임 중복 체크</button>
                    </div>
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
                    
                    <div>
                        <label  style="display:block; color:#9e9e9e; font-size:15px">위치 설정</label>
                        <select id="city" name="city">
                            <option value="">광역시도 선택</option>
                            <option value="seoul">서울특별시</option>
                        </select>
                        
                        <select id="district" name="district" disabled>
                            <option value="">시군구 선택</option>
                        </select>
                        
                        <select id="neighborhood" name="neighborhood" disabled>
                            <option value="">읍면동 선택</option>
                        </select>
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
	    const loginWrap = document.querySelector('.login-wrap');
	    const loginHtml = document.querySelector('.login-html');

	    signInRadio.addEventListener('change', () => {
	        loginHtml.classList.remove('white-background', 'signup-active');
	        loginWrap.classList.remove('signup-active');
	    });

	    signUpRadio.addEventListener('change', () => {
	        loginHtml.classList.add('white-background', 'signup-active');
	        loginWrap.classList.add('signup-active');
	    });
	});
   

   $(document).ready(function(){
       console.log("document ready!");
       
       let idDuplicatedClick = 0; // ID 중복 체크 클릭 여부 (1/0)
       
       // 아이디 중복 체크
       $("#idDuplicateCheck").on("click", function(event){
            event.preventDefault();
            console.log("idDuplicateCheck click");      
            idDuplicateCheck();
       });
       
       function idDuplicateCheck(){
           console.log("idDuplicateCheck()");

           let userIdInput = $("#userIdSignUp").val();
           
           if (!userIdInput) {
               alert("아이디를 입력 하세요.");
               $("#userIdSignUp").focus();
               return;
           }
           
           // 비동기 통신
           let url = "/ehr/signup/idDuplicateCheck.do";
           let params = { 
               "userId": userIdInput
           };
             
           $.ajax({
               url: url,
               type: "GET",
               dataType: "json",
               data: params,
               success: function(data) {
                   if (data) {
                       try {
                           console.log("message.messagId:" + data.messagId);
                           console.log("message.messageContents:" + data.messageContents);
                           
                           if (data.messagId === 1) { 
                               alert(data.messageContents); // 사용불가
                               $("#userIdSignUp").focus();
                               idDuplicatedClick = 0;
                           } else { // 사용가능
                               alert(data.messageContents);
                               idDuplicatedClick = 1;
                           }  
                       } catch (e) {
                           console.error("data가 null 혹은 undefined 입니다.", e);
                           alert("data가 null 혹은 undefined 입니다.");     
                       }           
                   }
               }
           });
       }
       
       // 등록: doSave
       $("#doSave").on("click", function(event){
           event.preventDefault();         
           console.log("doSave click");        
           doSave();
       });
       
       function doSave(){
           console.log("doSave()");
           
           // 필수 입력 처리
           if (!$("#userIdSignUp").val()) {
               alert("아이디를 입력 하세요.");
               $("#userIdSignUp").focus();
               return;
           }

           if (idDuplicatedClick === 0) {
               alert("아이디 중복 체크를 하세요.");
               $("#idDuplicateCheck").focus();
               return;
           }        
           
           if (!$("#nameSignUp").val()) {
               alert("이름을 입력 하세요.");
               $("#nameSignUp").focus();
               return;
           }
    
           if (!$("#pass1").val()) {
               alert("비밀번호를 입력 하세요.");
               $("#pass1").focus();
               return;
           }        
           
           if (!$("#pass2").val()) {
               alert("확인 비밀번호를 입력 하세요.");
               $("#pass2").focus();
               return;
           }         

           if ($("#pass2").val() !== $("#pass1").val()) {
               alert("비밀번호가 서로 다릅니다.");
               $("#pass2").focus();
               return;
           } 
           
           // 비동기 통신
           let url = "/ehr/signup/doSave.do";
           let params = { 
               "userId": $("#userIdSignUp").val(),
               "name": $("#nameSignUp").val(),
               "password": $("#pass1").val()
           };        
           
           if (!confirm("등록 하시겠습니까?")) return;
           
           $.ajax({
               url: url,
               type: "POST",
               dataType: "json",
               data: params,
               success: function(data) {
                   if (data) {
                       try {
                           if (data.messagId === 1) {
                               alert(data.messageContents); // 등록 실패
                           } else { 
                               alert(data.messageContents); // 등록 성공
                               location.href = "/ehr/main/index.do";
                           }  
                       } catch (e) {
                           console.error("data가 null 혹은 undefined 입니다.", e);
                           alert("data가 null 혹은 undefined 입니다.");     
                       }           
                   }
               }
           });
       }
   });
   
   
   
   </script>
    
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</body>
</html>