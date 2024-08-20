<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <link rel="icon" type="image/png" href="/ehr/resources/images/favicon.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>안전뉴스</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            margin: 20px;
        }
        .table {
            margin-top: 20px;
        }
        .header-title {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

<div class="container">
    <h2 class="header-title text-center">안전뉴스</h2>
    
    <form action="search" method="post">
        <div class="form-row align-items-end">
            <div class="form-group col-md-3">
                <label for="basicSearch">기본검색</label>
                <select id="basicSearch" name="basicSearch" class="form-control">
                    <option>제목</option>
                    <option>내용</option>
                </select>
            </div>
            <div class="form-group col-md-3">
                <label for="startDate">등록일</label>
                <input type="date" name="startDate" class="form-control" id="startDate" value="2024-08-16">
            </div>
            <div class="form-group col-md-3">
                <label for="endDate">~</label>
                <input type="date" name="endDate" class="form-control" id="endDate" value="2024-08-18">
            </div>
            <div class="form-group col-md-3">
                <button type="submit" class="btn btn-primary">검 색</button>
            </div>
        </div>
    </form>

    <div class="mt-3">
        <span id ="total">전체 102 건</span>
    </div>
    
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>등록일시</th>
            </tr>
        </thead>
        <tbody id ="newsContents">
            
        </tbody>
    </table>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
