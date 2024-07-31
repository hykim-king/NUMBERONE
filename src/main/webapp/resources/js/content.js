$(function(){
    var idx = 0;
	var tabBtn = $(".tablist > li a");
	var tabBtnParent = $(".tablist > li");
	var content = $(".tabarea > div");
	
	if(tabBtnParent.length != 0){
		tabBtn.each(function(idx){//tab 갯수만큼 루프돌아서 
			content.prepend('<h2 class="ir">'+$(this).text()+'</h2> ');//현재 내용이 어떤 tab에 대한 내용인지 여부를 알려주기위한 태그 추가
		})
	}
	tabBtn.click(function(){
		idx=$(this).parent().index();
		
		$(this).parent().addClass("on").attr('title','선택됨');
		$(this).parent().siblings().removeClass("on").attr('title','');
		content.eq(idx).addClass("on");
		content.eq(idx).siblings().removeClass("on");
	});
	//enter 이벤트 추가
	tabBtn.keydown(function(event) {
		if (event.keyCode == 13) {
			idx=$(this).parent().index();
			
			$(this).parent().addClass("on").attr('title','선택됨');
			$(this).parent().siblings().removeClass("on").attr('title','');
			content.eq(idx).addClass("on");
			content.eq(idx).siblings().removeClass("on");
		}
	});

});
