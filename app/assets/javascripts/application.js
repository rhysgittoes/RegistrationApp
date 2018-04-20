// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks

//= require_tree .


document.addEventListener('turbolinks:load', function(){



   $("#sign_up_modal_button").click(function(){
      $("#sign_up_modal").modal();
    });

   $("#sign_in_modal_button").click(function(){
      $("#sign_in_modal").modal();
    });


   
  $("#search_bar").keyup(function(e){    
      $.ajax({
         url: "orders/search",
         method: "GET",
         data: $(this).serialize(),
         success: function(data){
            console.log(data)
            var list = document.getElementById("list2");
               list.innerHTML = "";
            data.forEach(function(element){

               var option = document.createElement("option")
               option.value = element
               list.appendChild(option)
            })
         }
      })
    })




});