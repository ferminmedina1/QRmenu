document.addEventListener("DOMContentLoaded", cargarNav)

function cargarNav () {
    
    
    document.querySelector("#btn-menu").addEventListener("click", function () {
        
        let menu = document.querySelector(".navigator");


        document.querySelector("#png-menu").classList.toggle("menuVertical");
        
        menu.classList.toggle("desplegarNav");
    });
}
