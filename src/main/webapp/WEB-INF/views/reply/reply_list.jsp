<%--
/**
    Class Name: board_mng.jsp
    Description:
    Author: acorn
    Modification information
    
    수정일         수정자      수정내용
    -----   -----  -------------------------------------------
    2024. 7. 30        최초작성 
    
    
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
<link rel="icon" type="image/png" href="/ehr/resources/images/favicon.ico">

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
<style>
   .readonly-input {
     background-color: #e9ecef;
   }
</style>
<title>오늘 사람 프로그램</title>
<script>
   //doDelete:삭제
    document.addEventListener("DOMContentLoaded", function(){
        console.log("DOMContentLoaded");
        
        //목록으로 이동: 
        const moveToListBtn = document.querySelector("#moveToList");
        
        //수정버튼:doUpdate
        const doUpdateBtn = document.querySelector("#doUpdate");
        
        //삭제버튼
        const doDeleteBtn = document.querySelector("#doDelete");
        console.log("doDeleteBtn",doDeleteBtn);
        
        //boardNo
        const boardNoInput = document.querySelector("#boardNo");
        
        //제목
        const titleInput = document.querySelector("#title");
        
        //내용
        const contentsTextArea = document.querySelector("#contents");
        
        
        moveToListBtn.addEventListener("click",function(event){
            console.log("moveToListBtn click",event);
            event.stopPropagation();
            if(confirm('목록으로 이동 하시겠습니까?') === false)return;
            
            moveToList();
            
        });
        
        doUpdateBtn.addEventListener("click",function(event){
            console.log("doUpdateBtn click",event);
            event.stopPropagation();
            doUpdate();
        });
        
        doDeleteBtn.addEventListener("click",function(event){
            console.log("doDeleteBtn click",event);
            event.stopPropagation();
            doDelete(); 
        });
        
        function doUpdate(){
            console.log("doUpdate()");
            if(isEmpty(boardNoInput.value) == true){
                alert('boardNo를 확인 하세요.')
                return;
            }           
            
           if(isEmpty(titleInput.value) == true){
                alert('제목을 입력 하세요.')
                titleInput.focus();
                return;
           }
        
            //markdown getter : simplemde.value()
            if(isEmpty(simplemde.value()) == true){
                alert('내용을 입력 하세요.')
                contentsTextArea.focus();
                return;
                
            } 
           
            if(confirm('수정 하시겠습니까?') === false)return;
            
            //비동기 통신
            let type= "POST";  
            let url = "/ehr/board/doUpdate.do";
            let async = "true";
            let dataType = "html";
            
            let params = {  
                "boardNo": boardNoInput.value,
                "title": titleInput.value,
                "contents": simplemde.value()      
            }
            
            PClass.pAjax(url,params,dataType,type,async,function(data){
                
                if(data){
                    try{
                        const message = JSON.parse(data);
                        if(isEmpty(message) === false && 1 === message.messagId){
                            alert(message.messageContents);
                            moveToList();
                        }else{
                            alert(message.messageContents);
                        }
                    }catch(e){
                         alert("data를 확인 하세요.");     
                    }
                    
                }
                
            });           
           
        }
        
        function moveToList(){
            window.location.href ="/ehr/board/doRetrieve.do";
        }
        
        function doDelete(){
            console.log("doDelete()");
            if(isEmpty(boardNoInput.value) == true){
                alert('boardNo를 확인 하세요.')
                return;
            }
            if(confirm('삭제 하시겠습니까?') === false)return;
            
            //비동기 통신
            let type= "GET";  
            let url = "/ehr/board/doDelete.do";
            let async = "true";
            let dataType = "html";
            
            let params = { 
                "boardNo": boardNoInput.value
            }            
            
            PClass.pAjax(url,params,dataType,type,async,function(data){
                
                if(data){
                    try{
                        const message = JSON.parse(data);
                        if(isEmpty(message) === false && 1 === message.messagId){
                            alert(message.messageContents);
                            moveToList();
                        }else{
                            alert(message.messageContents);
                            
                        }
                        
                        
                    }catch(e){
                         alert("data를 확인 하세요.");     
                    }
                    
                }
                
            });            
     
            
        }
        
    });
    

    $(document).ready(function() {
        loadReplies();
        
        // 댓글 작성
        $('#replyForm').submit(function(e) {
            e.preventDefault();
            $.ajax({
                url: '/ehr/reply/doSave.do',
                type: 'POST',
                data: $(this).serialize(),
                success: function(response) {
                    // 성공 시 댓글 목록 새로고침
                    loadReplies();
                },
                error: function(xhr, status, error) {
                    alert('댓글 작성에 실패했습니다.');
                }
            });
        });

        // 댓글 수정
        $(document).on('click', '.edit-reply', function() {
            var replyNo = $(this).data('reply-no');
            // 수정 로직 구현
        });

        // 댓글 삭제
        $(document).on('click', '.delete-reply', function() {
            var replyNo = $(this).data('reply-no');
            if(confirm('정말 삭제하시겠습니까?')) {
                $.ajax({
                    url: '/ehr/reply/doDelete.do',
                    type: 'POST',
                    data: { replyNo: replyNo },
                    success: function(response) {
                        // 성공 시 댓글 목록 새로고침
                        loadReplies();
                    },
                    error: function(xhr, status, error) {
                        alert('댓글 삭제에 실패했습니다.');
                    }
                });
            }
        });

        // 대댓글 작성
        $(document).on('click', '.reply-to-reply', function() {
            var parentReply = $(this).data('parent-reply');
            // 대댓글 작성 폼 표시 로직 구현
        });
    });

    function loadReplies() {
        $.ajax({
            url: '/ehr/reply/doRetrieve.do',
            type: 'GET',
            data: { boardNo: ${board.boardNo} },
            success: function(replies) {
                var replyHtml = '';
                $.each(replies, function(index, reply) {
                    replyHtml += '<div class="reply">';
                    replyHtml += '<p><strong>' + reply.regId + '</strong>: ' + reply.replyContents + '</p>';
                    replyHtml += '<p><small>' + reply.regDt + '</small></p>';
                    replyHtml += '</div>';
                });
                $('#replyList').html(replyHtml);
            },
            error: function(xhr, status, error) {
                console.error("댓글 로딩 실패:", error);
            }
        });
    }
</script>

 
</head>
<body>
<!-- container -->
<div class="container">
  
  <!-- 제목 -->
  <div class="page-header">
      <h2>
        <c:choose>
            <c:when test="">공지사항-등록</c:when>
            <c:when test="">자유게시판-등록</c:when>
            <c:otherwise>
                공지사항/자유게시판
            </c:otherwise>
        </c:choose>
      </h2>  
  </div>
  <!--// 제목 end ------------------------------------------------------------->

  <!-- 버튼 -->
  <div class="mb-2 d-grid gap-2 d-md-flex justify-content-md-end">
      <input type="button" value="목록"  id="moveToList"    class="btn btn-primary">
      <input type="button" value="수정"  id="doUpdate" class="btn btn-primary">
      <input type="button" value="삭제"  id="doDelete" class="btn btn-primary">
  </div>
  <!--// 버튼 ----------------------------------------------------------------->
  
  <!-- form -->
  <form action="#" class="form-horizontal"  name="regForm" id="regForm">
    <div class="row mb-2">
        <label for="boardNo" class="col-sm-2 col-form-label">boardNo</label>
        <div class="col-sm-10">
          <input type="text"  value="<c:out value='${board.boardNo }'/>" class="form-control readonly-input" readonly="readonly" name="boardNo" id="boardNo"  >        
        </div>      
    </div>  
    <div class="row mb-2">
        <label for="readCnt" class="col-sm-2 col-form-label">조회수</label>
        <div class="col-sm-10">
          <input type="text"  value="<c:out value='${board.readCnt }'/>" class="form-control readonly-input" readonly="readonly" name="readCnt" id="readCnt"  >        
        </div>      
    </div>     
    <div class="row mb-2">
        <label for="regId" class="col-sm-2 col-form-label">등록자</label>
        <div class="col-sm-10">
          <input type="text"  value="<c:out value='${board.regId }'/>" class="form-control readonly-input" readonly="readonly" name="regId" id="regId"  >        
        </div>      
    </div>     
    <div class="row mb-2">
        <label for="title" class="col-sm-2 col-form-label">제목</label>
        <div class="col-sm-10">
          <input type="text" value="<c:out value='${board.title }'/>" class="form-control" name="title" id="title"  maxlength="75" required="required">
        </div>      
    </div>
    <!-- 일반 사용자 -->
    <div class="row mb-2">
       <label for="contents" class="col-sm-2 col-form-label">내용</label>
       <div class="col-sm-10">${markdownContents}</div>
    </div>
    <!-- 관리자 -->
    <div class="row mb-2">
        <label for="contents" class="col-sm-2 col-form-label">내용</label>
        <div class="col-sm-10">    
         <textarea style="height: 200px"  class="form-control" id="contents" name="contents"><c:out value='${board.contents }'/></textarea>
        </div> 
    </div>    
    
  </form>
  
  <!--// form end -->
</div>
<!--// container end ---------------------------------------------------------->
<script>
    var simplemde = new SimpleMDE({ element: document.getElementById("contents") })
</script>
<%-- bootstrap js --%>
<script src="${CP}/resources/js/bootstrap.bundle.js"></script>

<%-- 댓글 섹션 시작 --%>
<div class="container mt-5">
    <h3>댓글</h3>
    
    <%-- 댓글 입력 폼 --%>
    <form id="replyForm" class="mb-4">
        <input type="hidden" name="boardNo" value="${board.boardNo}">
        <div class="form-group">
            <textarea class="form-control" id="replyContents" name="replyContents" rows="3" placeholder="댓글을 입력하세요"></textarea>
        </div>
        <button type="submit" class="btn btn-primary mt-2">댓글 작성</button>
    </form>

    <%-- 댓글 목록 --%>
    <div id="replyList">
        <c:forEach var="reply" items="${replyList}">
            <div class="card mb-2">
                <div class="card-body">
                    <h6 class="card-subtitle mb-2 text-muted">작성자: ${reply.regId}</h6>
                    <p class="card-text">${reply.replyContents}</p>
                    <p class="card-text"><small class="text-muted">작성일: ${reply.regDt}</small></p>
                    
                    <%-- 대댓글이 있는 경우 표시 --%>
                    <c:if test="${reply.parentReply != 0}">
                        <p class="card-text"><small class="text-muted">부모 댓글: ${reply.parentReply}</small></p>
                    </c:if>
                    
                    <%-- 수정/삭제 버튼 (본인 댓글인 경우에만 표시) --%>
                    <c:if test="${reply.regId eq sessionScope.userId}">
                        <button class="btn btn-sm btn-outline-primary edit-reply" data-reply-no="${reply.replyNo}">수정</button>
                        <button class="btn btn-sm btn-outline-danger delete-reply" data-reply-no="${reply.replyNo}">삭제</button>
                    </c:if>
                    
                    <%-- 대댓글 작성 버튼 --%>
                    <button class="btn btn-sm btn-outline-secondary reply-to-reply" data-parent-reply="${reply.replyNo}">답글</button>
                </div>
            </div>
        </c:forEach>
    </div>
</div>


<%-- 댓글 섹션 끝 --%> 
</body>
</html>
