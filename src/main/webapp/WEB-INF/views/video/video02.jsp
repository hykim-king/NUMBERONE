<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>태풍</title>

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
    select {
        width: 200px; /* 드롭다운 메뉴의 너비를 200px로 설정 */
    }
</style>
</head>
<body>
<%@ include file="header.jsp" %>
<h1>훈련영상</h1>
<h2>태풍</h2>

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

<iframe width="900" height="500" 
src="https://www.youtube.com/embed/XS6DvHI7ZYU?si=Hg-4_zExQY7Y0l4U" 
title="YouTube video player" frameborder="0" 
allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
referrerpolicy="strict-origin-when-crosvideo01.jsps-origin" allowfullscreen></iframe>
<%@ include file="footer.jsp" %>
</body>
</html>