var jdata;
var pageIndex = 1;
var pageSize;
var jdataRn;
var jdata2;
var jdata1;

var commonFlag = true;

 PClass = {
   pAjax : function(url,params,dataType="html",type="GET",async=true,_callback){
          //code
          console.log("┌───────────────────┐");
          console.log("│ ajaxCall()        │");
          console.log("└───────────────────┘");
          
          console.log("1. url:"+url);
          console.log("2. dataType:"+dataType);
          console.log("3. type:"+type);
          
          
          params.url = url;
          
          let paramArray = Object.keys(params);
          if(paramArray.length > 0){
              console.log("4. params --------");
              for(let i =0; i<paramArray.length; i++){
                  console.log(paramArray[i] + ": " + params[paramArray[i]]);
              }
              console.log("params end --------");
          }
          
          return $.ajax({
                    type: type, 
                    url: url,
                    async: async,
                    dataType:dataType,
                    data:params,
                    success:function(response){//통신 성공
                        console.log("success response:",response);
                        _callback(response)
                    },
                    error:function(response){//실패시 처리
                        console.error("error:"+response);
                    }
             });
      }
    }

function userModify1(){
	
	 $('strong:contains("소관부서")').each(function() {
		$this = $(this);
		
		var text =  $this.html();
		//var text = '소관부서 : 소방청 생활안전과 김미진(044-205-7666) '
		//var newText = text.replace(/(:.*(과|실|청|부))[^()]*\(/g, '$1 (');
	
		var strArr = text.split('<br>');
		
	
		$this.empty();
			
		$.each(strArr,function(i,v){
		
			var expr = /(:.*(과|실|청|부|처|관|센터)).*?\(/g
	        //var expr = /(:.*과).*\(/g				
			//해양 선박사고
			//전기·가스사고
			//미세먼지
			//보건의료재난
			
			//처: 석유제품 사고
			//관: 화재
		
			//case1
			var testExpr = /:.*실.*단/;
			var case1 = testExpr.test(v);		
			if(case1){
				expr =  /(:.*(과|단|청|부|처|관|센터)).*?\(/g
			}					
			
			//case2
			/*testExpr = /:.*부.*과/;
			var case2 = testExpr.test(v);			
			if(case2){
				expr = /(:.*(과|실|청)).*?\(/g
			}		
			*/
			
			//case3 보건의료재난
			testExpr = /.*부.*과/;		
			var case3 = testExpr.test(v);		
				
			if(case3){		
				//expr =  /(.*(과|실|청|처|관)).*?\(/g
				expr =  /(.*(과|실|청|처|센터)).*?\(/g
			}		
			
			//case4
			var testExpr = /:.*실.*센터/;
			var case4 = testExpr.test(v);		
			if(case4){
				expr =  /(:.*(과|센터|청|부|처|관)).*?\(/g
			}	
			
			//console.log(v);
			//console.log(expr);
			var newText = v.replace(expr,'$1 (');
			newText = newText.replace(/\), [^()]*\(/g, '), (');				
					
			$this.append('<br>' + newText);
		});
	 });
}


$().ready(function(){
	init();
	$(".content").hide();
	$("#header_include").hide();
	$("#footer_include").hide();
	if(location.href.indexOf("main.html") != -1) {
		$(".linksite").hide();
	}

	userModify1();

});


$(window).load(function(){
	$(".content").show();
	$("#header_include").show();
	$("#footer_include").show();
	if(location.href.indexOf("main.html") != -1) {
		$(".linksite").show();
	}
});

function init() {	
	setIncludeHTML();
	
//	if(location.href.indexOf("disasterDataLIst.html") != -1 || location.href.indexOf("disasterNewsList.html") != -1 || location.href.indexOf("accidentMsgList.html") != -1) {
//		search();
//	} else if(location.href.indexOf("disasterDataView.html") != -1 || location.href.indexOf("disasterNewsView.html") != -1) {
//		setView();
//	}
}

function setIncludeHTML() {
	var includeList = document.querySelectorAll("[data-include]");
	for (i = 0; i < includeList.length; i++) {
		(function (i) {
			var el = includeList.item(i);
			var url;
			if(el.dataset) {
				url = el.dataset.include;
			} else {
				url = el.getAttribute("data-include");
			}
			
			$("#" + el.id).load(url);
		})(i);
	}
}
//Rn : 도로명주소 조회
function readJSONFile(fileName, arcd, Rn) {
	fileReader = new XMLHttpRequest();
	
	if(!isNull(arcd)) {
		if(fileName.indexOf("lecintroFl") == -1) {
			fileName = fileName + "/" + fileName + "_" + arcd;
		} else {
			fileName = "lecintro/lecintro.jsonFlList_" + arcd;
		}
	} else if(fileName.indexOf("/arcd") == -1) {
		fileName = fileName + "/" + fileName;
	}
	
	fileReader.onreadystatechange = function() {
		if (fileReader.readyState == "4" && fileReader.status == "200") {
			var properties = JSON.parse(fileReader.responseText);
			
			if(fileName.indexOf("sido") != -1) {								// 시도 목록 호출 시
				setArcd1Select_callBack(properties);
				if(Rn=='Y'){setArcdRn1Select_callBack(properties);}
					
			} else if(fileName.indexOf("sgg") != -1) {							// 시군구 목록 호출 시
				if(Rn=='Y'){
					if(document.getElementById("sbRnArea2").value != "5690000")	
						setArcdRn2Select_callBack(properties);
						}
				if(isNull(Rn)){
					if(document.getElementById("sbLawArea2").value != "5690000") {
					setArcd2Select_callBack(properties);
				} else {														// 세종시 내의 읍면동 목록 호출 시
					setArcd3Select_callBack(properties);
				}
				}
			} else if(fileName.indexOf("emd") != -1) {							// 읍면동 목록 호출 시
				setArcd3Select_callBack(properties);
			} else if(fileName.indexOf("lecintro_") != -1) {					// 민방위 교육 개요 호출 시
				jdata = properties;
				
				setHTML();
			} else if(fileName.indexOf("main") != -1) {							// 메인 컨텐츠 호출 시
				setHTMLList(properties);
			} else {															// 시설물, 연락처, 재난소식 목록 호출 시
				jdata = properties;
				
				pageIndex = 1;
				pageSize = parseInt(jdata.length / 10) + 1;
				if(jdata.length != 0 && parseInt(jdata.length % 10) == 0) {
					pageSize -= 1;
				}
				
				// JSON 객체 화면 세팅
				setHTMLList();
			}
		}
	};

	// 현재 날짜와 시간을 가져오기
	var now = new Date();

	// 년, 월, 일, 시, 분, 초 정보 가져오기
	var year = now.getFullYear();
	var month = (now.getMonth() + 1 < 10 ? '0' : '') + (now.getMonth() + 1);
	var day = (now.getDate() < 10 ? '0' : '') + now.getDate();
	var hours = (now.getHours() < 10 ? '0' : '') + now.getHours();
	var minutes = (now.getMinutes() < 10 ? '0' : '') + now.getMinutes();
	var seconds = (now.getSeconds() < 10 ? '0' : '') + now.getSeconds();

	// 'YYYYMMDDHHMMSS' 형태로 날짜 및 시간 문자열 만들기
	var formattedDateTime = year + month + day + hours + minutes + seconds;

	fileReader.open('GET', encodeURI("/idsiSFK/neo/ext/json/" + fileName + ".json?datetime="+formattedDateTime), true);
	fileReader.send(null);
}
//급수시설
function waterListRn(){ 
	var jdata1;
	var promise = jQuery.ajax({
           url:"/idsiSFK/sfk/ca/cac/are2/waterList.do",
           type:"POST",
           dataType:"json",
           data:{'rnCd' :$("#rdn_code").val(), 'rn': $("#rn").val(),'type':"1"},
           async:false
     });
	promise.done(successFunction);
	promise.fail(failFunction);
	}
//대피시설
function evaListRn(){ 
	var jdata1;
	var promise = jQuery.ajax({
           url:"/idsiSFK/sfk/ca/cac/are2/waterList.do",
           type:"POST",
           dataType:"json",
           data:{'rnCd' :$("#rdn_code").val(), 'rn': $("#rn").val(), 'type':"2"},
           async:false
     });
	promise.done(successFunction);
	promise.fail(failFunction);
	}
function successFunction(jdataRn,textStatus){
 	/* console.log(jdataRn.List);
 	console.log(jdataRn.List[0]);
	jdata1=jdataRn;*/
 	jdata=jdataRn.List;//사용
 	/*jdataRn=jdataRn;
 	console.log("a"+jdataRn);
 	jdata1=jdataRn.List;
 	console.log(jdata);*/
	pageIndex = 1;
	pageSize = parseInt(jdata.length / 10) + 1;
	if(jdata.length != 0 && parseInt(jdata.length % 10) == 0) {
		pageSize -= 1;
	}
 	setHTMLList();
	
    }
 function failFunction(request,status,error){
     alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
    }
function prevPage() {
	if(pageIndex != 1){
		pageIndex -= 1;
		document.getElementById("tbpageindex").innerHTML = pageIndex;
		setHTMLList();
	}
}

function nextPage() {
	if(pageIndex < pageSize){
		pageIndex += 1;
		document.getElementById("tbpageindex").innerHTML = pageIndex;
		setHTMLList();
	}
}

function pageGo() {
	var i = document.getElementById("iptpageinput").value;
	
	if(i <= pageSize && i > 0){
		pageIndex = i;
		document.getElementById("tbpageindex").innerHTML = pageIndex;
		setHTMLList();
	}
}

function getParameterByName(name) {
	name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
	var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
		results = regex.exec(location.search);
	
	return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

function isNull(comp) {
	if(comp == "" || comp == undefined || comp == null)
		return true;
	else
		return false;
}

/**
 * 입력 값이 비어있는지 확인하는 함수 
 * @param {any} value : 입력값
 * @returns {boolean} 비어 있으면 true, 그렇치 않으면 false
 */ 
let isEmpty  = function(value){
  
  if(null === value || value == undefined){
    return true;
  }
  
  if(typeof value === 'string' && value.trim() === ''){
    return true;
  }
  
  if(Array.isArray(value) && value.length === 0){
    return true;
  }
  
  return false;
}
