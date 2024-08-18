<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>재난문자 검색</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            margin: 20px;
        }
        .table {
            margin-top: 20px;
        }
    </style>
</head>
<body>

<div class="container">
    <h2 class="text-center">재난문자</h2>
    <form action="search" method="post">
        <div class="form-row align-items-end">
            
            <div class="form-group col-md-3">
                <label for="region">대상지역</label>
                <select id="region" name="region" class="form-control">
                    <option>시도선택</option>
                </select>
            </div>
            <div class="form-group col-md-3">
                <label for="subRegion">기본검색</label>
                <select id="subRegion" name="subRegion" class="form-control">
                    <option>시군구선택</option>
                </select>
            </div>
            <div class="form-group col-md-3">
                <label for="searchTerm">검색어</label>
                <input type="text" name="searchTerm" class="form-control" id="searchTerm" placeholder="제목">
            </div>
        </div>
        <div class="form-row align-items-end">
            <div class="form-group col-md-4">
                <label for="startDate">등록일</label>
                <input type="date" name="startDate" class="form-control" id="startDate" value="2024-08-16">
            </div>
            <div class="form-group col-md-4">
                <label for="endDate">~</label>
                <input type="date" name="endDate" class="form-control" id="endDate" value="2024-08-18">
            </div>
            <div class="form-group col-md-4">
                <button type="submit" class="btn btn-primary">검색</button>
            </div>
        </div>
    </form>

    <div class="mt-3">
        <span id="total">전체 0 건</span>
    </div>
    
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>번호</th>
                <th>재해구분</th>
                <th>긴급단계</th>
                <th>재난문자</th>
                <th>등록일</th>
            </tr>
        </thead>
        <tbody id="msgContents">
            <tr>
                <td colspan="5" class="text-center">조회된 재난문자가 없습니다.</td>
            </tr>
        </tbody>
    </table>

    <nav aria-label="Page navigation">
        <ul class="pagination justify-content-center" id="pages">
            
        </ul>
    </nav>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
