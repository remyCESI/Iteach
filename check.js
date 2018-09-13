 $('input').keyup( function(){
   console.log('bonjour');

//Id object
var IDname = $("#name").attr("id"); 
var IDfirstName = $("#firstName").attr("id"); 
var IDclasse = $("#classe").attr("id"); 
var IDtypeDoc = $("#subject").attr("id"); 
var IDfichier = $("#fichier").attr("id"); 

//objet 
var name = $("#name"); 
var firstName = $("#first_name");
var classe = $("#classe");
var typeDoc = $("#subject");
var fichier = $("#fichier"); 



//button 

var boutton = $("button");

//param

var check=0;

var filter = /^[a-zA-Z0-9]{3,20}$/;


if(filter.test(name.val()) && filter.test(firstName.val()) &&filter.test(typeDoc.val())&& classe.val()!== "Choisir"){

    if($('.alert-success'))
    {
        if($('.alert-danger')){$('.alert-danger').remove()}
        $('.alert-success').remove()

        $('#formDepot').append('<div class="alert alert-success" role="alert"><i style ="margin-left:10px" id="check" class="fas fa-check-square"></i> Succès</div>')
        
       check=1
    }
    else{
        $('.alert-success').remove()

        $('#formDepot').append('<div class="alert alert-success" role="alert"><i style ="margin-left:10px" id="check" class="fas fa-check-square"></i>Succès</div>')
        check=1
   
    }


    
}
else{

    if($('.alert-danger'))
    {
        if($('.alert-succes')){$('.alert-succes').remove()}
        $('.alert-danger').remove()

        $('#formDepot').append('<div class="alert alert-danger" role="alert"><i style ="margin-left:10px" id="error" class="fas fa-times-circle"></i> Veuillez compléter tous les  champs</div>')

        check=0
    }
    else{
        $('.alert-danger').remove()

        $('#formDepot').append('<div class="alert alert-danger" role="alert"><i style ="margin-left:10px" id="error" class="fas fa-times-circle"></i> Veuillez compléter tous les  champs</div>')
        check=0;
   
    }

    

}


if(check=1 && fichier.val() !==""){

    boutton.css('display', 'block'); 
    boutton.removeAttr('disabled');
    $('.alert-danger').remove()
    if($('.alert-success')){
        $('.alert-success').remove()
    $('#formDepot').append('<div class="alert alert-success" role="alert"><i style ="margin-left:10px" id="check" class="fas fa-check-square"></i>Succès</div>')
    }

}
else{
    $('.alert-danger').remove()

        $('#formDepot').append('<div class="alert alert-danger" role="alert"><i style ="margin-left:10px" id="error" class="fas fa-times-circle"></i> Veuillez compléter tous les des champs</div>')
    
}
   
console.log(check)

})