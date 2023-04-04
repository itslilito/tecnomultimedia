/*
Lilo Ortiz - TP 0
Comisión 3
93502/9
*/

/*
Hice el dibujo en setup para no tener problemas al cambiar grosores o colores usando
las estructuras void aprendidas en clase.
*/

//Cargar imágenes
PImage bowie;

void setup(){
  //Tamaño y fondo de la ventana
  size(800,400);
  background(0,0,0);
  
  //Se carga la imagen en la variable
  bowie=loadImage("data/imagenusable.jpg");
  
  //Se muestra la imagen
  image(bowie,0,0,400,400);
  
//PELO ATRÁS

  
//CABEZA
  //dibujo base de la cabeza
  noStroke();
  fill(255,225,225);
  rect(500,80,200,250);
  //detalles del contorno
  stroke(0,0,0);
  strokeWeight(60);
  noFill();
  line(430,240,545,350);
  line(760,240,655,350);
  strokeWeight(40);
  line(490,220,490,300);
  line(710,220,710,300);
  
//CARA
  //rayo
    //celeste
  stroke(0,170,215);
  strokeWeight(8);
  beginShape();
    vertex(581,80);
    vertex(520,203);
    vertex(551,200);
    vertex(519,279);
    vertex(611,170);
    vertex(581,180);
    vertex(651,80);
  endShape();
    //negro
  stroke(0,0,0);
  beginShape();
    vertex(586,80);
    vertex(525,203);
    vertex(556,200);
    vertex(524,279);
    vertex(616,170);
    vertex(586,180);
    vertex(656,80);
  endShape();
    //rojo
  stroke(215,40,0);
  fill(215,40,0);
  beginShape();
    vertex(591,77);
    vertex(530,203);
    vertex(561,200);
    vertex(529,276);
    vertex(621,167);
    vertex(591,177);
    vertex(661,77);
  endShape();
  //detalles del contorno (otra vez)
  stroke(0,0,0);
  strokeWeight(60);
  noFill();
  line(430,240,545,350);

  //pelo
  noStroke();
  fill(215,75,0);
  rect(480,10,240,70);
  beginShape();
    vertex(480,70);
    vertex(480,120);
    vertex(490,120);
    vertex(490,190);
    vertex(500,190);
    vertex(500,70);
  endShape();
  beginShape();
    vertex(720,70);
    vertex(720,120);
    vertex(710,120);
    vertex(710,190);
    vertex(700,190);
    vertex(700,70);
  endShape();
  triangle(510,240,470,300,515,280);
  triangle(691,240,730,300,680,281);
  triangle(517,282,507,335,542,305);
  triangle(679,282,693,335,657,305);
  
  //detalles del contorno
  stroke(0,0,0);
  strokeWeight(30);
  noFill();
  line(490,0,450,40);
  line(710,0,750,40);
  
  //ojos
  noStroke();
  fill(255,255,255);
  ellipse(550,180,80,80);
  ellipse(650,180,80,80);
  fill(50,123,91);
  ellipse(550,180,73,73);
  fill(135,123,40);
  ellipse(650,180,73,73);
  fill(0,0,0);
  ellipse(550,180,30,30);
  ellipse(650,180,50,50);

  //nariz
  stroke(0,0,0);
  strokeWeight(6.9);
  line(600,160,570,220);
  line(570,220,600,230);
  //líneas para que los bordes de la nariz no queden redondeados
  strokeWeight(5);
  stroke(215,40,0);
  line(597,157,602,160);
  line(565,219,569,225);
  stroke(255,225,225);
  line(599,233,605,225);
  
  //labios
  stroke(173,86,77);
  fill(173,86,77);
  beginShape();
    vertex(600,270);
    vertex(610,265);
    vertex(625,273);
    vertex(620,280);
    vertex(600,285);
    vertex(580,280);
    vertex(575,273);
    vertex(590,265);
    vertex(600,270);
  endShape();
}

void draw(){
  
}
