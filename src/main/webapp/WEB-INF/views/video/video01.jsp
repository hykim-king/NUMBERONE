<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>침수</title>

<script>
    function navigateToCategory() {
        var selectBox = document.getElementById("categorySelect");
        var selectedValue = selectBox.options[selectBox.selectedIndex].value;
        if (selectedValue) {
            window.location.href = selectedValue;
        }
    }
</script>
<style>
    main {
        width: 100%;
        max-width: 800px;
        background-color: #F5F5F5;
        margin: 20px 0;
        padding: 20px;
        text-align: center;
    }

    h1, h2 {
        color: #333;
    }

    select {
        width: 200px;
        padding: 10px;
        margin: 20px 0;
        border: 1px solid #ddd;
        border-radius: 4px;
        font-size: 16px;
    }

    iframe {
        width: 100%;
        height: 500px;
        border: none;
    }
</style>
</head>
<body>
<%@ include file="header.jsp" %>

<main>
    <h1>훈련영상</h1>
    <h2>침수</h2>

    <!-- 드롭다운 메뉴 추가 -->
    <select id="categorySelect" onchange="navigateToCategory()">
        <option value="">카테고리 선택</option>
        <option value="http://localhost:8080/ehr/video/video01.do">침수</option>
        <option value="http://localhost:8080/ehr/video/video02.do">태풍</option>
        <option value="http://localhost:8080/ehr/video/video03.do">호우</option>
        <option value="http://localhost:8080/ehr/video/video04.do">낙뢰</option>
        <option value="http://localhost:8080/ehr/video/video05.do">폭염</option>
        <option value="http://localhost:8080/ehr/video/video06.do">대설</option>
        <option value="http://localhost:8080/ehr/video/video07.do">한파</option>
        <option value="http://localhost:8080/ehr/video/video08.do">지진</option>
        <option value="http://localhost:8080/ehr/video/video09.do">산사태</option>
        <option value="http://localhost:8080/ehr/video/video10.do">황사</option>
        <option value="http://localhost:8080/ehr/video/video11.do">테러</option>
        <option value="http://localhost:8080/ehr/video/video12.do">핵</option>
        <option value="http://localhost:8080/ehr/video/video13.do">화학</option>
        <option value="http://localhost:8080/ehr/video/video14.do">생물학</option>
        <option value="http://localhost:8080/ehr/video/video15.do">화재</option>
        <option value="http://localhost:8080/ehr/video/video16.do">폭발사고</option>
        <option value="http://localhost:8080/ehr/video/video17.do">원전사고</option>
        <option value="http://localhost:8080/ehr/video/video18.do">감염병</option>
    </select>

    <iframe 
        src="https://www.youtube.com/embed/DMW_RxrbOcc?si=qdoTOgIe294GWzKT" 
        title="YouTube video player" 
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
        referrerpolicy="strict-origin-when-cross-origin" 
        allowfullscreen>
    </iframe>
</main>

<%@ include file="footer.jsp" %>
</body>
</html>