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
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="CP" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>find</title>
<link rel="icon" type="image/png" href="/ehr/resources/images/favicon.ico">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@100..900&display=swap" rel="stylesheet">  
    <script src="${CP}/resources/js/jquery-1.11.1.min.js"></script>
    <script src="${CP}/resources/js/jquery_3_7_1.js"></script>
<style>
    * {
        font-family: "Hahmlet", serif;
        font-optical-sizing: auto;
        font-style: normal;
    }
    body {
        margin: 0;
        color: #9E9E9E;
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
    
    .find-wrap {
        width: 100%;
        margin: 0 auto;
        max-width: 525px;
        position: relative;
        top: 75px; 
        box-shadow: 0 12px 15px 0 rgba(0,0,0,.24),0 17px 50px 0 rgba(0,0,0,.19);
    }
    .find-html {
        width: 100%;
        height: 500px;
        position: absolute;
        padding: 80px;
        background-color: #134b70;
        border : 2px solid #E0E0E0;
        border-radius: 5px;
    }
    .find-html.white-background {
        background-color: #FAFAFA;
    }
    .find-html .find-id-htm,
    .find-html .find-pw-htm {
        top: 25px;
        left: 0;
        right: 0;
        bottom: 0;
        position: absolute;
        transform: rotateY(180deg);
        backface-visibility: hidden;
        transition: all .4s linear;
    }
    .find-html .findId,
    .find-html .findPw,
    .find-html .group .check {
        display: none;
    }
    .find-html .tab,
    .find-html .group .label,
    .find-html .group .button1,
    .find-html .group .button2 {
        text-transform: uppercase;
    }
    .find-html .tab {
        font-size: 22px;
        font-weight: 600;
        margin-right: 15px;
        padding-bottom: 5px;
        margin: 0 15px 10px 0;
        display: inline-block;
        border-bottom: 2px solid transparent;
    }
    .find-html .findId:checked + .tab
    {
        color: white;
        border-color: #eeeeee;
    }
    
    .find-html .findPw:checked + .tab {
        color:#134b70;
        border-color: #134b70;
    }
    .findId-form {
        min-height: 345px;
        position: relative;
        perspective: 1000px;
        transform-style: preserve-3d;
    }
    .findId-form .group {
        margin-bottom: 15px;
    }
    .findId-form .group .label,
    .findId-form .group .input,
    .findId-form .group .button1,
    .findId-form .group .button2 {
        width: 100%;
        color: black;
        display: block;
        
    }
    .findId-form .group .input,
    .findId-form .group .button1,
     .findId-form .group .button2{
        border: none;
        padding: 15px 20px;
        border-radius: 25px;
        background:#E0E0E080;
        font-weight: 600;
    }
    .findId-form .group input[data-type="password"] {
        text-security: circle;
        -webkit-text-security: circle;
    }
    .findId-form .group .label {
        color: #aaa;
        font-size: 15px;
        padding:6px;
    }
    .findId-form .group .button1 {
        background: #eeeeee;
        font-size : 16px;
    }
    .findId-form .group .button2{
        background: #134b70;
        color: white;
        font-size : 16px;
    }
    .findId-form .group label .icon {
        width: 15px;
        height: 15px;
        border-radius: 2px;
        position: relative;
        display: inline-block;
        background: rgba(255,255,255,.1);
    }
    .findId-form .group label .icon:before,
    .findId-form .group label .icon:after {
        content: '';
        width: 10px;
        height: 2px;
        background: black;
        position: absolute;
        transition: all .2s ease-in-out 0s;
    }
    .findId-form .group label .icon:before {
        left: 3px;
        width: 5px;
        bottom: 6px;
        transform: scale(0) rotate(0);
    }
    .findId-form .group label .icon:after {
        top: 6px;
        right: 0;
        transform: scale(0) rotate(0);
    }
    .findId-form .group .check:checked + label {
        color: #fff;
    }
    .findId-form .group .check:checked + label .icon {
        background: #eeeeee;
    }
    .findId-form .group .check:checked + label .icon:before {
        transform: scale(1) rotate(45deg);
    }
    .findId-form .group .check:checked + label .icon:after {
        transform: scale(1) rotate(-45deg);
    }
    .find-html .findId:checked + .tab + .findPw + .tab + .findId-form .find-id-htm {
        transform: rotate(0);
    }
    .find-html .findPw:checked + .tab + .findId-form .find-pw-htm {
        transform: rotate(0);
    }

    .foot-lnk {
        position:relative;
        top:600px;
        text-align: center;
    }
</style>


</head>
<body>
    <div>
        <a href="/ehr/main/index.do"><img src="/ehr/resources/images/logo1.png" alt="logo" id="logo"></a>
    </div>
    
<section>
        <div class="find-wrap">
            <div class="find-html">
                <input id="tab-1" type="radio" name="tab" class="findId" checked>
                <label for="tab-1" class="tab">아이디 찾기</label>
                <input id="tab-2" type="radio" name="tab" class="findPw">
                <label for="tab-2" class="tab">비밀번호 초기화</label>
                <div class="findId-form">
                    <div class="find-id-htm">
                        <div class="group">
                            <label for="userName" class="label">이름</label>
                            <input id="userName" type="text" class="input">
                            <label for="userEmail" class="label">이메일</label>
                            <input id="userEmail" type="text" class="input">
                        </div>
                        <div class="group">
                            <button class="button1" type="button" onclick="findMemberId()" id="findMemberId">아이디 찾기</button>
                        </div>
                        <div class="result" id="result"></div>
                    </div>
                    <div class="find-pw-htm">
                        <div class="group">
                            <label for="userEmail2" class="label">이메일</label>
                            <input id="userEmail2" type="text" class="input">
                        </div>
                        <div class="group">
                            <label for="memId" class="label">아이디</label>
                            <input id="memId" type="text" class="input">
                        </div>
                        <div class="group">
                            <button class="button2" type="button" onclick="resetPassword()">비밀번호 초기화</button>
                        </div>
                    </div>
                </div> <!-- findId-form end -->
            </div> <!-- find-html end -->
        </div>  <!-- find-wrap end -->
        <div class="foot-lnk">
            <a href="/ehr/member/signInUp.do">로그인 화면으로 돌아가기</a>
        </div>
    </section>

    <script>
        document.addEventListener('DOMContentLoaded', (event) => {
            const findIdRadio = document.getElementById('tab-1');
            const findPwRadio = document.getElementById('tab-2');
            const findHtml = document.querySelector('.find-html');

            findIdRadio.addEventListener('change', () => {
                findHtml.classList.remove('white-background');
            });

            findPwRadio.addEventListener('change', () => {
                findHtml.classList.add('white-background');
            });
        });

        function findMemberId() {
            
            const userNameInput = document.getElementById('userName');
            const emailInput = document.getElementById('userEmail');
            const resultDiv =document.getElementById('result');
            if (isEmpty(userNameInput.value)) {
                alert("이름을 입력하세요.");
                userNameInput.focus();
                return;
            }

            if (isEmpty(emailInput.value)) {
                alert("이메일을 입력하세요.");
                emailInput.focus();
                return;
            }

            $.ajax({
                type: 'POST',
                url: '/ehr/member/findMemberId.do',
                data: {
                    name: userNameInput.value,
                    email: emailInput.value
                },
                success: function(response) {
                	console.log(response);
                	if (response !== "") {
                	    resultDiv.innerHTML = "당신의 아이디는: " + response + " 입니다.";
                	} else {
                	    resultDiv.innerHTML = "해당 정보와 일치하는 아이디가 없습니다.";
                	}
                    
                },
                error: function() {
                	alert('찾을 수 없습니다.');
                }
            });
        }
        
        function resetPassword(){
        	const memIdInput = document.getElementById('memId');
            const userEmail2nput = document.getElementById('userEmail2');
            console.log(memIdInput,userEmail2nput);
            
            if (isEmpty(memIdInput.value)) {
                alert("아이디를 입력하세요.");
                userIdInput.focus();
                return;
            }

            if (isEmpty(userEmail2nput.value)) {
                alert("이메일을 입력하세요.");
                userEmail2nput.focus();
                return;
            }
            
            $.ajax({
                type: 'POST',
                url: '/ehr/member/resetPassword.do',
                data: {
                	memberId: memIdInput.value,
                    email: userEmail2nput.value
                },
                success: function(response) {
                	if(""!=response ){
                		alert(response);
                	}else{
                		alert("오류발생");
                	}
                    
                },
                error: function() {
                	alert("오류발생");
                }
            });
        }

        function isEmpty(value) {
            return value === null || value.trim() === "";
        }
    </script>
</body>
</html>
