<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>훈련 영상</title>
    <style>

        main {
            font-family: "Hahmlet", serif;
            font-optical-sizing: auto;
            font-style: normal;
            font-weight: bold;
            width: 80%;
            max-width: 800px;
            margin: 20px auto;
        }
        main table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        main td {
            padding: 15px;
            text-align: center;
            border: 1px solid #ddd;
        }
        main td a {
            text-decoration: none;
            color: #201e43;
            display: block;
        }
        main td a:hover {
            text-decoration: underline;
        }
        

    </style>
</head>
<body>
    <main>
        <table>
            
            <tbody>
                <tr>
                    <td><a href="http://localhost:8080/ehr/video/video01.do">침수</a></td>
                    <td><a href="http://localhost:8080/ehr/video/video02.do">태풍</a></td>
                    <td><a href="http://localhost:8080/ehr/video/video03.do">호우</a></td>
                </tr>
                <tr>
                    <td><a href="http://localhost:8080/ehr/video/video04.do">낙뢰</a></td>
                    <td><a href="http://localhost:8080/ehr/video/video05.do">폭염</a></td>
                    <td><a href="http://localhost:8080/ehr/video/video06.do">대설</a></td>
                </tr>
                <tr>
                    <td><a href="http://localhost:8080/ehr/video/video07.do">한파</a></td>
                    <td><a href="http://localhost:8080/ehr/video/video08.do">지진</a></td>
                    <td><a href="http://localhost:8080/ehr/video/video09.do">산사태</a></td>
                </tr>
                <tr>
                    <td><a href="http://localhost:8080/ehr/video/video10.do">황사</a></td>
                    <td><a href="http://localhost:8080/ehr/video/video11.do">테러</a></td>
                    <td><a href="http://localhost:8080/ehr/video/video12.do">핵</a></td>
                </tr>
                <tr>
                    <td><a href="http://localhost:8080/ehr/video/video13.do">화학</a></td>
                    <td><a href="http://localhost:8080/ehr/video/video14.do">생물학</a></td>
                    <td><a href="http://localhost:8080/ehr/video/video15.do">화재</a></td>
                </tr>
                <tr>
                    <td><a href="http://localhost:8080/ehr/video/video16.do">폭발사고</a></td>
                    <td><a href="http://localhost:8080/ehr/video/video17.do">원전사고</a></td>
                    <td><a href="http://localhost:8080/ehr/video/video18.do">감염병</a></td>
                </tr>
            </tbody>
        </table>
    </main>
    <%@ include file="footer.jsp" %>
</body>
</html>
