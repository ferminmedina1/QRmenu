document.addEventListener("DOMContentLoaded", cargarNav)

function cargarNav () {
    
    
    document.querySelector("#btn-menu").addEventListener("click", function () {
        
        let menu = document.querySelector(".menu");
        let i = 0

        document.querySelector("#png-menu").classList.toggle("menuVertical");
        
        let repeticion = setInterval (transition, 1); 
            
        function transition(){
            i++
            let arrNav = menu.childNodes[i];          
                arrNav.classList.toggle("desplegarNav");

            i++
            if(i >= 7){
                clearInterval(repeticion);
            }  
        }
    });
}
