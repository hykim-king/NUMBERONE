<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>안전뉴스 상세보기</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        h1 {
            font-size: 24px;
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
    <h1 id="newsTitle">${news.newsTitle}</h1>
    <div class="metadata">
        <span id="writer">작성자: ${news.newsWriter}</span> |
        <span id="regDate">작성일시: ${news.newsRegDt}</span>
    </div>
    <div class="content">
        <p id="newsContent">${news.newsContext}</p>
    </div>
    <a href="/ehr/news" class="back-button">목록</a>
</body>
</html>
