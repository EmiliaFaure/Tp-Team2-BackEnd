//With strict mode, you can not, for example, use undeclared variables.
//'use strict';

window.onload = function () {
    var mySubmitButton = document.getElementById("submit001")
    var forms = document.getElementsByClassName('needs-validation');
    var validation = Array.prototype.filter.call(forms, function (form) {
        form.addEventListener('submit', function (event) {
            event.preventDefault();
            event.stopPropagation();
            if (form.checkValidity() === false) {

            } else {
                mySubmitButton.innerHTML = "Sending..."
                mySubmitButton.disabled = true;
                fetch(form.action, { method: 'post', body : new FormData(form)})
                    .then((response) => {
                        if (response.status == 200) {
                        // Agregamos una espera de 3 segundos para dar feedback al usuario..
                            setTimeout( () => {
                            mySubmitButton.innerHTML = "Enviar"
                            mySubmitButton.disabled = false;
                            form.reset()
                            form.classList.remove('was-validated');
                        }, 3000);
                        
                    } else {
                        console.log("Hubo un problema con la petición Fetch:" + response.status);
                        mySubmitButton.innerHTML = "re - intentar";
                        mySubmitButton.disabled = false;
                    }
                    
                    //response.json()
                })
                .catch(function (error) {
                    console.log("Hubo un problema con la petición Fetch:" + error.message);
                });




                //.then(data => console.log(data))
                
            }



            form.classList.add('was-validated');
            //alert("Validando... y enviando a backend...")
            
        }, false);
    });
};

