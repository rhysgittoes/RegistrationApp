document.addEventListener('turbolinks:load', function(){
 
  $("#basic_information_button").click(function(){
    $("#basic_information").fadeToggle( "slow", "linear" );
   });



  $("#location_information_button").click(function(){
    $("#basic_information").fadeToggle( "slow", "linear" );  
    $("#location_information").delay(700).fadeToggle( "slow", "linear" );  
   });



  $("#connection_information_button").click(function(){
    // $("#location_information").css("display" == 'none');
    $("#connection_information").fadeToggle( "slow", "linear" );
   });

  $("#complete_area_button").click(function(){
    $("#finish_area").fadeToggle( "slow", "linear" );
   });


});

 



     


 


