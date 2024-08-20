<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>재난 문자 상세</title>
    <link rel="stylesheet" href="styles.css"> <!-- CSS 파일 경로 -->
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        h1 {
            font-size: 28px;
            color: #003366;
        }
        .metadata {
            font-size: 14px;
            color: gray;
        }
        .content {
            margin-top: 20px;
            line-height: 1.6;
        }
        .back-button {
            margin-top: 20px;
            display: inline-block;
            text-decoration: none;
            padding: 10px 15px;
            background-color: #007BFF;
            color: white;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <h1 id="sender">재난 문자</h1>
    <div class="metadata">
        <span id="regDt">${msg.broadcastOrganization}</span>
    </div>
    <div class="content">
        <p id="broadcastArea">· 송출지역: ${msg.broadcastArea}</p>
        <p id="regDt">· 작성일: ${msg.msgRegDt}</p>
        <p id="context">${msg.messageContext}</p>
    </div>
    <a href="/ehr/disasterMsg/disasterMsg" class="back-button">목록</a>
</body>
</html>
