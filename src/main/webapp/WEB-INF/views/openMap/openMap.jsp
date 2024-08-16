<%--
/**
    Class Name:
    Description:
    Author: Jinseo
    Modification information
    
    수정일     수정자      수정내용
    -----   -----  -------------------------------------------
    2024. 8. 13        최초작성 
    
    author eclass NUMBERONE
    since 2020.11.23
    Copyright (C) by KandJang All right reserved.
*/
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%-- bootstrap --%>
<link rel="stylesheet" href="${CP}/resources/css/bootstrap.css">
<%-- jquery --%>
<script src="${CP}/resources/js/jquery_3_7_1.js"></script>
<script src="https://code.jquery.com/jquery-migrate-1.4.1.min.js"></script>
<%-- common.js --%>
<script src="${CP}/resources/js/common.js"></script>
<%-- kakao Map --%>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=caeb693362f61c09ef1fc4e0b640aaf4"></script>
<title>Insert title here</title>
<style>
    /* 지도 크기 지정 */
    #map {
        width: 100%;
        height: 650px; /* 원하는 높이로 조정 */
    }
</style>
</head>
<body>
    
    <div id="map"></div>
    
    <script>
        function openKakaoMap(lat, lon) {
            var mapContainer = document.getElementById('map');
            var mapOption = {
                center: new kakao.maps.LatLng(lat, lon),
                level: 3
            };
            
            // 지도 생성
            var map = new kakao.maps.Map(mapContainer, mapOption);
            
            // 마커 추가
            var markerPosition = new kakao.maps.LatLng(lat, lon);
            var marker = new kakao.maps.Marker({
                position: markerPosition
                
            });
            marker.setMap(map); // 지도에 마커 추가
        } // -- openKakaoMap end

        // JSP에서 전달된 LAT, LON 변수를 사용
        openKakaoMap(${LAT},${LON});
    </script>    
</body>
</html>