<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <c:set var="CP" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <link rel="icon" type="image/png" href="/ehr/resources/images/favicon.ico">
    <%-- jquery --%>
	<script src="${CP}/resources/js/jquery_3_7_1.js"></script>
    <title>재난 문자 상세</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@100..900&display=swap" rel="stylesheet">  
	<link href="/ehr/resources/css/behavior.css" rel="stylesheet" />
    <style>
        body {
            font-family: 'Hahmlet', sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
        }
        .container {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            max-width: 800px;
            margin: auto;
        }
        h1 {
            font-size: 2rem;
            color: #003366;
        }
        .metadata {
            font-size: 14px;
            color: gray;
            margin-bottom: 20px;
        }
        .content {
            margin-top: 20px;
            line-height: 1.6;
        }
        .back-button {
            display: inline-block;
            text-decoration: none;
            padding: 10px 15px;
            background-color: #508c9b;
            color: white;
            border-radius: 5px;
            font-size: 1rem;
            margin-top: 20px;
            text-align: center;
        }
        .back-button:hover {
            background-color: #134b70;
        }
        .content p {
            margin-bottom: 15px;
        }
         .hidden {
            display: none;
        }
    </style>
</head>
<body>
    <%@ include file="/WEB-INF/views/main/header.jsp" %>
    <div class = "container">
    <h1 id="sender">재난 문자</h1>
    <div class="metadata">
        <span id="regDt">${msg.broadcastOrganization}</span>
    </div>
    <div class="content">
        <p id="broadcastArea">· 송출지역: ${msg.broadcastArea}</p>
        <p id="regDt">· 작성일: ${msg.msgRegDt}</p>
        <p id="disaterType">· 재난유형: ${msg.disasterType}</p>
        <p id="emergencyLevel">· 위험수준: ${msg.emergencyLevel}</p>
        <p id="context">${msg.messageContext}</p>
    </div>
    <div class ="">
        <button id="behaving" class="hidden">버튼</button>
        <button id="shelter" class="hidden"></button>
    </div>
    <a href="/ehr/disasterMsg/disasterMsg" class="back-button">목록</a>
    </div>
        <%@ include file="/WEB-INF/views/main/footer.jsp" %>
<script>
    const dType="${msg.disasterType}";
    if(dType!='기타'){
    	$("#behaving").removeClass("hidden");
    	$("#behaving").text("대처 요령 알아보기");
    	
    	$("#shelter").removeClass("hidden");
    	$("#shelter").text("대피소 알아보기");
    }else{
    	
    }
</script>
</body>
</html>
