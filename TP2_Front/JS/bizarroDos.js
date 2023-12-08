import { addItemList } from "./helper.js"

var Placeholder = document.getElementById("placeholder")


fetch('https://emiliafaure76.pythonanywhere.com/bizarroDos')
    .then(response => response.json())
    .then(data => { 
        console.log(data)
        for (var pelicula of data) {
            addItemList(Placeholder, pelicula.nombre)
            addItemList(Placeholder, pelicula.sinopsis)
           
        } 
    })