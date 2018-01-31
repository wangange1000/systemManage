function showTime(){
	var date = new Date();
	$('#timeInfo').html();
	$('#timeInfo').html('&nbsp;&nbsp;&nbsp;&nbsp;' + date + "&nbsp;&nbsp;");
}
setInterval(showTime, 1000);

$(function(){
	$(window).resize(function(){
		$('#cc').layout('resize');
	});
});

function view(url){
	$("#iframe").attr('src', url);
}

function addTab(title, url){
	var tab=$("#tt").tabs('exists',title);
	if(tab){
		$("#tt").tabs('select',title);
	}else{
		$("#tt").tabs('add',{
			title: title,
			content:"<iframe widdth='100%' height='100%' id='iframe' frameborder='0' scrolling='auto' src='"+url+"'></iframe>",
		    closable:true
		});
	}
}

function selectAccordion(title){
	$("#accordionPanel").acordion('select', title);
}

