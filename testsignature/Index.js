$('#btnSub').submit(function () {

    ValNom = $('#nom').val()
    ValPrenom = $('#prenom').val()
    ValObjet = $('#objet').val()
    ValEcole = $('#ecole').val()
    ValPaiement = $('#paiement').val()
    ValAdresse = $('#Adresse').val()
    ValDate = $('#Date').val()
    Canvas = $('#canvas').toDataURL();


    $.post(

        'reçu.php',
        {
            valeurNom: ValNom,
            valeurPrenom: ValPrenom,
            valeurObjet: ValObjet,
            valeurEcole: ValEcole,
            valeurPaiement: ValPaiement,
            valeurAdresse: ValAdresse,
            valeurDate: ValDate,
            Canvas: Canvas
        },
        function (data) {
        },
        "json"
    );
})





