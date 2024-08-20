<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/ehr/resources/images/favicon.ico">
<title>훈련영상</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@100..900&display=swap" rel="stylesheet">
<link href="/ehr/resources/css/behavior.css" rel="stylesheet" />
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
         margin : 0 auto;
        padding: 20px;
        text-align: center;
    }

    h1{
        color: #201e4b;
    }
    h2 {
        color: #134b70;
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
  <%@ include file="/WEB-INF/views/main/header.jsp" %> 
  <main>
		<h1>훈련영상</h1>
		<h2>산사태</h2>
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
		<iframe width="560" height="315" 
		src="https://www.youtube.com/embed/Zs-LYLld5Ao?si=lhtyWI8yhII3BWjs" 
		title="YouTube video player" frameborder="0" 
		allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
		referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
</main>
   <%@ include file="/WEB-INF/views/main/footer.jsp" %>
</body>
</html>