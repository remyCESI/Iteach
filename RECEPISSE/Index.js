$('#btnSub').click(function () {

    ValNom = $('#nom').val()
    ValPrenom = $('#prenom').val()
    ValObjet = $('#objet').val()
    ValEcole = $('#ecole').val()
    ValPaiement = $('#paiement').val()
    ValAdresse = $('#Adresse').val()
    ValDate = $('#Date').val()
    ValMontant=$('#Montant').val() 
    Canvas = canvas.toDataURL();


    $.post(

        'recu.php',
        {
            valeurNom: ValNom,
            valeurPrenom: ValPrenom,
            valeurObjet: ValObjet,
            valeurEcole: ValEcole,
            valeurPaiement: ValPaiement,
            valeurAdresse: ValAdresse,
            valeurDate: ValDate,
	        valeurMontant: ValMontant,
            Canvas: Canvas
        },
        function (data) {
		document.location="Success.html"

        },
        "json"
    )
.fail(function(){
	document.location="Fail.html"
})
});




