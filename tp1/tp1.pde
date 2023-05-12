/*
Lilo Ortiz - Comisión 3 - 93502/9
TP1
*/

//Declaración de variables
PImage imagenInicio;
PImage imagen2;
PImage imagen3;
PImage imagen4;
PImage imagen5;

int estado = 0;

float yPantalla1 = -130;
float xPantalla2 = 620;
float yPantalla3 = -24;

PFont fuente1;
PFont fuente2;
PFont fuente3;

String titulo = "Arte electrónico";

void setup(){
  //Tamaño y primer fondo de la ventana
  size(640,480);
  background(255,255,255);
  
  //Cargar imágenes
  imagenInicio=loadImage("data/imagenDeInicio.jpg");
  imagen2=loadImage("data/imagen2.jpg");
  imagen3=loadImage("data/imagen3.jpg");
  imagen4=loadImage("data/imagen4.jpg");
  imagen5=loadImage("data/imagen5.jpg");
  
  //Cargar fuentes
  fuente1=loadFont("data/ClutterStreet-48.vlw");
  fuente2=loadFont("data/Consolas-Bold-12.vlw");
  fuente3=loadFont("data/Consolas-Bold-24.vlw");

}

void mousePressed(){
  
  //BOTONES DE INICIO Y DE REINICIAR
  if (mouseX>200 && mouseX<440 && mouseY>300 && mouseY<350 && estado==0){
    estado=1;
    yPantalla1=-130;
  }
  else if (mouseX>200 && mouseX<440 && mouseY>350 && mouseY<400 && estado==4){
    estado=0;
  }
    
}

void draw(){
  
  //PANTALLA INICIO
  if (estado==0){
    background(23,11,43);
    image(imagenInicio,0,0,640,480);
    
    fill(23,11,43);
    stroke(23,11,43);
    rect(100,50,440,100);
    
    textFont(fuente1);
    fill(25,118,205);
    text(titulo,183,115);
    
    textFont(fuente1);
    fill(20,53,127);
    text(titulo,185,115);
    
    //botón
    fill(25,118,205);
    stroke(23,11,43);
    rect(200,300,240,50);
    fill(23,11,43);
    text("Comenzar",246,341);
  
  }
  
  //PANTALLA 1
  else if (estado==1){
    background(20,53,127);
    image(imagen2,180,0,500,480);
    fill(255);
    textFont(fuente2);
    text("El arte electrónico",0,yPantalla1+10);
    text("es una forma de arte que",0,yPantalla1+22);
    text("hace uso de soportes no",0,yPantalla1+34);
    text("convencionales derivados",0,yPantalla1+46);
    text("de la electrónica, la",0,yPantalla1+58);
    text("robótica y la",0,yPantalla1+70);
    text("informática. Este tipo",0,yPantalla1+82);
    text("de arte se caracteriza",0,yPantalla1+94);
    text("por su alta interactividad",0,yPantalla1+106);
    text("y capacidad de ser",0,yPantalla1+118);
    text("recorrida.",0,yPantalla1+130);
    
    yPantalla1=yPantalla1+1;
    
    if (yPantalla1==490){
      estado=2;
      xPantalla2=620;
    }
    
  }
  
  //PANTALLA 2
  else if (estado==2){
    background(23,11,43);
    image(imagen3,0,80,640,400);
    fill(255);
    textFont(fuente3);
    text("Está relacionado con el arte de la información, el arte de los nuevos medios, el videoarte, el arte digital, el arte interactivo, el arte en Internet y la música electrónica. Se considera una consecuencia del arte conceptual y del arte de sistemas.",xPantalla2,44);
    
    xPantalla2=xPantalla2-2;
    
    if (xPantalla2==-3226){
      estado=3;
      yPantalla3=-24;
    }
  }
  
  //PANTALLA 3
  else if (estado==3){
    background(20,39,71);
    image(imagen4,0,0,640,400);
    fill(255);
    textFont(fuente3);
    text("Algunos ejemplos de arte digital son:",0,424);
    textFont(fuente2);
    text("VIDEOJUEGOS - CINE - MUESTRAS INTERACTIVAS - PROYECCIONES EN 3D - REALIDAD VIRTUAL",0,yPantalla3);
    
    yPantalla3=yPantalla3+1;
    if (yPantalla3==470){
      estado=4;
    }
  }
  //PANTALLA FINAL (REINICIAR)
  else if (estado==4){
    background(23,11,43);
    image(imagen5,0,0,640,480);
    
    //botón
    fill(15,219,242);
    stroke(18,67,166);
    rect(200,350,240,50);
    fill(18,67,166);
    textFont(fuente1);
    text("Reiniciar",246,391);
  }
}
