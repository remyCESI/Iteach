$(document).ready(function(){
    
    
  
    $("#formCo").submit(function(){
  
      
      var telephone = $(this).find('#telephone').val();
      var sujet= $(this).find('#sujet').val();
      var nom= $(this).find('#nom').val();
      var email= $(this).find('#email').val();
      var message= $(this).find('#message').val();

      console.log(subject)
  
      $.post(
        'sendMail.php',
        {
            telephone: telephone,
            sujet: sujet,
            email :email,
            nom: nom,
            message: message

  
      },
      'json'
   );
  return false;
      
  
  });
  
  });