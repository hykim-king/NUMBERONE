function menuGo(url) {
	
	//http변환
	if(url.indexOf('http:') != '-1' || url.indexOf('https:') != '-1'){
		url = url.replace('/idsiSFK','').replace(/\?menuSeq=[^&]*/, '');
	}
	
	//팝업오픈
	if(url.indexOf('popup:') != '-1'){
		var targetUrl = url.replace('popup:','').replace(/\?menuSeq=[^&]*/, '');
		window.open(targetUrl);
	}
	else{
		location.href = url;
	}
}