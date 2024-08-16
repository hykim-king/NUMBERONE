<%--
/**
	Class Name: board_reg.jsp
	Description: 부트스트랩 template
	Author: acorn
	Modification information
	
	수정일                    수정자      수정내용
    -----        -----  -------------------------------------------
    2024. 7. 18         최초작성 
    
    
    author eclass 개발팀
    since 2020.11.23
    Copyright (C) by KandJang All right reserved.
*/
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<c:set var="CP"  value="${pageContext.request.contextPath}"  /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%-- favicon  --%>
<link rel="shortcut icon" href="${CP}/resources/img/favicon.ico" type="image/x-icon">

<%-- bootstrap css --%>
<link rel="stylesheet" href="${CP}/resources/css/bootstrap.css">

<%-- jquery --%>
<script src="${CP}/resources/js/jquery_3_7_1.js"></script>

<%-- common js --%>
<script src="${CP}/resources/js/common.js"></script> 

<%-- google Nanum+Gothic --%>
<link rel="stylesheet"  href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap">

<%-- FontAwesome for icons --%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">


<%-- simplemde --%>
<link rel="stylesheet" href="${CP}/resources/css/simplemde.min.css">
<script src="${CP}/resources/js/simplemde.min.js"></script>

<title>재난 커뮤니티</title>
<style>
    body {
            font-family: "Hahmlet", serif;
            font-optical-sizing: auto;
            font-style: normal;
    }
    .container {

        border-radius: 8px;
        padding: 20px;
        width : 900px;
        margin-top:30px;
       
    }
    .page-header {
        font-size: 2rem;
        font-weight: bold;
        color: #333;
        border-bottom: 2px solid #508c9b;
        padding-bottom: 5px;
        margin-bottom: 10px;
    }
    .btn-primary {
        background-color: #134b70;
        border-color: #134b70;
    }
    .btn-primary:hover {
        background-color: #508c9b;
        border-color: #508c9b;
    }
    .form-control {
        border-radius: 4px;
        box-shadow: none;
    }
    .readonly-input {
        background-color: #e9ecef;
    }
    .form-group {
        margin-bottom: 1rem;
    }
    .reply {
        border-bottom: 1px solid #dee2e6;
        padding: 10px 0;
    }
    .reply button {
        border: none;
        background: none;
        color: #dc3545;
        cursor: pointer;
    }
    .reply button:hover {
        text-decoration: underline;
    }
    .reply p {
        margin: 0;
    }
    .reply p small {
        color: #6c757d;
    }
    .btn-primary.mt-2 {
        background-color: #007bff;
        border-color: #007bff;
    }
    .btn-primary.mt-2:hover {
        background-color: #0056b3;
        border-color: #004085;
    }
</style>
<script>
document.addEventListener("DOMContentLoaded", function(){
    console.log("DOMContentLoaded");
     
    const doUpdateBtn = document.querySelector("#doUpdate");  
    const boardNoInput = document.querySelector("#boardNo");
    const titleInput = document.querySelector("#title");
    const regIdInput = document.querySelector("#regId");
    const contentsTextArea = document.querySelector("#contents");
    const divInput = document.querySelector("#div");
    
    doUpdateBtn.addEventListener("click", function(event){
        console.log("doUpdateBtn click");     
        doUpdate();
    });
    
    function isEmpty(value) {
        if (value == null || typeof value !== 'string') {
            return true; // value가 null, undefined, 혹은 문자열이 아닌 경우
        }
        return value.trim() === '';
    }
    
    function doUpdate(){
        console.log("doUpdate()");
        
        if(isEmpty(titleInput.value) == true){
            alert('제목을 입력하세요.')
            titleInput.focus();
            return;
        }
        
        if(isEmpty(simplemde.value()) == true){
            alert('내용을 입력하세요.')
            contentsTextArea.focus();
            return;
        }  
        
        if(confirm('수정하시겠습니까?') === false) return;
        
        let url = "/ehr/board/doUpdate.do";
        let params = { 
            "boardNo": boardNoInput.value,
            "title": titleInput.value,
            "regId": regIdInput.value,  
            "contents": simplemde.value(),
            "div": divInput.value
        }
        
        PClass.pAjax(url, params, "html", "POST", true, function(data){
            if(data){
                try{
                    const message = JSON.parse(data);
                    if(isEmpty(message) === false && 1 === message.messageId){
                        alert(message.messageContents);
                        window.location.href ="/ehr/board/doSelectOne.do?boardNo=" + boardNoInput.value;
                    } else {
                        alert(message.messageContents);
                    }
                } catch(e){
                    alert("데이터를 확인하세요.");     
                }
            }
        });
    }
});
</script>
</head>
<body>
<%@ include file="/WEB-INF/views/main/header.jsp" %>
    <div class="container">
        <div class="page-header">
            <h2>게시글 수정</h2>  
        </div>
        
        <div class="mb-2 d-grid gap-2 d-md-flex justify-content-md-end">
           
            <input type="button" value="등록" id="doUpdate" class="btn btn-primary">
            
        </div>
        
        <form action="#" class="form-horizontal" name="editForm" id="editForm">
            <input type="hidden" name="boardNo" id="boardNo" value="${board.boardNo}">
            <input type="hidden" name="div" id="div" value="${board['div']}" />
            <div class="row mb-2">
                <label for="title" class="col-sm-2 col-form-label">제목</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="title" id="title" value="${board.title}" maxlength="75" required="required">
                </div>      
            </div>
            <div class="row mb-2">
                <label for="regId" class="col-sm-2 col-form-label">등록자</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="regId" id="regId" value="${board.regId}" readonly>        
                </div>      
            </div>    
            <div class="row mb-2">
                <label for="contents" class="col-sm-2 col-form-label">내용</label>
                <div class="col-sm-10">    
                    <textarea style="height: 200px" class="form-control" id="contents" name="contents">${board.contents}</textarea>
                </div> 
            </div>  
        </form>  
    </div>
    <%@ include file="/WEB-INF/views/main/footer.jsp" %>
    <script>
        var simplemde = new SimpleMDE({ element: document.getElementById("contents") });
        simplemde.value("${board.contents}");
</script>
<%-- bootstrap js --%>
<script src="${CP}/resources/js/bootstrap.bundle.js"></script> 
</body>
</html>