  // TP4 - Lilo Ortiz 93502/9 - Comisión 3
  // Link al video: https://youtu.be/NyYnizsFD_s
  
  //variable para las pantallas
  var p = 0;
  
  //variables para imágenes
  var arqueroJ1, arqueroJ2, orbe, fondo;
  
  //variables para fuentes
  var fTitulo, fCuerpo;
  
  //variables para escudo
  var opacidadEscudo1 = 10, opacidadEscudo2= 0, escudo1Act = false, escudo2Act = false;
  
  //variables para disparar
  var opDisparoJ1 = 0, opDisparoJ2 = 0, posOrbe1 = 960, posOrbe2 = 330;
  
  //variables para vida
  var vidaJ1 = 100, vidaJ2 = 100;
  
  
function setup() {
  //pantalla juego
  createCanvas(1345,648);
 
  
}

function preload(){
  //Cargar imágenes
  arqueroJ1=loadImage("assets/mago2.png");
  arqueroJ2=loadImage("assets/mago.png");
  orbe=loadImage("assets/orbe.png");
  fondo=loadImage("assets/Forest.jpg");

}


//funciones
function pantallaMenu(){
  image(fondo,0,0,1345,648);

  //Título
  fill(0,55,0);
  noStroke();
  rect(532.5,34,280,76);
  
  textAlign(CENTER,LEFT);
  fill(255);
  textSize(76);
  text("ArSher",672.5,100);
  
  //Botón jugar
  if(mouseX > 537.5 & mouseX < 808 & mouseY > 238 & mouseY < 310){
    fill(0,55,55);
  }else{
    fill(0,55,0);
  }
  noStroke();
  rect(537.5,238,270.5,72);
  
  textAlign(CENTER,LEFT);
  fill(255);
  textSize(24);
  text("Jugar",672.5,283);
  
  //Botón cómo jugar
  if(mouseX > 537.5 & mouseX < 808 & mouseY > 338 & mouseY < 410){
    fill(0,55,55);
  }else{
    fill(0,55,0);
  }
  noStroke();
  rect(537.5,338,270.5,72);
  
  textAlign(CENTER,LEFT);
  fill(255);
  textSize(24);
  text("Cómo jugar",672.5,383);
  
  //Botón créditos
  if(mouseX > 537.5 & mouseX < 808 & mouseY > 438 & mouseY < 510){
    fill(0,55,55);
  }else{
    fill(0,55,0);
  }
  noStroke();
  rect(537.5,438,270.5,72);
  
  textAlign(CENTER,LEFT);
  fill(255);
  textSize(24);
  text("Créditos",672.5,483);
}

//Pantalla de Juego
function pantallaDeJuego(){
  tint(255, 255);
  image(fondo,0,0,1345,648);
  image(arqueroJ2,30,148,350,500);
  image(arqueroJ1,975,148,350,500);
  
  fill(151,182,10,opacidadEscudo1);
  noStroke();
  rect(400,148,30,500,30);
  
  fill(151,182,10,opacidadEscudo2);
  rect(930,148,30,500,30);
  
  tint(255,opDisparoJ2);
  image(orbe,posOrbe2,238,55,50);
  
  tint(255,opDisparoJ1);
  image(orbe,posOrbe1,238,55,50);
  
  tint(255,255);
  stroke(0);
  fill(0,55,55);
  rect(140,100,120,40);
  noStroke();
  fill(255,0,0);
  rect(150,110,vidaJ2,20);
  
  tint(255,255);
  stroke(0);
  fill(0,55,55);
  rect(1085,100,120,40);
  noStroke();
  fill(255,0,0);
  rect(1095,110,vidaJ1,20);
}

//Como jugar
function pantallaComoJugar(){
  image(fondo,0,0,1345,648);
  
  fill(0,55,0);
  noStroke();
  rect(50,50,1245,548);
  
  //Título
  textAlign(CENTER,LEFT);
  fill(255);
  textSize(76);
  text("¿Cómo jugar?",672.5,130);
  
  //Texto
  textAlign(LEFT,LEFT);
  fill(255);
  textSize(24);
  text("JUGADOR 1: presioná la FLECHA ARRIBA para activar el escudo y la FLECHA IZQUIERDA para disparar",65,250);
  text("JUGADOR 2: presioná la TECLA W para activar el escudo y la TECLA D para disparar.",65,300);
  text("Dispará orbes para matar al otro jugador y activá el escudo para detener los orbes contrarios.",65,350);
  
  //Botón volver
  textSize(24);
  fill(0,55,55);
  if(mouseX > 622.5 & mouseX < 722.5 & mouseY > 550 & mouseY < 582){
    fill(0,55,55);
  }else{
    fill(255);
  }
  text("Volver",672.5,574);

}

//Créditos
function pantallaCreditos(){
  image(fondo,0,0,1345,648);
  
  fill(0,55,0);
  noStroke();
  rect(50,50,1245,548);
  
  //Título
  textAlign(CENTER,LEFT);
  fill(255);
  textSize(76);
  text("Créditos",672.5,130);
  
  //Texto
  textAlign(CENTER,LEFT);
  fill(255);
  textSize(24);
  text("Programación: Lilo Ortiz, 93502/9, comisión 3.",672.5,200);
  text("Créditos por las mágenes y arte a quien corresponda",672.5,228);
  
  //Botón volver
  textSize(24);
  fill(0,55,55);
  if(mouseX > 622.5 & mouseX < 722.5 & mouseY > 550 & mouseY < 582){
    fill(0,55,55);
  }else{
    fill(255);
  }
  text("Volver",672.5,574);
}

function pantallaFinal(){
  image(fondo,0,0,1345,648);
  
  fill(0,55,0);
  noStroke();
  rect(50,50,1245,548);
  
  //Título
  textAlign(CENTER,LEFT);
  fill(255);
  textSize(76);
  if(vidaJ1 === 0){
    text("¡Jugador 2 gana!",672.5,236);
  }else{
    text("¡Jugador 1 gana!",672.5,236);
  }
  
  //Botón volver
  textSize(24);
  fill(0,55,55);
  if(mouseX > 622.5 & mouseX < 722.5 & mouseY > 550 & mouseY < 582){
    fill(0,55,55);
  }else{
    fill(255);
  }
  text("Volver",672.5,574);
}

function draw() {
  //Menú
  if (p===0){
    pantallaMenu();
  }
  else if(p===1){
    pantallaDeJuego();
    if(opDisparoJ2 === 255){
      posOrbe2 = posOrbe2 + 10;
      if(posOrbe2 > 930 & posOrbe2 < 960 & escudo2Act == true){
         opDisparoJ2 = 0;
         posOrbe2 = 330; 
       }else if(posOrbe2 > 930 & posOrbe2 < 960 & escudo2Act == false){
         opDisparoJ2 = 0;
         vidaJ1 = vidaJ1 -25;
         posOrbe2 = 330;
       }
    }else if(opDisparoJ1 === 255){
      posOrbe1 = posOrbe1 - 10;
      if(posOrbe1 > 400 & posOrbe1 < 430 & escudo1Act == true){
         opDisparoJ1 = 0;
         posOrbe1 = 960;
       }else if(posOrbe1 > 400 & posOrbe1 < 430 & escudo1Act == false){
         opDisparoJ1 = 0;
         vidaJ2 = vidaJ2 -25;
         posOrbe1 = 960;
       }
    }
    if(vidaJ1 <= 0){
      p = 4;
    }else if(vidaJ2 <= 0){
      p = 4;
    }
  }
  //Instrucciones
  else if (p===2){
    pantallaComoJugar();
  }
  //
  else if(p==3){
    pantallaCreditos();
  }
  else if(p==4){
    pantallaFinal();
  }
}

function mousePressed(){
  if(p===0 & mouseX > 537.5 & mouseX < 808 & mouseY > 238 & mouseY < 310 ){
    p=1;
  }else if(p===0 & mouseX > 537.5 & mouseX < 808 & mouseY > 338 & mouseY < 410){
    p=2;
  }else if(p===0 & mouseX > 537.5 & mouseX < 808 & mouseY > 438 & mouseY < 510){
    p=3;
  }else if(p==3 & mouseX > 622.5 & mouseX < 722.5 & mouseY > 550 & mouseY < 582){
    p=0;
  }else if(p==2 & mouseX > 622.5 & mouseX < 722.5 & mouseY > 550 & mouseY < 582){
    p=0;
  }else if(p==4 & mouseX > 622.5 & mouseX < 722.5 & mouseY > 550 & mouseY < 582){
    p=0;
    vidaJ1 = 100;
    vidaJ2 = 100;
  }
}

function keyPressed(){
   if(p===1 & keyCode === UP_ARROW){
     opacidadEscudo2 = 150;
     escudo2Act = true;
   }else if(p===1 & key === 'w' || key === 'W'){
     opacidadEscudo1 = 150;
     escudo1Act = true;
   }else if(p=== 1 & keyCode === LEFT_ARROW){
       opDisparoJ1 = 255;
   }else if(p===1 & key === 'd' || key === 'D'){
     if (posOrbe2 < 960){
       opDisparoJ2 = 255;
       }
     }
}

function keyReleased(){
  if(p === 1 & keyCode === UP_ARROW){
    opacidadEscudo2 = 0;
    escudo2Act = false;
  }else if(p === 1 & key === 'w' || key === 'W'){
    opacidadEscudo1 = 0;
    escudo1Act = false;
  }
}
