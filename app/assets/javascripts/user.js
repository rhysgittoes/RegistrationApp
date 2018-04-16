document.addEventListener('turbolinks:load', function(){
 
  $("#basic_information_button").click(function(){

    if ($('#location_information').is(":visible")){
        $("#location_information").fadeToggle( "slow", "linear" ); 
      }
      if ($('#connection_information').is(":visible")){
        $("#connection_information").fadeToggle( "slow", "linear" ); 
      }
      if ($('#finish_area').is(":visible")){
        $("#finish_area").fadeToggle( "slow", "linear" ); 
      }


    $("#basic_information").delay(700).fadeToggle( "slow", "linear" );
   });



  $("#location_information_button").click(function(){

      if ($('#basic_information').is(":visible")){
        $("#basic_information").fadeToggle( "slow", "linear" ); 
      }
      if ($('#connection_information').is(":visible")){
        $("#connection_information").fadeToggle( "slow", "linear" ); 
      }
      if ($('#finish_area').is(":visible")){
        $("#finish_area").fadeToggle( "slow", "linear" ); 
      }
    $("#location_information").delay(700).fadeToggle( "slow", "linear" );  

   });



  $("#connection_information_button").click(function(){

    if ($('#location_information').is(":visible")){
        $("#location_information").fadeToggle( "slow", "linear" ); 
      }
      if ($('#basic_information').is(":visible")){
        $("#basic_information").fadeToggle( "slow", "linear" ); 
      }
      if ($('#finish_area').is(":visible")){
        $("#finish_area").fadeToggle( "slow", "linear" ); 
      }



    $("#connection_information").delay(700).fadeToggle( "slow", "linear" );

   });

  $("#complete_area_button").click(function(){

    if ($('#location_information').is(":visible")){
        $("#location_information").fadeToggle( "slow", "linear" ); 
      }
      if ($('#basic_information').is(":visible")){
        $("#basic_information").fadeToggle( "slow", "linear" ); 
      }
      if ($('#connection_information').is(":visible")){
        $("#connection_information").fadeToggle( "slow", "linear" ); 
      }



    $("#finish_area").delay(700).fadeToggle( "slow", "linear" );
   });


});

 



     


 


