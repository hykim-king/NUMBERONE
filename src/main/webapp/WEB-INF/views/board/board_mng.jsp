<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<c:set var="CP"  value="${pageContext.request.contextPath}"  /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="icon" type="image/png" href="/ehr/resources/images/favicon.ico">

<link rel="stylesheet" href="${CP}/resources/css/bootstrap.css">

<script src="${CP}/resources/js/jquery_3_7_1.js"></script>

<script src="${CP}/resources/js/common.js"></script> 

<link rel="stylesheet"  href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">


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

.board-meta {
        font-size: 0.9rem;
        color: #666;
        text-align: right;
        margin-bottom: 10px;
}

/* 내용 텍스트칸 스타일 */
textarea.form-control {
    resize: vertical;
    background-color: #e9ecef;
    /*pointer-events: none; */
}

textarea.content-area {
        height: 300px; /* 고정 높이 설정 */
        min-height: 300px; /* 최소 높이도 동일하게 설정 */
        overflow-y: auto;
        white-space: pre-wrap;
        word-wrap: break-word;
        background-color: #f8f9fa;
        border: 1px solid #ced4da;
        padding: 10px;
        width: 100%;
        resize: vertical; /* 사용자가 세로 크기를 조절할 수 있게 함 */
}


/* 댓글 섹션 스타일 */
#replyList .reply {
    /*border-bottom: 1px solid #ddd; */
    padding: 10px 0;
}

#replyList .reply p {
    margin: 0;
}

#replyList .reply button {
    background-color: #134b70;
    border: none;
    color: #fff;
    padding: 4px 8px;
    border-radius: 3px;
    cursor: pointer;
    margin: 2px;
}

#replyList .reply button:hover {
    background-color: #201e4b;
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

    if(moveToListBtn) {
        moveToListBtn.addEventListener("click", function(event){
            console.log("moveToListBtn click", event);
            event.preventDefault();
            if(confirm('목록으로 이동 하시겠습니까?') === false) return;
            moveToList();
        });
    }
    
    if(moveToEditBtn) {
        moveToEditBtn.addEventListener("click", function(event){
            console.log("moveToEditBtn click", event);
            event.preventDefault();
            if(confirm('수정 페이지로 이동합니다.') === false) return;
            moveToEdit();
        });
    }
    
    if(doDeleteBtn) {
        doDeleteBtn.addEventListener("click", function(event){
            console.log("doDeleteBtn click", event);
            event.preventDefault();
            doDelete(); 
        });
    }
    
    if(doSaveReplyBtn) {
        doSaveReplyBtn.addEventListener("click", function(event){
            console.log("doSaveReplyBtn click", event);
            event.preventDefault();
            doSaveReply();
        });
    }

    loadReplies();
});


    function isEmpty(value) {
        if (value == null) {
            return true; // null 또는 undefined인 경우
        }
        if (typeof value === 'string') {
            return value.trim() === '';
        }
        if (typeof value === 'number') {
            return false; // 숫자는 항상 비어있지 않은 것으로 간주
        }
        return false; // 그 외의 경우 (배열, 객체 등)
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
            "boardNo": boardNoInput.value
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
    
    function showUpdateReplyForm(replyNo) {
        const replyElement = document.getElementById('reply' + replyNo);
        if (!replyElement) return;

        const replyContent = replyElement.querySelector('.reply-content').textContent;
        const buttonsDiv = replyElement.querySelector('.reply-buttons');
        
        let currentUserId = '${sessionScope.member.memberId}';
        
        if (currentUserId === replyElement.dataset.regId) {
            const updateForm = '<div id="updateForm' + replyNo + '">' +
                '<textarea id="updateReplyContents' + replyNo + '">' + replyContent + '</textarea>' +
                '<button onclick="doUpdateReply(' + replyNo + ')">수정 완료</button>' +
                '<button onclick="cancelUpdateReply(' + replyNo + ')">취소</button>' +
                '</div>';
            
            buttonsDiv.style.display = 'none';
            replyElement.querySelector('.reply-content').insertAdjacentHTML('afterend', updateForm);
        } else {
            alert('수정 권한이 없습니다.');
        }
    }


    function cancelUpdateReply(replyNo) {
        const replyElement = document.getElementById('reply' + replyNo);
        if (!replyElement) return;

        const updateForm = replyElement.querySelector('#updateForm' + replyNo);
        if (updateForm) updateForm.remove();

        const buttonsDiv = replyElement.querySelector('.reply-buttons');
        buttonsDiv.style.display = 'block';
    }
    
    function showReplyForm(replyNo) {
         const replyForm = document.getElementById('replyForm' + replyNo);
            if (replyForm) {
                replyForm.style.display = replyForm.style.display === 'none' ? 'block' : 'none';
            }
    }
    
    function doSaveReply(parentReply = 0){
        console.log("doSaveReply()");
        let replyContentsInput = document.querySelector("#replyContents");
        const boardNoInput = document.querySelector("#boardNo");
       
        if (parentReply !== 0) {
            replyContentsInput = document.querySelector("#replyContents" + parentReply);
        }
        
        if(!replyContentsInput) {
            console.error("Reply contents input not found");
            return;
        }
        
        if(isEmpty(replyContentsInput.value)){
            alert('댓글 내용을 입력하세요.')
            replyContentsInput.focus();
            return;
        }
        
        if(confirm('댓글을 작성하시겠습니까?') === false) return;
        
        let type = "POST";
        let url = "/ehr/reply/doSave.do";
        let async = true;
        let dataType = "json";
        
        let params = {
                boardNo: boardNoInput.value,
                replyContents: replyContentsInput.value,
                parentReply: parentReply,
                replyLevel: parentReply === 0 ? 0 : 1,
        }
        
        console.log("Sending request with params:", params);
        
        PClass.pAjax(url, params, dataType, type, async, function(data){
            console.log("Received response:", data);
            if(data){
                try{
                    if(!isEmpty(data) && 1 === data.messageId){
                        alert(data.messageContents);
                        replyContentsInput.value = '';
                        if (parentReply !== 0) {
                            const replyForm = document.getElementById('replyForm' + parentReply);
                            if(replyForm) replyForm.style.display = 'none';
                        }
                        loadReplies();
                    } else {
                        alert(data.messageContents);
                    }
                } catch(e) {
                    console.error("Error processing response:", e);
                    alert("데이터를 확인하세요.");
                }
            }
        });
    }
    
    function doDeleteReply(replyNo){
        console.log("doDeleteReply() - replyNo:", replyNo);
        
        let currentUserId = '${sessionScope.member.memberId}';
        
        const replyElement = document.getElementById('reply' + replyNo);
        if (!replyElement || currentUserId !== replyElement.dataset.regId) {
            alert('삭제 권한이 없습니다.');
            return;
        }
        
        if(confirm('댓글을 삭제하시겠습니까?') === false) return;
        
        let type = "POST";  
        let url = "/ehr/reply/doDelete.do";
        let async = true;  
        let dataType = "json";  
        
        let params = { 
            "replyNo": replyNo
        }
        
        PClass.pAjax(url, params, dataType, type, async, function(data){
            if(data){
                try{
                    if(!isEmpty(data) && 1 === data.messageId){
                        alert(data.messageContents);
                        loadReplies();
                    } else {
                        alert(data.messageContents);
                    }
                } catch(e) {
                    console.error("Error parsing response:", e);
                    alert("데이터 처리 중 오류가 발생했습니다.");
                }
            }
        });
    }
    
    function setParentReply(replyNo) {
        const parentReplyInput = document.querySelector("#parentReply");
        if (parentReplyInput) {
            parentReplyInput.value = replyNo;
            const replyContentsInput = document.querySelector("#replyContents");
            if (replyContentsInput) {
                replyContentsInput.focus();
            }
        } else {
            console.error("Parent reply input not found");
        }
    }

    // 댓글 수정 실행 함수
    function doUpdateReply(replyNo) {
    const updateContentElement = document.getElementById('updateReplyContents' + replyNo);
    if (!updateContentElement) {
        console.error('수정할 댓글 넘버를 찾는데 실패:', replyNo);
        return;
    }

    const updatedContent = updateContentElement.value;
    if (isEmpty(updatedContent)) {
        alert('수정할 내용을 입력하세요.');
        return;
    }

    if (!confirm('댓글을 수정하시겠습니까?')) return;

    let type = 'POST';
    let url = '/ehr/reply/doUpdate.do';
    let async = true;
    let dataType = 'json';
    
    let params = { 
        replyNo: replyNo,
        replyContents: updatedContent
    };
    
    PClass.pAjax(url, params, dataType, type, async, function(data) {
        if (data && data.messageId === 1) {
            alert(data.messageContents);
            loadReplies(); // 현재 페이지 다시 로드
        } else {
            alert('수정 권한이 없습니다.');
        }
    });
}
    
    function loadReplies(pageNo = 1){
        console.log("loadReplies()");
        const boardNoInput = document.querySelector("#boardNo");

        if (!boardNoInput) {
            console.error("boardNo input not found");
            return;
        }

        const boardNo = boardNoInput.value;
        console.log("boardNo:", boardNo);

        if (!boardNo) {
            console.error("boardNo 값이 없습니다. 확인해 주세요.");
            return;
        }
        
        let type = "POST";
        let url = "/ehr/reply/doRetrieve.do";
        let async = true;
        let dataType = "json";
        
        let params = { 
            searchDiv: '10',
            searchWord: boardNo,
            pageSize: 50,
            pageNo: pageNo
        }
        
        console.log("Sending request with params:", params);
        
        PClass.pAjax(url, params, dataType, type, async, function(data){
            console.log("Received response:", data);
            if(data && data.list){
                let replyHtml = '';
                let replyMap = new Map();

                data.list.forEach(function(reply){
                    reply.children = [];
                    replyMap.set(reply.replyNo, reply);
                });

                data.list.forEach(function(reply){
                    if(reply.parentReply !== 0 && replyMap.has(reply.parentReply)){
                        replyMap.get(reply.parentReply).children.push(reply);
                    }
                });

                data.list.filter(reply => reply.parentReply === 0).forEach(function(reply){
                    replyHtml += ReplyHtml(reply, 0);
                });

                const replyListElement = document.querySelector("#replyList");
                if (replyListElement) {
                    replyListElement.innerHTML = replyHtml;
                } else {
                    console.error("Reply list element not found");
                }
                createPagination(data.totalCnt, params.pageSize, pageNo);
            } else {
                console.error("댓글 로딩 실패");     
            }
        });
    }
    
    function ReplyHtml(reply, depth) {
        let indentation = 'margin-left: ' + (depth * 20) + 'px;';
        let html = '<div id="reply' + reply.replyNo + '" class="reply" style="' + indentation + '" data-reg-id="' + reply.regId + '">';
        html += '<p><strong>' + reply.nickname + '</strong>: <span class="reply-content">' + reply.replyContents + '</span></p>';
        html += '<p><small>' + reply.regDt + '</small></p>';
        html += '<div class="reply-buttons">';
        html += '<button onclick="showReplyForm(' + reply.replyNo + ')">답글</button>';
        
        // 현재 로그인한 사용자의 ID를 JavaScript 변수로 설정
        let currentUserId = '${sessionScope.member.memberId}';
        
        // 댓글 작성자와 현재 로그인한 사용자가 같을 때만 수정, 삭제 버튼 표시
        if (currentUserId === reply.regId) {
            html += '<button onclick="showUpdateReplyForm(' + reply.replyNo + ')">수정</button>';
            html += '<button onclick="doDeleteReply(' + reply.replyNo + ')">삭제</button>';
        }
        
        html += '</div>';
        html += '<div id="replyForm' + reply.replyNo + '" style="display:none;">';
        html += '<textarea id="replyContents' + reply.replyNo + '"></textarea>';
        html += '<button onclick="doSaveReply(' + reply.replyNo + ')">답글 작성</button>';
        html += '</div>';

        if(reply.children && reply.children.length > 0) {
            reply.children.forEach(function(childReply) {
                html += ReplyHtml(childReply, depth + 1);
            });
        }

        html += '</div>';
        return html;
    }
    
    function createPagination(totalCnt, pageSize, currentPage) {
        const totalPages = Math.ceil(totalCnt / pageSize);
        let paginationHtml = '';

        // 이전 페이지 버튼
        paginationHtml += '<li class="page-item ' + (currentPage == 1 ? 'disabled' : '') + '">';
        paginationHtml += '<a class="page-link" href="#" onclick="loadReplies(' + (currentPage - 1) + ')" aria-label="Previous">';
        paginationHtml += '<span aria-hidden="true">&laquo;</span></a></li>';

        // 페이지 번호 버튼
        for (let i = 1; i <= totalPages; i++) {
            paginationHtml += '<li class="page-item ' + (i == currentPage ? 'active' : '') + '">';
            paginationHtml += '<a class="page-link" href="#" onclick="loadReplies(' + i + ')">' + i + '</a></li>';
        }

        // 다음 페이지 버튼
        paginationHtml += '<li class="page-item ' + (currentPage == totalPages ? 'disabled' : '') + '">';
        paginationHtml += '<a class="page-link" href="#" onclick="loadReplies(' + (currentPage + 1) + ')" aria-label="Next">';
        paginationHtml += '<span aria-hidden="true">&raquo;</span></a></li>';

        document.querySelector("#replyPagination").innerHTML = paginationHtml;
    }

    

</script>
</head>
<body>
<%@ include file="/WEB-INF/views/main/header.jsp" %>
<!-- container -->
<div class="container">
  
  <!-- 제목 -->
  <div class="page-header">
      <h2>재난 커뮤니티</h2>  
  </div>
  <!--// 제목 end ------------------------------------------------------------->
  
  <!-- form -->
  <form action="#" class="form-horizontal"  name="regForm" id="regForm">
    <div class="row mb-2" style="display: none;">
        <label for="boardNo" class="col-sm-2 col-form-label">boardNo</label>
        <div class="col-sm-10">
          <input type="hidden" value="<c:out value='${board.boardNo }'/>" name="boardNo" id="boardNo">  
        </div>      
    </div> 
    
    <div class="board-meta">
            등록자: <span class="board-author"><c:out value='${board.nickname}'/></span> | 
            조회수: <span class="board-views"><c:out value='${board.readCnt}'/></span>
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
     
   <input type="hidden" name="regDt" id="regDt" value="<c:out value='${board.regDt}'/>">
  
  </form>
  <!--// form end -->
  
  <!-- 버튼 -->
  <div class="mb-2 d-grid gap-2 d-md-flex justify-content-md-end">
      <input type="button" value="목록"  id="moveToList"    class="btn btn-primary">
       <c:if test="${not empty sessionScope.member and sessionScope.member.memberId eq board.regId}">
      <input type="button" value="수정" id="moveToEdit" class="btn btn-primary" data-board-no="${board.boardNo}">
      <input type="button" value="삭제"  id="doDelete" class="btn btn-primary">
      </c:if>
  </div>
  <!--// 버튼 ----------------------------------------------------------------->
  
  <!-- 댓글 섹션 -->
  <div class="mt-5">
    <h3>댓글</h3>
    
    
     <!-- 댓글 입력 폼 -->
    <form id="replyForm" class="mb-4">
    <input type="hidden" id="parentReply" value="0">
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
  
  <!-- 페이징 컨트롤 추가 -->
    <nav aria-label="Reply navigation" class="mt-4">
        <ul class="pagination justify-content-center" id="replyPagination">
        <!-- 페이징 버튼이 여기에 동적으로 생성됩니다 -->
        </ul>
    </nav>
  
</div>
<%@ include file="/WEB-INF/views/main/footer.jsp" %>
<!--// container end ---------------------------------------------------------->

<%-- bootstrap js --%>
<script src="${CP}/resources/js/bootstrap.bundle.js"></script>
</body>
</html>
