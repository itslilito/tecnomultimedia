/*
  TP5 - Lilo Ortiz 93502/9 - Comisión 3
  Link al video: https://youtu.be/uzKrS7AIR44
*/

//variables para imágenes
var barcoDeGerda, piedra1, piedra2, posX;

//variable para pantallas
var pantalla = 0;

//variable para cronómetro
var contador = 0, inicioCont, finCont = 30000;

//variables para objetos
let objGameManager;

function setup() {
  //se crea la pantalla
  createCanvas(1000,500);
  objGameManager = new gameManager(10, posX);
  
  //inicia la variable del contador
  inicioCont = millis();
}


function draw() {
  background(100,100,255);
  //Cargar imágenes
  
  if(pantalla == 0){
    pantallaInstrucciones();
  }else if(pantalla == 1){
    contador = millis() - inicioCont;
    if(contador >= finCont){
      pantalla = 3;
    }else{
      objGameManager.dibujar();
      text("TIEMPO: " + (int((finCont - contador) / 1000)), 400,10);
    }
  }else if(pantalla == 2){
    pantallaPerdiste();
  }else if(pantalla == 3){
    pantallaGanaste();
  }
}

function keyPressed(){
  objGameManager.keyPresssed(keyCode);
  if(pantalla == 0 && keyCode == ENTER){
    pantalla = 1;
  }if(pantalla == 2 && keyCode == ENTER){
    pantalla = 0;
    contador = 0;
  }if(pantalla == 3 && keyCode == ENTER){
    pantalla = 0;
    contador = 0;
  }
}
