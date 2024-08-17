<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<c:set var="CP"  value="${pageContext.request.contextPath}"  /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="shortcut icon" href="${CP}/resources/img/favicon.ico" type="image/x-icon">

<link rel="stylesheet" href="${CP}/resources/css/bootstrap.css">

<script src="${CP}/resources/js/jquery_3_7_1.js"></script>

<script src="${CP}/resources/js/common.js"></script> 

<link rel="stylesheet"  href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<link rel="stylesheet" href="${CP}/resources/css/simplemde.min.css">
<script src="${CP}/resources/js/simplemde.min.js"></script>
<title>재난 커뮤니티</title>
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    text-decoration: none;
    list-style: none;
}
a{
    text-decoration: none;
    text-align: center;
    color: #134b70;
}
body {
        font-family: "Hahmlet", serif;
        font-optical-sizing: auto;
        font-style: normal;
        
}      


.container{
    margin-top :30px;
    margin-bottom :30px;

}
/* 페이지 제목 스타일 */
.page-header h2 {
    font-size: 2rem;
    font-weight: bold;
    color: #333;
    border-bottom: 2px solid #508c9b;
    padding-bottom: 10px;
}

/* 버튼 스타일 */
.btn {
    font-size: 1rem;
    padding: 10px 20px;
    border-radius: 5px;
}

.btn-primary {
    background-color: #134b70;
    color: white;
    border: none;
}

.btn-primary:hover {
    background-color: #508c9b;
    color:white;
    
}

/* 읽기 전용 입력 필드 스타일 */
.readonly-input {
    background-color: #e9ecef;
    border: 1px solid #ced4da;
}

/* 폼 레이블 스타일 */
.form-label {
    font-weight: bold;
    color: #333;
}

/* 내용 텍스트칸 스타일 */
textarea.form-control {
    resize: vertical;
    background-color: #e9ecef;
    /*pointer-events: none; */
}

textarea.content-area {
    resize: vertical;
    background-color: #e9ecef;
    pointer-events: none; !important; /* 사용자 입력 비활성화 */
    border: 1px solid #ced4da; 
}

/* 댓글 섹션 스타일 */
#replyList .reply {
    border-bottom: 1px solid #ddd;
    padding: 10px 0;
}

#replyList .reply p {
    margin: 0;
}

#replyList .reply button {
    background-color: #e74c3c;
    border: none;
    color: #fff;
    padding: 5px 10px;
    border-radius: 3px;
    cursor: pointer;
}

#replyList .reply button:hover {
    background-color: #c0392b;
}

/* 댓글 입력 폼 스타일 */
#replyForm .form-group {
    margin-bottom: 10px;
}

#replyForm textarea {
    border-radius: 4px;
    border: 1px solid #ced4da;
}

#replyForm button {
    background-color: #508c9b;
    border: none;
    color: #fff;
}

#replyForm button:hover {
    background-color: #134b70;
}

/* 폼 전체 스타일 */
.form-horizontal .form-control {
    border-radius: 4px;
}

.row.mb-2 {
    margin-bottom: 1rem;
}

</style>
<script>
document.addEventListener("DOMContentLoaded", function(){
    console.log("DOMContentLoaded");
    
    const moveToListBtn = document.querySelector("#moveToList");
    const moveToEditBtn = document.querySelector("#moveToEdit");
    const doDeleteBtn = document.querySelector("#doDelete");
    const boardNoInput = document.querySelector("#boardNo");
    const titleInput = document.querySelector("#title");
    const divInput = document.querySelector("#div");
    const contentsTextArea = document.querySelector("#contents");
    const doSaveReplyBtn = document.querySelector("#doSaveReply");
    const replyContentsInput = document.querySelector("#replyContents");
    
    console.log("doDeleteBtn", doDeleteBtn);

    moveToListBtn.addEventListener("click", function(event){
        console.log("moveToListBtn click", event);
        event.stopPropagation();
        if(confirm('목록으로 이동 하시겠습니까?') === false) return;
        moveToList();
    });
    
    moveToEditBtn.addEventListener("click", function(event){
        console.log("moveToEditBtn click", event);
        event.stopPropagation();
        if(confirm('수정 페이지로 이동합니다.') === false) return;
        moveToEdit();
    });
    
    doDeleteBtn.addEventListener("click", function(event){
        console.log("doDeleteBtn click", event);
        event.stopPropagation();
        doDelete(); 
    });
    
    doSaveReplyBtn.addEventListener("click", function(event){
        console.log("doSaveReplyBtn click", event);
        event.stopPropagation();
        doSaveReply();
    });

    loadReplies();
});

	function isEmpty(value) {
	    if (value == null || typeof value !== 'string') {
	        return true; // value가 null, undefined, 혹은 문자열이 아닌 경우
	    }
	    return value.trim() === '';
	}
	
	
	function moveToEdit() {
		const moveToEditBtn = document.querySelector("#moveToEdit");
	    const boardNo = moveToEditBtn.getAttribute('data-board-no');
	    console.log("moveToEdit boardNo:" + boardNo);
	    window.location.href = "/ehr/board/moveToEdit.do?boardNo=" + boardNo;
	}
	
	function moveToList(){
	    window.location.href = "/ehr/board/doRetrieve.do";
	}
	
	function doDelete(){
	    console.log("doDelete()");
	    const boardNoInput = document.querySelector("#boardNo");
	
	    if(isEmpty(boardNoInput.value)){
	        alert('boardNo를 확인 하세요.')
	        return;
	    }
	    if(confirm('삭제 하시겠습니까?') === false) return;
	    
	    let type = "GET";  
	    let url = "/ehr/board/doDelete.do";
	    let async = "true";
	    let dataType = "html";
	    
	    let params = { 
	        "boardNo": boardNoInput.val()
	    }            
	    
	    PClass.pAjax(url, params, dataType, type, async, function(data){
	        if(data){
	            try{
	                const message = JSON.parse(data);
	                if(!isEmpty(message) && 1 === message.messageId){
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


	function doSaveReply(){
	    console.log("doSaveReply()");
	    const replyContentsInput = document.querySelector("#replyContents");
	    const boardNoInput = document.querySelector("#boardNo");
	
	    if(isEmpty(replyContentsInput.value)){
	        alert('댓글 내용을 입력하세요.')
	        replyContentsInput.focus();
	        return;
	    }
	    
	    if(confirm('댓글을 작성하시겠습니까?') === false) return;
	    
	    let type = "POST";
	    let url = "/ehr/reply/doSave.do";
	    let async = "true";
	    let dataType = "html";
	    
	    let params = {
	        "boardNo": boardNoInput.value,
	        "replyContents": replyContentsInput.value
	    }
	    
	    PClass.pAjax(url, params, dataType, type, async, function(data){
	        if(data){
	            try{
	                const message = JSON.parse(data);
	                if(!isEmpty(message) && 1 === message.msgId){
	                    alert(message.msgContents);
	                    replyContentsInput.value = '';
	                    loadReplies();
	                } else {
	                    alert(message.msgContents);
	                }
	            } catch(e) {
	                alert("데이터를 확인하세요.");
	            }
	        }
	    });
	}
	
	function doDeleteReply(replyNo){
	    console.log("doDeleteReply()");
	    if(isEmpty(replyNo)){
	        alert('댓글 번호를 확인하세요.')
	        return;
	    }
	    if(confirm('댓글을 삭제하시겠습니까?') === false) return;
	    
	    let type = "GET";
	    let url = "/ehr/reply/doDelete.do";
	    let async = "true";
	    let dataType = "html";
	    
	    let params = { 
	        "replyNo": replyNo
	    }
	    
	    PClass.pAjax(url, params, dataType, type, async, function(data){
	        if(data){
	            try{
	                const message = JSON.parse(data);
	                if(!isEmpty(message) && 1 === message.msgId){
	                    alert(message.msgContents);
	                    loadReplies();
	                } else {
	                    alert(message.msgContents);
	                }
	            } catch(e) {
	                alert("데이터를 확인하세요.");
	            }
	        }
	    });
	}
	
	function loadReplies(){
	    console.log("loadReplies()");
	    const boardNoInput = document.querySelector("#boardNo");

	    const boardNo = boardNoInput ? boardNoInput.value : '';
	    console.log("boardNo:", boardNo);  // boardNo 값이 제대로 출력되는지 확인

	    if (!boardNo) {
	        console.error("boardNo 값이 없습니다. 확인해 주세요.");
	        return;
	    }
	    
	    let type = "GET";
	    let url = "/ehr/reply/doRetrieve.do";
	    let async = true;
	    let dataType = "json";  // 이미 JSON으로 파싱된 데이터를 받도록 설정
	    
	    let params = { 
	        searchDiv: '10',
	        searchWord: boardNo,
	        pageSize: 10,
	        pageNo: 1
	    }
	    
	    PClass.pAjax(url, params, dataType, type, async, function(data){
	        if(data && data.list){
	            let replyHtml = '';
	            data.list.forEach(function(reply){
	                replyHtml += '<div class="reply">';
	                replyHtml += '<p><strong>' + reply.regId + '</strong>: ' + reply.replyContents + '</p>';
	                replyHtml += '<p><small>' + reply.regDt + '</small></p>';
	                replyHtml += '<button onclick="doDeleteReply(' + reply.replyNo + ')">삭제</button>';
	                replyHtml += '</div>';
	            });
	            document.querySelector("#replyList").innerHTML = replyHtml;
	            } else {
	                console.error("댓글 로딩 실패");     
	            }
	    });
	}

</script>
</head>
<body>
<%@ include file="/WEB-INF/views/main/header.jsp" %>
<!-- container -->
<div class="container">
  
  <!-- 제목 -->
  <div class="page-header">
      <h2>공지사항/자유게시판</h2>  
  </div>
  <!--// 제목 end ------------------------------------------------------------->

  <!-- 버튼 -->
  <div class="mb-2 d-grid gap-2 d-md-flex justify-content-md-end">
      <input type="button" value="목록"  id="moveToList"    class="btn btn-primary">
      <input type="button" value="수정" id="moveToEdit" class="btn btn-primary" data-board-no="${board.boardNo}">
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
          <input type="text" value="<c:out value='${board.title }'/>" class="form-control readonly-input" readonly="readonly" name="title" id="title"  maxlength="75" required="required">
        </div>      
    </div>
    <div class="row mb-2">
        <label for="contents" class="col-sm-2 col-form-label">내용</label>
        <div class="col-sm-10">    
         <textarea style="height: 200px" class="content-area readonly-input" readonly id="contents" name="contents"><c:out value='${board.contents }'/></textarea>
        </div> 
    </div>    
  </form>
  <!--// form end -->
  
  <!-- 댓글 섹션 -->
  <div class="mt-5">
    <h3>댓글</h3>
    
     <!-- 댓글 입력 폼 -->
    <form id="replyForm" class="mb-4">
        <div class="form-group">
            <textarea class="form-control" id="replyContents" rows="3" placeholder="댓글을 입력하세요"></textarea>
        </div>
        <button type="button" id="doSaveReply" class="btn btn-primary mt-2">댓글 작성</button>
    </form>

    <!-- 댓글 목록 -->
    <div id="replyList">
        <!-- 댓글이 여기에 동적으로 로드됩니다 -->
    </div>
  </div>
  <!-- 댓글 섹션 끝 -->
  
</div>
<%@ include file="/WEB-INF/views/main/footer.jsp" %>
<!--// container end ---------------------------------------------------------->
<script>
    var simplemde = new SimpleMDE({ element: document.getElementById("contents") })
</script>
<%-- bootstrap js --%>
<script src="${CP}/resources/js/bootstrap.bundle.js"></script>
</body>
</html>