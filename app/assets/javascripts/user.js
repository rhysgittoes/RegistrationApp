document.addEventListener('turbolinks:load', function(){
 
  $("#basic_information_button").click(function(){

      if ($('#location_information').is(":visible")){
        $("#location_information").fadeToggle(  "linear" );
        $("#location_chevron_information_container").fadeToggle(  "linear");  
      }
      if ($('#connection_information').is(":visible")){
        $("#connection_information").fadeToggle(  "linear" );
        $("#connection_chevron_information_container").fadeToggle(  "linear"); 
      }
      if ($('#finish_area').is(":visible")){
        $("#finish_area").fadeToggle(  "linear" );
        $("#finish_chevron_information_container").fadeToggle(  "linear"); 
      }
      $("#basic_information").delay(700).fadeToggle(  "linear" );
      $("#basic_chevron_information_container").fadeToggle(  "linear");
   });



  $("#location_information_button").click(function(){

      if ($('#basic_information').is(":visible")){
        $("#basic_information").fadeToggle(  "linear" ); 
        $("#basic_chevron_information_container").fadeToggle(  "linear"); 
      }
      if ($('#connection_information').is(":visible")){
        $("#connection_information").fadeToggle(  "linear" );
        $("#connection_chevron_information_container").fadeToggle(  "linear"); 
      }
      if ($('#finish_area').is(":visible")){
        $("#finish_area").fadeToggle(  "linear" );
        $("#finish_chevron_information_container").fadeToggle(  "linear"); 
      }
    $("#location_information").delay(700).fadeToggle(  "linear" );
    $("#location_chevron_information_container").fadeToggle(  "linear");  

   });



  $("#connection_information_button").click(function(){

      if ($('#location_information').is(":visible")){
        $("#location_information").fadeToggle(  "linear" ); 
        $("#location_chevron_information_container").fadeToggle(  "linear"); 
      }
      if ($('#basic_information').is(":visible")){
        $("#basic_information").fadeToggle(  "linear" );
        $("#basic_chevron_information_container").fadeToggle(  "linear"); 
      }
      if ($('#finish_area').is(":visible")){
        $("#finish_area").fadeToggle(  "linear" ); 
        $("#finish_chevron_information_container").fadeToggle(  "linear");
      }
      $("#connection_information").delay(700).fadeToggle(  "linear" );
      $("#connection_chevron_information_container").fadeToggle(  "linear"); 

   });

  $("#complete_area_button").click(function(){

      if ($('#location_information').is(":visible")){
        $("#location_information").fadeToggle(  "linear" ); 
        $("#location_chevron_information_container").fadeToggle(  "linear"); 
      }
      if ($('#basic_information').is(":visible")){
        $("#basic_information").fadeToggle(  "linear" );
         $("#basic_chevron_information_container").fadeToggle(  "linear"); 
      }
      if ($('#connection_information').is(":visible")){
        $("#connection_information").fadeToggle(  "linear" );
        $("#connection_chevron_information_container").fadeToggle( "linear");
      }
      $("#finish_area").delay(700).fadeToggle(  "linear" );
      $("#finish_chevron_information_container").fadeToggle( "linear");

   });


  // Next buttons



  $("#from_basic_information_to_location_information").click(function(event){
    event.preventDefault()
    $("#basic_information").fadeToggle(  "linear" );
    $("#basic_chevron_information_container").fadeToggle(  "linear");

    $("#location_information").delay(700).fadeToggle(  "linear" );
    $("#location_chevron_information_container").delay(700).fadeToggle(  "linear");  
  })

  $("#from_location_to_connection_information").click(function(event){
    event.preventDefault()
    $("#location_information").fadeToggle(  "linear" );
    $("#location_chevron_information_container").fadeToggle(  "linear");
      
    $("#connection_information").delay(700).fadeToggle(  "linear" );
    $("#connection_chevron_information_container").delay(700).fadeToggle(  "linear");  
  })

  $("#from_connection_to_finish_area").click(function(event){
    event.preventDefault()
    $("#connection_information").fadeToggle(  "linear" );
    $("#connection_chevron_information_container").fadeToggle(  "linear");
      
    $("#finish_area").delay(700).fadeToggle(  "linear" );
    $("#finish_chevron_information_container").delay(700).fadeToggle(  "linear");  
  })

  



  // Previous buttons
  

  $("#from_location_to_basic_information").click(function(event){
    event.preventDefault()
    $("#location_information").fadeToggle(  "linear" );
    $("#location_chevron_information_container").fadeToggle(  "linear");

    $("#basic_information").delay(700).fadeToggle(  "linear" );
    $("#basic_chevron_information_container").delay(700).fadeToggle(  "linear"); 
  });


  

  $("#from_connection_to_location_information").click(function(event){
    event.preventDefault()
    $("#connection_information").fadeToggle(  "linear" );
    $("#connection_chevron_information_container").fadeToggle(  "linear");

    $("#location_information").delay(700).fadeToggle(  "linear" );
    $("#location_chevron_information_container").delay(700).fadeToggle(  "linear"); 
  });



  $("#from_finish_to_connection_information").click(function(event){
    event.preventDefault()
    $("#finish_area").fadeToggle(  "linear" );
    $("#finish_chevron_information_container").fadeToggle(  "linear");

    $("#connection_information").delay(700).fadeToggle(  "linear" );
    $("#connection_chevron_information_container").delay(700).fadeToggle(  "linear"); 
  });





// Lightbox admin stuff
    $(".modal_button").click(function(){
      $("#exampleModalCenter").modal();
       var user_id = $(this).attr('id');
       var modal_id = "#modal_id_" + user_id
       console.log(modal_id)
       $(modal_id).modal();
     

       // var user_image = "<%=@users.find(id="+ user_id +").isp_bill%>"
       // 
       // console.log(user_image)
       // $("#modal_image").attr("src", user_image);
    });
 


});


     


 


