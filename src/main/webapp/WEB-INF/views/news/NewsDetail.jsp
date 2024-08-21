<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <link rel="icon" type="image/png" href="/ehr/resources/images/favicon.ico">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@100..900&display=swap" rel="stylesheet">  
	<link href="/ehr/resources/css/behavior.css" rel="stylesheet" />
    <title>안전뉴스 상세보기</title>
    <style>
        body {
            font-family: "Nanum Gothic", sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            color: #333;
        }
        .container {
            width: 80%;
            max-width: 1000px;
            margin: 50px auto;
            padding: 30px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h1 {
            font-size: 2rem;
            color: #2c3e50;
            margin-bottom: 15px;
        }
        .metadata {
            font-size: 0.875rem;
            color: #7f8c8d;
            margin-bottom: 20px;
        }
        .content {
            line-height: 1.7;
            font-size: 1.1rem;
            color: #2c3e50;
        }
        .back-button {
            display: inline-block;
            text-decoration: none;
            padding: 12px 20px;
            background-color: #508c9b;
            color: #fff;
            border-radius: 5px;
            font-size: 1rem;
            font-weight: bold;
            transition: background-color 0.3s ease;
            margin-top: 20px;
        }
        .back-button:hover {
            background-color: #134b70;
        }
    </style>
</head>
<body>
    <%@ include file="/WEB-INF/views/main/header.jsp" %>
    <div class = "container">
    <h1 id="newsTitle">${news.newsTitle}</h1>
    <div class="metadata">
        <span id="writer">작성자: ${news.newsWriter}</span> |
        <span id="regDate">작성일시: ${news.newsRegDt}</span>
    </div>
    <div class="content">
        <p id="newsContent">${news.newsContext}</p>
    </div>
    <a href="/ehr/news" class="back-button">목록</a>
    </div>
     <%@ include file="/WEB-INF/views/main/footer.jsp" %>
</body>
</html>
