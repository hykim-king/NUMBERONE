<%--
/**
    Class Name: 
    Description:
    Author:user
    Modification information
    
    수정일     수정자      수정내용
    -----   -----  -------------------------------------------
    2024. 7. 19        최초작성 
    
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
<title>Insert title here</title>
<style>
    body {
        margin: 0;
        padding: 0;
        min-height: 130vh;
        display: flex;
        flex-direction: column;
    }

    main {
        flex: 1;
    }

    footer {
        background-color: #201e43;
        position: relative;
        bottom: 0;
        left: 0;
        width: 100%;
        margin-top: auto;
    }

    .footer {
        color: #fff;
        display: flex;
        justify-content: center;
        align-items: flex-start;
        flex-wrap: wrap;
        width: 100%;
    }
    
    .footer-column {
        max-width: 300px;
        margin: 20px 50px 20px 50px;
    }
    
    .footer-column strong {
        color: white;
        font-size: 13px;
    }
    
    .footer-column h3 {
        font-size: 12px;
        margin-bottom: 10px;
    }
    
    .footer-column p, .footer-column a {
        font-size: 11px;
        color: #aaa;
        line-height: 1.8;
        text-decoration: none;
    }
    
    .footer-column a:hover {
        text-decoration: underline;
    }
    
    .footer-bottom {
        text-align: center;
        background-color: #201e43;
        width: 100%;
    }
    
    .footer-bottom:before {
        content: "";
        display: inline-block;
        width: 90%; 
        border-top: 2px solid #757575;
    }
    
    .footer-bottom h1 {
        font-family: "Hahmlet", serif;
        font-optical-sizing: auto;
        font-style: normal;
        color: white;
        padding-top: 15px;
        font-size: 20px;
        position: relative;
        left: -465px;
    }
    
    .footer-bottom a {
        color: #aaa;
        margin: 0 15px;
        text-decoration: none;
        font-size: 11px;
        position: relative;
        right: -460px;
        top: -25px;
    }
    
    .footer-bottom a:hover {
        text-decoration: underline;
    }

</style>
</head>
<body>


<footer>
    <div class="footer">
        <div class="footer-column">
            <strong>Real-Time Alerts for Your Safety</strong>
            <p>Always be prepared with real-time updates and critical alerts. Our platform ensures you have the latest information to stay safe during emergencies. <a href="#">Watch</a></p>
        </div>
        <div class="footer-column">
             <strong>Instant Forecasts and Safety Tips</strong>
            <p>Your safety is our priority. Get immediate disaster forecasts and essential safety tips to protect yourself and your family. <a href="#">Watch</a></p>
        </div>
        <div class="footer-column">
            <strong>Timely Warnings to Stay Ahead</strong>
            <p>Stay ahead of disasters with our comprehensive platform. Receive timely warnings and crucial information to help you navigate any crisis. <a href="#">Watch</a></p>
        </div>
    </div>
    
    <div class="footer-bottom">
        <h1>재난안전포털 NO.1</h1>
        <a href="#">About</a>
        <a href="#">Help</a>
        <a href="#">Legal</a>
    </div>
</footer>

</body>
</html>
