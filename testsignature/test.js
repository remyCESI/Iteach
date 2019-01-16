$('#btnSub').click(function () {

  var test = function convertCanvasToImage(canvas) {
      
        Signature= document.getElementById("canvas").toDataURL("image/png");  
       
        window.location = Signature;


     
    }
    
    console.log(test(canvas));

})





