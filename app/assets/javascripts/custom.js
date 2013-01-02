$(document).ready( function() { 
	
	$('#emily_profile').hide();
	$('#neo_profile').hide();
	
	$("#neo_pic").live('click', function() {
		$('#emily_pic').hide();
		$(this).addClass('stretch');
		$("#neo_profile").slideDown();
	});
	
	$("#emily_pic").live('click', function() {
		$('#neo_pic').hide();
		$(this).addClass('stretch');
		$("#emily_profile").slideDown();		
	});
			
});