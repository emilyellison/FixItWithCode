$(document).ready( function() { 

  if ($('#administrators').length) {

    $('.profile').hide();

    $(".pic").live('click', function() {

      $('.pic').parent().hide();
      $(this).parent().show();
      $(this).addClass('stretch');
      $(this).next().slideDown();
    });

    $(".stretch").live("click", function() {

      $(this).removeClass('stretch');      
      $('.profile').hide();
      $('.pic').parent().show();

    });
    
  }

});