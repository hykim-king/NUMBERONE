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
	<title>로그인/회원가입</title>
	<link rel="icon" type="image/png" href="/ehr/resources/img/favicon.ico">
    <script src="${CP}/resources/js/jquery-1.11.1.min.js"></script>
	<%-- jquery --%>
	<script src="${CP}/resources/js/jquery_3_7_1.js"></script>

	<%-- common.js --%>
	<script src="${CP}/resources/js/common.js"></script>
	
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@100..900&display=swap" rel="stylesheet">	
	
	
	<%-- sha256 --%>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/js-sha256/0.9.0/sha256.min.js"></script>
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
		    height: 800px;
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
	    #idDuplicateCheck:hover,  #nicknameDuplicateCheck:hover{
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
	
	<script>
	


	
	$(document).ready(function(){
	    console.log("document ready!");
	        
	    function sidoSet(){
	        
	    	    let locCode = 0;
	    	    let type = "GET";
	    	    let url = "http://localhost:8080/ehr/location/location";
	    	    let async = "true";
	    	    let dataType = "html";
	    	    
	    	    console.log("locCode:" + locCode);
	    	    
	    	    
	    	    
	    	        let params = {
	    	             "locCode" : locCode
	    	           };
	    	        
	    	             PClass.pAjax(url,params,dataType,type,async,function(data){
	    	                 
	    	               var optionSidoData = JSON.parse(data);
	    	            
	    	               optionSidoData.forEach(function(item){
	    	                    $("#sido").append('<option value="' + item.locCode + '">' + item.sido + '</option>');         
	    	            });
	    	         
	    	       }); 
	    	    
	    	    
	        
	    }
	    sidoSet();
	    
	    $("#search").on("click",function(event){
	        //이벤트 버블링 방지
	        event.preventDefault();
	        console.log("search click");
	        /* doRetrieve(1); */ 
	    });
	    
	});//--document end
	
	
	function sigunguSet(){
	    
	    let locCode = $("#sido option:selected").val();
	    let type = "GET";
	    let url = "http://localhost:8080/ehr/location/location_sigungu";
	    let async = "true";
	    let dataType = "html";
	    
	    console.log("locCode:" + locCode);
	    
	    
	         $("#sigungu").empty();
	         $("#sigungu").append('<option value="">' + "시군구선택" + '</option>');
	         $("#eupmyeondong").empty();
	         $("#eupmyeondong").append('<option value="">' + "읍면동선택" + '</option>');
	         
	    
	    
	        let params = {
	             "locCode" : locCode
	           };
	        
	             PClass.pAjax(url,params,dataType,type,async,function(data){
	                 
	               var optionSigunguData = JSON.parse(data);
	            
	               optionSigunguData.forEach(function(item){
	                    $("#sigungu").append('<option value="' + item.locCode + '">' + item.sigungu + '</option>');         
	            });
	         
	       }); 
	    
	    
	}//--sigunguSet end
	
	function eupmyeondongSet() {
	    
	    let locCode = $("#sigungu option:selected").val();
	    let type = "GET";
	    let url = "http://localhost:8080/ehr/location/location_eupmyeondong";
	    let async = "true";
	    let dataType = "html";
	    
	    console.log("locCode:" + locCode);
	    
	    if("" === locCode){
	        $("#eupmyeondong").empty();
	        $("#eupmyeondong").append('<option value="">' + "읍면동선택" + '</option>');
	   }else{
	   
	       let params = {
	            "locCode" : locCode
	          };
	       
	            PClass.pAjax(url,params,dataType,type,async,function(data){
	                
	              var optionEupmyeondongData = JSON.parse(data);
	           
	              optionEupmyeondongData.forEach(function(item){
	                   $("#eupmyeondong").append('<option value="' + item.locCode + '">' + item.eupmyeondong + '</option>');         
	           });
	              
	              
	        
	      }); 
	   
	   }
	    
	}//--eupmyeondongSet end
	
	
	
	
	
	let idDuplicatedClick = 0;
	
	$(document).ready(function() {
	    console.log("document ready!");
	
	    // 아이디 중복 체크
	    $("#idDuplicateCheck").on("click", function(event) {
	        event.preventDefault();
	        console.log("idDuplicateCheck click");
	        idDuplicateCheck();
	    });
	
	    function idDuplicateCheck() {
	        console.log("idDuplicateCheck()");
	
	        let userIdInput = $("#memberIdSignUp").val();
	
	        if (!userIdInput) {
	            alert("아이디를 입력 하세요.");
	            $("#userIdSignUp").focus();
	            return;
	        }
	
	       
	        let params = {
	            "memberId": userIdInput
	        };
	
	        $.ajax({
	            url: '/ehr/member/idDuplicateCheck.do',
	            type: "GET",
	            dataType: "json",
	            data: params,
	            success: function(data) {
	                if (data) {
	                    try {
	                        if (data.messageId === 1) {
	                            alert(data.messageContents); // 사용불가
	                            $("#memberIdSignUp").focus();
	                            idDuplicatedClick = 0;
	                        } else {
	                            alert(data.messageContents); // 사용가능
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
	
	    // 닉네임 중복 체크
	    $("#nicknameDuplicateCheck").on("click", function(event) {
	        event.preventDefault();
	        console.log("nicknameDuplicateCheck click");
	        nicknameDuplicateCheck();
	    });
	
	    function nicknameDuplicateCheck() {
	        console.log("nicknameDuplicateCheck()");
	
	        let nicknameInput = $("#nicknameSignUp").val();
	        console.log("nicknameInput()"+nicknameInput);
	        
	        if (!nicknameInput) {
	            alert("닉네임을 입력 하세요.");
	            $("#nicknameSignUp").focus();
	            return;
	        }
	
	        
	        let params = {
	            "nickname": nicknameInput
	        };
	
	        $.ajax({
	            url:'/ehr/member/nicknameDuplicateCheck.do',
	            type: "GET",
	            dataType: "json",
	            data: params,
	            success: function(data) {
	                if (data) {
	                    try {
	                        if (data.messageId === 1) {
	                            alert(data.messageContents); // 사용불가
	                            $("#nicknameSignUp").focus();
	                        } else {
	                            alert(data.messageContents); // 사용가능
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
	    $("#doSave").on("click", function(event) {
	        event.preventDefault();
	        console.log("doSave click");
	        doSave();
	    });
	    
	    
	    
	    function doSave() {
	        console.log("doSave()");
	        
	        
	        if (!$("#nameSignUp").val()) {
	            alert("이름을 입력 하세요.");
	            $("#nameSignUp").focus();
	            return;
	        }
	        
	        if (!$("#nicknameSignUp").val()) {
	            alert("닉네임을 입력 하세요.");
	            $("#nicknameSignUp").focus();
	            return;
	        }
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
	
	        if ($("#locCode").val()) {
	            alert("위치 설정을 해주세요.");
	            $("#locCode").focus();
	            return;
	        }
	
	
	        
	        function callServer() {
	           
	        	// 암호화
	            let pw = $("#pass1").val();
	            let password = sha256(pw);
	        	
	        	const member = new Member(  $("#nameSignUp").val(),
	            	                        $("#nicknameSignUp").val(), 
	            	                        $("#userIdSignUp").val(),
	            	                        password,
	            	                        parseInt($("#eupmyeondong option:selected").val()),
	            	                        "N"
	            ); 
	            
	            
	        console.log(member);
	
	        // 비동기 통신
	        console.log($("#nameSignUp").val());
	        console.log($("#nicknameSignUp").val());
	        console.log($("#userIdSignUp").val());
	        console.log(password);
	        console.log(typeof(parseInt($("#eupmyeondong option:selected").val())));
	        
	        let url = "/ehr/member/doSave.do";
	
	
	        if (!confirm("등록 하시겠습니까?")) return;
	
	        $.ajax({
	            url: '/ehr/member/doSave.do',
	            type: "POST",
	            contentType: "application/json",
	            dataType: "json",
	            data: JSON.stringify(member),
	            success: function(data) {
	                if (data && typeof data.messageId !== "undefined") {
	                    if (data.messageId === 1) {
	                        alert(data.messageContents); // 등록 실패
	                    } else {
	                        alert(data.messageContents); // 등록 성공
	                        location.href = "/ehr/main/index.do";
	                    }
	                } else {
	                    console.error("Unexpected data format.", data);
	                    alert("서버에서 예상하지 못한 데이터를 받았습니다.");
	                }
	            },
	            error: function(xhr, status, error) {
	                console.error("AJAX Error:", status, error);
	                alert("서버 요청에 실패했습니다.");
	            }
	        });
	    }
	        callServer();
	    }
	});
	
	
	function isEmpty(value) {
	    if (value == null || typeof value !== 'string') {
	        return true; // value가 null, undefined, 혹은 문자열이 아닌 경우
	    }
	    return value.trim() === '';
	}
	
	
	
	   document.addEventListener("DOMContentLoaded", function(){
	        console.log("DOMContentLoaded");
	        //로그인
	        const loginInfoBtn = document.querySelector("#loginInfoBtn");
	        console.log("loginInfoBtn",loginInfoBtn);
	        
	        //아이디: userId
	        const memberIdInput  = document.querySelector("#memberId");
	        //비밀번호: passowrd
	        const passwordInput  = document.querySelector("#password"); 
	        
	        loginInfoBtn.addEventListener("click",function(event){
	            console.log("loginInfoBtn click",event);
	            event.stopPropagation();
	             
	            login(); 
	        });
	        


	        function login() {
	            console.log("login()");
	            
	            let memberId = $("#memberId").val(); 
	            let password = $("#password").val(); 
	            
	            console.log("memberId:", memberId);
	            console.log("password:", password);
	            
	            if (isEmpty(memberId)) {
	                alert('아이디를 입력 하세요.');
	                $("#memberId").focus();
	                return;
	            }

	            if (isEmpty(password)) {
	                alert('비밀번호를 입력 하세요.');
	                $("#password").focus();
	                return;
	            }
	            
	            $.ajax({
	                url: '/ehr/member/login.do',
	                type: "POST",
	                dataType: "json",
	                data: {
	                    memberId: memberId,
	                    password: password
	                },
	                success: function(data) {
	                    if (data) {
	                        try {
	                            if (data.messageId === 10) {
	                                alert(data.messageContents);
	                                $("#memberId").focus();
	                            } else if (data.messageId === 20) {
	                                alert(data.messageContents);
	                                $("#password").focus();
	                            } else if (data.messageId === 30) {
	                                alert(data.messageContents);
	                                
	                                //로그인 성공시 
	                                 $("#loginBtn").text("로그아웃");
	                                 $("#loginBtn").attr("href", "/ehr/member/logout.do");
	                                window.location.href = "/ehr/main/index.do";
	                            } else {
	                                alert(data.messageContents);
	                            }
	                        } catch(e) {
	                            alert("data를 확인 하세요.");     
	                        }           
	                    }
	                },
	                error: function(xhr, status, error) {
	                    console.error("AJAX Error:", status, error);
	                    alert("로그인 처리 중 오류가 발생했습니다.");
	                }
	            });
	        }
	    });

	    // 빈 값 검사 함수
	    function isEmpty(value) {
	        return value === undefined || value === null || typeof value !== 'string' || value.trim() === '';
	    }
	
	
	
	
	

	        
	</script>
	
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
	                      <label for="memberId" class="label">아이디</label>
	                      <input id="memberId" type="text" class="input" name="member_id">
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
					            <form action="#" name="locationForm" class="row g-2 align-items-right" id="locationForm">
					                <div class="row g-3">
					                    <p>위치 설정</p>
					                    <select name="sido" class="form-select" id="sido" onchange="sigunguSet()">
					                        <option value="">시도선택</option>
					                    </select>
					
					                    <select name="sigungu" class="form-select" id="sigungu" onchange="eupmyeondongSet()">
					                        <option value="">시군구선택</option>
					                    </select>
					
					                    <select name="eupmyeondong" class="form-select" id="eupmyeondong">
					                        <option value="">읍면동선택</option>
					                    </select>
					                </div>
					                
					            </form>
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


</script>
	
	</body>
	</html>