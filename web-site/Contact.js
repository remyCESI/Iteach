$(document).ready(function(){
    
    
  
    $("#formCo").submit(function(){
  
      
      var telephone = $(this).find('#telephone').val();
      var sujet= $(this).find('#sujet').val();
      var email= $(this).find('#email').val();
      var message= $(this).find('#message').val();

      console.log(subject)
  
      $.post(
        'SendMail.php',
        {
            telephone: telephone,
            sujet: sujet,
            email :email,
            message: message

  
      },
      'json'
   );
  return false;
      
  
  });
  
  });