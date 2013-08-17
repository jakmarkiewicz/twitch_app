$(document).ready(function (){
	
	//resize stream window after chat is toggled on/off	
	function hideChat() {
		if($(".chat").is(':hidden')){
			$(".channel").animate({'margin-right': '0px'});
		}
		else {
			$(".channel").animate({'margin-right': '300px'});
		}
	}
	
	//toggle chat
	$(".chat-bar").on('click', 'button', function() {$(".chat").fadeToggle(hideChat);});

});