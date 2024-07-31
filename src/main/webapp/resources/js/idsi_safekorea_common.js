/*브라우저 정보확인*/
function get_version_of_IE () { 
	var word; 
	var version = "N/A"; 

	var agent = navigator.userAgent.toLowerCase(); 
	var name = navigator.appName; 

	// IE old version ( IE 10 or Lower ) 
	if ( name == "Microsoft Internet Explorer" ) word = "msie "; 
	else { 
	// IE 11 
	if ( agent.search("trident") > -1 ) word = "trident/.*rv:"; 

	// Microsoft Edge  
	else if ( agent.search("edge/") > -1 ) word = "edge/"; 
	} 

	var reg = new RegExp( word + "([0-9]{1,})(\\.{0,}[0-9]{0,1})" ); 
	if (  reg.exec( agent ) != null  ) version = RegExp.$1 + RegExp.$2; 

	return version; 
}

function userModify2(){
	
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
		
			var testExpr = /:.*실.*단/;
			var case1 = testExpr.test(v);		
			if(case1){
				expr =  /(:.*(과|단|청|부|처|관|센터)).*?\(/g
			}					
			
			/*testExpr = /:.*부.*과/;
			var case2 = testExpr.test(v);			
			if(case2){
				expr = /(:.*(과|실|청)).*?\(/g
			}		
			*/
			//보건의료재난
			testExpr = /.*부.*과/;		
			var case3 = testExpr.test(v);			
			if(case3){		
				expr =  /(:.*(과|실|청|처|관|센터)).*?\(/g
			}		
			
			var testExpr = /:.*실.*센터/;
			var case1 = testExpr.test(v);		
			if(case1){
				expr =  /(:.*(과|센터|청|부|처|관)).*?\(/g
			}	
			
			var newText = v.replace(expr,'$1 (');
			newText = newText.replace(/\), [^()]*\(/g, '), (');	
			//$this.append(newText);
			$this.append('<br>' + newText);
		});
	 });
}

 
window.addEventListener('DOMContentLoaded', function(){
	if(typeof commonFlag == 'undefined'){
		userModify2();
	}
});


//*************************************************************************
//
//*************************************************************************
function fn_openDownPop(filePath, fileNm, dstrTyCd){
	var options = {
			id         : 'popupID',
			type       : 'window',
			width      : '800px',
			height     : '700px',
			top        : 50,
			left       : 150,
			popupName  : '팝업',
			style      : '',
			modal      : true,
			useIFrame  : false,
			resizable  : true,
			status     : false,
			menubar    : false,
			scrollbars : false,
			title      : false,
			dataObject : {}
	};
	//var tycd = dm_searchInfo.get("dstrTyCd1");
	//CommonUtil.openPopup("/idsiSFK/neo/sfk/cs/contents/prevent/SDIJKM5100_pop01.jsp?filePath=" + encodeURI(encodeURIComponent(filePath)) + "&fileNm=" + encodeURI(encodeURIComponent(fileNm)) + "&tycd=" + tycd, options)
	var url = "/idsiSFK/neo/sfk/cs/contents/prevent/SDIJKM5100_pop01.jsp?filePath=" + encodeURI(encodeURIComponent(filePath)) + "&fileNm=" + encodeURI(encodeURIComponent(fileNm)) + "&tycd=" + dstrTyCd;
	var opt = "width=670,height=670"
	var w = open(url, "popupID", opt)
}

function fn_relDownPop(filePath, fileNm){

	// 동영상 파일 다운로드 test 시.... 아래 host로 요청시 encoding 이 한번 더 되어 다운로드 파일을 찾지 못하는 부분이 있음... 운영환경에서는 확인 필요함...  
	var host = "http://www.safekorea.go.kr";
	var url = host+"/idsiSFK/sfk/ca/cac/fil/downfile.do?filePath=" + (encodeURIComponent(filePath)) + "&fileNm=" + (encodeURIComponent(fileNm));
	
//	var url = host+"/idsiSFK/sfk/ca/cac/fil/downfile.do?filePath=" + encodeURI(encodeURIComponent(filePath)) + "&fileNm=" + encodeURI(encodeURIComponent(fileNm));
	window.open(url)
}
