$(document).ready(function () {
  
    $.get(
            "buildRecepisse.php",
            function(data)
            { 
              console.log(data);
            },
            
          )
              })
       
  