"use strict";



    document.querySelector(".boton1").addEventListener("click", verify);
    
    function verify() {
        let inputs = document.querySelectorAll(".verify-input");
        for (let i = 0; i < inputs.length; i++) {
            let input = inputs[i].value;
            
            if(input.includes("< >")){
                alert("ERROR0" + input);
            }else{
                alert("TA GUCCI + " + input);
            }
        }
        
    }
