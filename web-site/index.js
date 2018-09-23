

// calcul to resize the window


       
 
if( $(window).width() < 350){

    $('#logo').attr('src','img/logoSM.png');

}


// SIDEBAR
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    $("#topBar").css("display","none");
    $("#formCo").css("z-index","-10");
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    $("#topBar").css("display","block");
    $("#formCo").css("z-index","1");
}




 

        $(function(){
  
            var scrollY = function(){
                var supportPageOffset = window.pageXOffset !== undefined;
        var isCSS1Compat = ((document.compatMode || "") === "CSS1Compat");
        
        
        return supportPageOffset ? window.pageYOffset : isCSS1Compat ? document.documentElement.scrollTop : document.body.scrollTop;
            }
        
            $(window).scroll(function(){
                var container = document.getElementById('topBar')
                var element = document.getElementById('topBar').getBoundingClientRect().top
                var element2 = document.getElementById('offre').getBoundingClientRect().top
                var element1 = element + scrollY()
               
        
                if(scrollY()>element){
                    container.classList.add('fixed-top')
                    
                    if(scrollY()>element2){
                        $('#topBar').css('background-color','')
                    }
                }
                else{
                    container.classList.remove('fixed-top')
                    
                        $('#topBar').css('background-color','')

                        $(window).resize();
                    
                }
              
        
                
                   
                
            
            })
          
        });


        $('a[href^="#"]').click(function(){
            var the_id = $(this).attr("href");
            if (the_id === '#') {
                return;
            }
            $('html, body').animate({
                scrollTop:$(the_id).offset().top
            }, 1000);
            return false;
        });
    



      $(".carousel").carousel({
          interval: 1000
      })