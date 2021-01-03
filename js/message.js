document.addEventListener("DOMContentLoaded", cargar)

function cargar () {
    
    let message = document.getElementById("avisoCaptcha");

    if(message.childNodes.length != 0){
        document.querySelector("#avisoCaptcha").classList.toggle("message");
    }
}
