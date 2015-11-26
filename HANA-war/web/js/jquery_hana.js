$(document).ready(function() {
    $("#abas").accordion({collapsible: true, active: false});
    $(".h3A").css("color","red");

   $(".btnMarvel").click(function(){
      $("#histMarvel").prop('disabled',false);
   });
});