$(document).ready( function() { 
	
	$('#emily_profile').hide();
	$('#neo_profile').hide();
	
	$("#neo").live('click', function() {
		$("#emily").hide();
		$(this).animate({width: '94%', opacity: 1.0, borderRadius: 4}, {setInterval: 50});
		$("#neo_profile").slideDown();
	});
	
	$("#emily").live('click', function() {
		$("#neo").hide();
		$(this).animate({width: '94%', opacity: 1.0, borderRadius: 4}, {setInterval: 50});
		$("#emily_profile").slideDown();
	});
			
});