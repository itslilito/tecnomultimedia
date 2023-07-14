/*

Lilo Ortiz - Comisión 3 - 93502/9
TP2

Link al video: https://youtu.be/a22LeVZ7iRQ
*/

//Declaración de variables
//(Estas las hice aparte por comodidad)
PImage fondoP1, sueloFondoP1, flecha1, flecha2,flecha3, flecha4, copitoIm;
PImage[] fondos;

PFont fTitulo, fCuerpo;

int pantalla = 0, cantImagenes = 13, texto = 0, final1 = 0, final2 = 0, final3 = 0, eleR = 0;

boolean mDecision = false;

//funciones
//COPOS DE NIEVE
void copos(int ancho,int alto){
  for(int contadorCN = 0; contadorCN < 200; contadorCN +=1){
    noStroke();
    fill(255);
    ellipse(random(ancho),random(alto),5,5);
  }
  for(int contadorCN = 0; contadorCN < 100; contadorCN +=1){
    noStroke();
    fill(255);
    ellipse(random(ancho),random(alto),3,3);
  }
  for(int contadorCN = 0; contadorCN < 100; contadorCN +=1){
    noStroke();
    fill(255);
    ellipse(random(ancho),random(alto),2,2);
  }
}

//MOUSE
float copitoX(){
  return(mouseX-15);
}
float copitoY(){
  return(mouseY-15);
}

//PANTALLA DE INICIO
void inicio(){
    //fondo
  image(fondoP1,0,0);
  
  //copos de nieve
  copos(width,height);
  
  //Sigue el fondo
  image(sueloFondoP1,0,0);
    
  //Título
  textAlign(LEFT,LEFT);
  textFont(fTitulo);
  noStroke();
  fill(225);
  textSize(64);
  text("La Reina de las Nieves",105,100);
  
//  rect(200,140,200,50);
//  rect(200,215,200,50);
  if(mouseY >140 & mouseX > 200 & mouseY < 190 & mouseX < 400){
    fill(88,104,142);
  }else{
    fill(212,214,219);
  }
  textSize(54);
  text("Iniciar",252,182);
    if(mouseY >215 & mouseX > 200 & mouseY < 265 & mouseX < 400){
    fill(88,104,142);
  }else{
    fill(212,214,219);
  }
  text("Creditos",240,257);
}

void creditos(){
      //fondo
  image(fondoP1,0,0);
  
  //copos de nieve
  copos(width,height);
  
  //Texto
  textFont(fTitulo);
  noStroke();
  fill(225);
  textSize(48);
  textAlign(CENTER,CENTER);
  text("Adaptacion, programacion e ilustraciones",300,150);
  text("Relato original",300,300);
  textFont(fCuerpo);
  textSize(24);
  text("Lilo Ortiz \n Comision 3, 93502/9",300,225);
  text("'La Reina de las Nieves' \n Hans Christian Andersen",300,375);
  
  //Flecha
  if(mouseY > 10 & mouseY < 60 & mouseX > 10 & mouseX < 60){
    image(flecha4,10,10,50,50);
  }else{
    image(flecha3,10,10,50,50);
  }
}

void pantalla1(){
  image(fondos[0],0,0);
  
  textAlign(LEFT,LEFT);
  fill(88,104,142);
  noStroke();
  textFont(fCuerpo);
  textSize(24);
  text("Había una vez dos amigos cuyas casas estaban tan pero tan \ncerca que llegaban a tocarse las manos desde las ventanas.\nLos niños se llamaban Kay y Gerda. \nEntre las ventanas, había una terraza con un jardín lleno de \nrosas donde elles jugaban en verano.",10,24);
  if(mouseY > 150 & mouseY < 200 & mouseX > 550 & mouseX < 600){
    image(flecha2,550,150);
  }else{
    image(flecha1,550,150);
  }
}

void pantalla2(){
  image(fondos[1],0,0);
  
  textAlign(LEFT,LEFT);
  fill(88,104,142);
  noStroke();
  textFont(fCuerpo);
  textSize(24);
  if(texto == 0){
    text("En invierno, se encontraban en la cocina de Gerda para \nescuchar los cuentos de su abuela. Una noche, les habló de \nla Reina de las Nieves.",10,24);
  }else if(texto==1){
    text("-En invierno, echa su frío aliento a las ventanas y las \nescharcha. Si fuese por ella, lo convertiría todo en hielo, \nhasta sus mismos corazones -Contó la abuela.",10,24);
  }else if(texto==2){
    text("- ¡Que lo intente si se atreve! -Desafió Kay fingiendo \nvalentía.\n- No te preocupes, -Lo tranquilizó la mujer- sólo puede \nconquistar tu corazón si tú se lo permites.",10,24);
  }else if(texto==3){
    text("Esa noche, cuando Kay volvió a casa, empezaron a caer las \nprimeras nieves del invierno y el chico se sentó a \nobservarlas.",10,24);
  }
  
  if(mouseY > 150 & mouseY < 200 & mouseX > 550 & mouseX < 600){
    image(flecha2,550,150);
  }else{
    image(flecha1,550,150);
  }
  
  if (texto >= 3){
    texto = 0;
    pantalla = 4;
  }
}

void pantalla3(){
  image(fondos[2],0,0);
  
  textAlign(LEFT,LEFT);
  fill(255);
  noStroke();
  textFont(fCuerpo);
  textSize(24);
  if(texto == 0){
    text("Esa noche, cuando Kay volvió a casa, empezaron a caer las \nprimeras nieves del invierno y el chico se sentó a \nobservarlas.",10,24);
  }
  
  if(mouseY > 150 & mouseY < 200 & mouseX > 550 & mouseX < 600){
    image(flecha2,550,150);
  }else{
    image(flecha1,550,150);
  }
  
  if (texto >= 1){
    texto = 0;
    pantalla = 5;
  }
}

void pantalla4(){
  image(fondos[3],0,0);
  
  textAlign(LEFT,LEFT);
  fill(255);
  noStroke();
  textFont(fCuerpo);
  textSize(24);
  
  if(texto ==0){
    text("De repente, al otro lado de la ventana apareció una\ndama muy hermosa que parecía hecha de hielo.",10,24);
  }else if(texto == 1){
    text("- ¡Es la Reina de las Nieves! -Se asombró Kay y, en un \narranque de entusiasmo, abrió la ventana.",10,24);
  }else if(texto == 2){
    text("La Reina de las Nieves alargó un dedo y le acarició la mejilla. \nUn gélido escalofrío recorrió la espalda de Kay. Sin más, la\nmujer desapareció entre los copos de nieve.",10,24);
  }
  
  if(mouseY > 150 & mouseY < 200 & mouseX > 550 & mouseX < 600){
    image(flecha2,550,150);
  }else{
    image(flecha1,550,150);
  }
  
  if (texto >= 3){
    texto = 0;
    pantalla = 6;
  }
}

void pantalla5(){
  image(fondos[0],0,0);
  
  textAlign(LEFT,LEFT);
  fill(88,104,142);
  noStroke();
  textFont(fCuerpo);
  textSize(24);
  
  if(texto == 0){
    text("Kay no le contó a su amiga lo que vio. El verano siguiente, \njugaron en el jardín como siempre, pero Kay ya no era el \nmismo de antes.Ya no le gustaba el sol, deseaba que \nvolviera el invierno. Cada vez se volvía más frío y distante.",10,24);
  }else if(texto == 1){
    text("Un día, mientras regaban las rosas, Kay lanzó un grito de \ndolor.\n- ¡Ay, mi ojo! -Chilló- ¡El pecho! ¡No sé qué tengo!. \nGerda se acercó a verlo, pero no notó nada raro.",10,24);
  }
  
  if(mouseY > 150 & mouseY < 200 & mouseX > 550 & mouseX < 600){
    image(flecha2,550,150);
  }else{
    image(flecha1,550,150);
  }
  
  if (texto >= 2){
    texto = 0;
    pantalla = 7;
  }
}

void pantalla6(){
  image(fondos[3],0,0);
  
  textAlign(LEFT,LEFT);
  fill(255);
  noStroke();
  textFont(fCuerpo);
  textSize(24);
  
  if(texto == 0){
    text("Ocurrió que, cuando Kay le abrió la ventana a la Reina \nde las Nieves, un fragmento de hielo se le había incrustado \nen el ojo y, otro más grande, en el corazón.",10,24);
  }else if(texto == 1){
    text("Con el poder del hielo, el ojo afeaba todo lo que veía y el \ncorazón se le iba enfriando cada vez más.",10,24);
  }
  
  if(mouseY > 150 & mouseY < 200 & mouseX > 550 & mouseX < 600){
    image(flecha2,550,150);
  }else{
    image(flecha1,550,150);
  }
  
  if (texto >= 2){
    texto = 0;
    pantalla = 8;
  }
}

void pantalla7(){
  image(fondos[1],0,0);
  
  textAlign(LEFT,LEFT);
  fill(88,104,142);
  noStroke();
  textFont(fCuerpo);
  textSize(24);
  
  if(texto == 0){
    text("Llegado el invierno nuevamente, una tarde en que los niños \nse aburrían, Gerda propuso como siempre:\n- Vamos a pedirle a mi abuela que nos cuente un cuento.",10,24);
  }else if(texto == 1){
    text("-¡Qué aburrido! -Gruñó Kay- No quiero estar contigo. Me \nvoy a la plaza a jugar con los demás niños.",10,24);
  }
  
  if(mouseY > 150 & mouseY < 200 & mouseX > 550 & mouseX < 600){
    image(flecha2,550,150);
  }else{
    image(flecha1,550,150);
  }
  
  if (texto >= 2){
    texto = 0;
    pantalla = 9;
  }
}

void pantalla8(){
  image(fondos[4],0,0);
  
  textAlign(LEFT,LEFT);
  fill(255);
  noStroke();
  textFont(fCuerpo);
  textSize(24);
  
  if(texto == 0){
    text("Mientras Kay jugaba en la plaza, un trineo blanco apareció. \nEn él, venía la Reina de las Nieves.\n- Ven conmigo -Le dijo al niño y éste se trepó de un salto sin \npensarlo. Luego, la mujer le dio un beso en la frente y, \ncon eso, Kay se olvidó de todo.",10,480);
  }else if(texto == 1){
    text("Al ver que Kay no regresaba a casa, Gerda salió a buscarlo. \nPreguntó a los niños de la plaza si lo habían visto, pero \nninguno de ellos le dio una respuesta.",10,480);
  }else if(texto == 2){
    text("-Le gustaba jugar sobre el río helado -Pensó Gerda en voz \nalta- Espero que no se haya ahogado.\nElla y su abuela pasaron muchas semanas buscándolo, pero \nKay no apareció.",10,480);
  }else if(texto == 3){
    text("Llegó la primavera y, para entonces, todo el mundo daba \npor muerto a Kay. Gerda, que no perdía las esperanzas, fue \nun día hasta el puente del río y le preguntó:\n- Si te doy lo que más quiero en este mundo, ¿me \ndevolverás a Kay?",10,480);
  }else if(texto == 4){
    text("Lanzó sus zapatos nuevos al agua, pero el río los devolvió.\n- ¿Eso quiere decir que no tienes a mi amigo Kay? ¿O es que \nno los he lanzado lo bastante lejos? -Preguntó Gerda.",10,480);
  }else if(texto == 5){
    text("Se subió a un bote que encontró en la orilla, remó río \nadentro y volvió a tirar los zapatos. De repente, la corriente \nse llevó el bote río abajo. \n- ¿Me estás llevando hasta Kay? -Se entusiasmó ella.",10,480);
  }
  
  if(mouseY > 150 & mouseY < 200 & mouseX > 550 & mouseX < 600){
    image(flecha2,550,150);
  }else{
    image(flecha1,550,150);
  }
  
  if (texto >= 6){
    texto = 0;
    pantalla = 10;
  }
}

void pantalla9(){
  image(fondos[5],0,0);
  
  textAlign(LEFT,LEFT);
  fill(10);
  noStroke();
  textFont(fCuerpo);
  textSize(24);
  

  if(texto == 0){
    text("Luego de un rato, el bote llegó a una pradera donde había \nun florido jardín frente a una casita. El bote se encalló en la \norilla.",10,480);
  }else if(texto == 1){
    text("En este momento, salió de la casita una anciana que le \nsonrió a Gerda. Después la invitó a pasar, le dio un \ncuenco de cerezas y, ni bien la niña tomó asiento, comenzó \na cepillarle el pelo.",10,480);
  }else if(texto == 2){
    text("-¿Qué te trae por aquí? -Le preguntó. Gerda le contó sobre \nsu amigo y sobre el bote en el río. Cuantas más cerezas \ncomía y más le cepillaban el pelo, más lejana le parecía \nla historia que estaba contando, hasta que \finalmente olvidó \npor qué estaba allí.",10,480);
  }else if(texto == 3){
    text("-Vamos a ver mi jardín -Propuso la anciana. Mientras Gerda \nmiraba las hortensias, la anciana fue corriendo hacia las \nrosas y les susurró- ¡Escóndanse! Si las ve, recordará a su \namigo y me quedaré sola otra vez.",10,480);
  }else if(texto == 4){
    mDecision = true;
    
    //FINAL 1
    if(mouseY > 535 & mouseY < 570 & mouseX > 480 & mouseX < 590){
      fill(88,104,142);
    }else{
      fill(212,214,219);
    }
    text("Hortensias",480,560);
    
    //FINAL 2
    if(mouseY > 510 & mouseY < 545 & mouseX > 180 & mouseX < 290){
      fill(88,104,142);
    }else{
      fill(212,214,219);
    }
    text("Margaritas",180,530);
    
    //FINAL 3
    if(mouseY > 240 & mouseY < 275 & mouseX > 230 & mouseX < 340){
      fill(88,104,142);
    }else{
      fill(212,214,219);
    }
    text("Lavandas",230,260);
    
    fill(10);
    noStroke();
    textFont(fCuerpo);
    textSize(24);
  }else if(texto == 5){
    text("La anciana dio unos golpes al rosal y éste se hundió en \nel suelo. Gerda se quedó un tiempo en la casa de la anciana.",10,480);
  }else if(texto == 6){
    if(eleR == 1){
      text("Un día, salió al jardín y encontró una flor que no había \nvisto nunca: una rosa. \n- ¿Dónde habré visto antes esta flor tan hermosa? Me \nrecuerda a algo...",10,480);
    }else if(eleR == 2){
      text("Un día, salió al jardín y escuchó unas voces que le \nsusurraban desde el suelo.\n- ¡Aquí, nosotras!",10,480);
    }else if(eleR == 3){
      text("Un día, salió al jardín y se tropezó con una raíz. \nDesde el suelo, vio unos tallos cortados y llenos de espinas.",10,480);
    }
  }else if(texto == 7){
    if(eleR == 1){
      text("Súbitamente, Gerda recuperó todos sus recuerdos.\n- ¿Qué estoy haciendo aquí? ¡Debería estar buscando a Kay! \n-Exclamó- No sé si está vivo o muerto, pero debo intentar \nencontrarlo.",10,480);
    }else if(eleR == 2){
      text("Cuando se giró, notó que eran las margaritas quienes le \nhablaban. Se acercó y ellas le contaron que la anciana la \nhabía hechizado.\n- ¡Tienes que encontrar a tu amigo Kay! -Le dijeron.",10,480);
    }else if(eleR == 3){
      text("-¿Dónde habré visto antes esa planta? -Se preguntó- Me \nrecuerda a algo...",10,480);
    }
  }else if(texto == 8){
    if(eleR == 1){
      text("Entonces las rosas le susurraron: \n-Nosotras estuvimos bajo tierra y tu amigo no estaba allí. \nEso significa que no está muerto. ¡Corre, ve en su busca \nantes de que la anciana te lo impida!",10,480);
    }else if(eleR == 2){
      text("Súbitamente, Gerda recuperó todos sus recuerdos.\n- ¿Qué estoy haciendo aquí? ¡Debería estar buscando a Kay! \n-Exclamó- No sé si está vivo o muerto, pero debo intentar \nencontrarlo.",10,480);
    }else if(eleR == 3){
      text("Súbitamente, Gerda recuperó todos sus recuerdos.\n- ¿Qué estoy haciendo aquí? ¡Debería estar buscando a Kay! \n-Exclamó- No sé si está vivo o muerto, pero debo intentar \nencontrarlo.",10,480);
    }
  }else if(texto ==9){
    if(eleR == 2){
      text("Entonces las rosas le susurraron: \n-Nosotras estuvimos bajo tierra y tu amigo no estaba allí. \nEso significa que no está muerto. ¡Corre, ve en su busca \nantes de que la anciana te lo impida!",10,480);
    }else if(eleR == 3){
      text("Entonces las rosas le susurraron: \n-Nosotras estuvimos bajo tierra y tu amigo no estaba allí. \nEso significa que no está muerto. ¡Corre, ve en su busca \nantes de que la anciana te lo impida!",10,480);
    }
  }

  
  
  
  if(mDecision==false){
    if(mouseY > 150 & mouseY < 200 & mouseX > 550 & mouseX < 600){
      image(flecha2,550,150);
    }else{
      image(flecha1,550,150);
    }
  }
  
  if (eleR == 1 & texto >= 9){
    texto = 0;
    pantalla = 11;
  }else if(eleR == 2 & texto >= 10){
    texto = 0;
    pantalla = 11;
  }else if(eleR == 3 & texto >=10){
    texto = 0;
    pantalla = 11;
  }
}

void pantalla10(){
  image(fondos[8],0,0);
  
  textAlign(LEFT,LEFT);
  fill(255);
  noStroke();
  textFont(fCuerpo);
  textSize(24);
  
  if(texto == 0){
    text("Luego de días de caminata, Gerda seguía sin encontrar a Kay. \nNi siquiera sabía dónde buscarlo.",10,24);
  }
  
  if(mouseY > 150 & mouseY < 200 & mouseX > 550 & mouseX < 600){
    image(flecha2,550,150);
  }else{
    image(flecha1,550,150);
  }
  
  if (texto >= 1){
    texto = 0;
    pantalla = 12;
  }
}

void pantalla11(){
  image(fondos[6],0,0);
  
  textAlign(LEFT,LEFT);
  fill(255);
  noStroke();
  textFont(fCuerpo);
  textSize(24);
  
  if(texto == 0){
    text("En eso, se topó con un cuervo. \n -¡Buenos días, señor! -Lo saludó. Para su sorpresa el \n cuervo le contestó. \n -¿A dónde te diriges tan sola en este mundo?",10,24);
  }else if(texto == 1){
    text("Gerda le contó todo. El cuervo ladeó la cabeza.\n-Los humanos son todos iguales, pero puede que haya visto\na tu amigo. Mi compañera, que vive en un gran palacio, \nme contó que la princesa se casó con un joven que llegó \nde tierras lejanas.",10,24);
  }else if(texto == 2){
    text("-Todos los pretendientes eran unos cabeza hueca, pero\neste muchacho no -Contó el cuervo-. Sus botas hacían \nmucho ruido y era muy inteligente.",10,24);
  }else if(texto == 3){
    text("-¡Podría ser Kay! -Se entusiasmó Gerda- ¿Te importaría\nllevarme a ese palacio?",10,24);
  }
  
  if(mouseY > 150 & mouseY < 200 & mouseX > 550 & mouseX < 600){
    image(flecha2,550,150);
  }else{
    image(flecha1,550,150);
  }
  
  if (texto >= 4){
    texto = 0;
    pantalla = 13;
  }
}

void pantalla12(){
image(fondos[7],0,0);
  
  textAlign(LEFT,LEFT);
  fill(255);
  noStroke();
  textFont(fCuerpo);
  textSize(24);
  
  if(texto == 0){
    text("El cuervo la guió hasta que llegaron a un palacio \namurrallado. Su pareja salió para recibirlos. Hablaron en su \nidioma primero, y luego se dirigieron a ella.",10,480);
  }else if(texto == 1){
    text("-No te dejarán entrar descalza -Comentó la pareja del \ncuervo-. Sólo pueden entrar humanos con zapatos, pero yo \npuedo llevarte.\nCon esas palabras, los cuervos la llevaron por un \nagujero en la muralla.",10,480);
  }else if(texto == 2){
    text("Llegaron hasta una habitación con dos camas. En una\ndormía la princesa y, en la otra, un muchacho que tenía la\ncara tapada con un brazo.",10,480);
  }else if(texto == 3){
    text("Sin pensarlo, Gerda se acercó y le puso la mano en el \nhombro.\n-Despierta,Kay. Soy yo, Gerda.\nEl chico se despertó asustado. Por desgracia, no era Kay.",10,480);
  }else if(texto == 4){
    mDecision = true;
    
    textAlign(CENTER,LEFT);
    //FINAL 1
    if(mouseY > 440 & mouseY < 475 & mouseX > 150 & mouseX < 450){
      fill(88,104,142);
    }else{
      fill(212,214,219);
    }
    text("Disculparse con el príncipe",300,460);
    
    //FINAL 2
    if(mouseY > 540 & mouseY < 575 & mouseX > 150 & mouseX < 450){
      fill(88,104,142);
    }else{
      fill(212,214,219);
    }
    text("Huir",300,560);
    
    //FINAL 3
    if(mouseY > 490 & mouseY < 525 & mouseX > 150 & mouseX < 450){
      fill(88,104,142);
    }else{
      fill(212,214,219);
    }
    text("Disculparse con la princesa",300,510);
    
    textAlign(LEFT,LEFT);
    fill(255);
    noStroke();
    textFont(fCuerpo);
    textSize(24);
  }else if(texto == 5){
    if(eleR == 1){
      text("-Perdón, -Se disculpó Gerda- estaba segura de que eras \notra persona. \n-¿A quién buscas? -Preguntó la princesa, que también se \ndespertó- A lo mejor podemos ayudarte.",10,480);
    }else if(eleR == 2){
      text("Avegonzada, Gerda se fue por donde había llegado. Al pasar\npor los establos, se acercó a uno de los caballos.\n-¡Por favor, necesito que me ayudes! ¡Tengo que encontrar \na mi amigo Kay!",10,480);
    }else if(eleR == 3){
      text("-Perdón, -Se disculpó Gerda con la princesa que también se \nhabía despertado- creí que él era mi amigo y tú te lo habías\nllevado.",10,480);
    }
  }else if(texto == 6){
    if(eleR == 1){
      text("Gerda les contó toda la historia. La princesa le ofreció \npasar la noche en el castillo y, al día siguiente, le dio un \ncarruaje para continuar su viaje.",10,480);
    }else if(eleR == 2){
      text("-Súbete a un carruaje -Contestó el animal-. Mis amigos y yo \nte llevaremos. Gerda se despidió de los cuervos y se fue con \nlos caballos para continuar la búsqueda.",10,480);
    }else if(eleR == 3){
      text("La chica le contó toda la historia. Cuando terminó, la \nprincesa le dijo\n-Ve y llévate uno de mis carruajes para seguir tu camino.\nGerda le agradeció e hizo lo que le dijo.",10,480);
    }
  }
  
  if(mDecision == false){
    if(mouseY > 150 & mouseY < 200 & mouseX > 550 & mouseX < 600 ){
      image(flecha2,550,150);
    }else{
      image(flecha1,550,150);
    }
  }
  
  
  
  if (texto >= 7 & mDecision == false){
    texto = 0;
    pantalla = 14;
  }
}

void pantalla13(){
  image(fondos[8],0,0);
  
  textAlign(LEFT,LEFT);
  fill(255);
  noStroke();
  textFont(fCuerpo);
  textSize(24);
  
  if(texto == 0){
    text("Partió, entonces, en el carruaje. Éste llamaba tanto la\natneción que, ni bien entraron al bosque, un grupo de\nbandidos la interceptaron.",10,24);
  }else if(texto == 1){
    text("-¡Ese carruaje es nuestro! ¡Maten al cochero! -Gritó el \nlíder. Tras escuchar eso, el conductor huyó y dejó a\nGerda sola con los bandidos.",10,24);
  }else if(texto == 2){
    text("-¿Qué vamos a hacer con la niña? -Preguntó uno.\n-Me la quedaré como mascota -Dijo una saqueadora, \nobligando a Gerda a bajar del carruaje.",10,24);
  }
  
  if(mouseY > 150 & mouseY < 200 & mouseX > 550 & mouseX < 600){
    image(flecha2,550,150);
  }else{
    image(flecha1,550,150);
  }
  
  if (texto >= 3){
    texto = 0;
    pantalla = 15;
  }
}

void pantalla14(){
  image(fondos[9],0,0);
  
  textAlign(LEFT,LEFT);
  fill(255);
  noStroke();
  textFont(fCuerpo);
  textSize(24);
  
  if(texto == 0){
    text("Se dirigieron a la guarida de los bandidos y la saqueadora\nle mostró a Gerda su habitación. Luego sacó de un corralito\nun reno atado con una cuerda.",10,24);
  }else if(texto == 1){
    text("-Se llama Ba -Dijo-. Lo tengo atado para que no se escape.\nSi intentas escapar, te mato.",10,24);
  }else if(texto == 2){
    text("-Ahora, cuéntame una historia -Exigió la saqueadora. \nGerda le contó la historia de su búsqueda, desde el río \nhasta allí.",10,24);
  }else if(texto == 3){
    text("-¡Yo vi a tu amigo! -Exclamó una paloma parada en la \nventana, que había escuchado la historia.",10,24);
  }else if(texto == 4){
    text("-¡Yo sé dónde está el castillo de la Reina de las Nieves! \n-Aportó Ba.",10,24);
  }else if(texto == 5){
    mDecision = true;
    
    textAlign(CENTER,LEFT);
    //FINAL 1
    if(mouseY > 440 & mouseY < 475 & mouseX > 150 & mouseX < 450){
      fill(88,104,142);
    }else{
      fill(212,214,219);
    }
    text("Mirar a Ba",300,460);
    
    //FINAL 2
    if(mouseY > 540 & mouseY < 575 & mouseX > 150 & mouseX < 450){
      fill(88,104,142);
    }else{
      fill(212,214,219);
    }
    text("Mirar a la Saqueadora",300,560);
    
    //FINAL 3
    if(mouseY > 490 & mouseY < 525 & mouseX > 150 & mouseX < 450){
      fill(88,104,142);
    }else{
      fill(212,214,219);
    }
    text("Preguntarle a la paloma",300,510);
    
    textAlign(LEFT,LEFT);
    fill(255);
    noStroke();
    textFont(fCuerpo);
    textSize(24);
  }else if(texto == 6){
    if(eleR == 1){
      text("-¡Silencio! -Bramó la saqueadora. Luego, miró a Gerda y dijo-\n Tu historia me ha gustado. Mis animales van a ayudarte. \nBa, ¿puedes llevarla hasta el castillo?",10,480);
    }else if(eleR == 2){
      text("-¡Silencio! -Bramó la saqueadora. Luego, miró a Gerda y dijo-\n Lamento mucho lo de tu amigo. Te ayudaré a encontrarlo.",10,480);
    }else if(eleR == 3){
      text("-¿Sabes dónde puedo encontrarlo? -Preguntó Gerda a la \npaloma\n-No, no sé llegar hasta allí, pero vi a la Reina de las Nieves\nllevarlo en su carruaje.",10,480);
    }
  }else if(texto == 7){
    if(eleR == 1){
      text("El reno asintió\n-Entonces hazlo. Váyanse, antes de que cambie de opinión.\nLa mujer le dio una hogaza de pan a la niña y agregó\nbruscamente:\n-Espero que lo encuentres.",10,480);
    }else if(eleR == 2){
      text("-Ba, llévala hasta el castillo de la Reina de las Nieves -le\nordenó. Luego, le dio a Gerda una hogaza de pan y un \ncuchillo-. Ojalá lo encuentres -Agregó al final.",10,480);
    }else if(eleR == 3){
      text("-Yo puedo llevarte -Insistió Ba.\n-Entonces hazlo -Dijo bruscamente la saqueadora-. Váyanse \nantes de que cambie de opinión.\nGerda se subió a lomos del reno y reanudó el viaje",10,480);
    }
  }
  
  if(mDecision == false){
    if(mouseY > 150 & mouseY < 200 & mouseX > 550 & mouseX < 600){
      image(flecha2,550,150);
    }else{
      image(flecha1,550,150);
    }
  }
  
  if (texto >= 8){
    texto = 0;
    pantalla = 16;
  }
}

void pantalla15(){
  image(fondos[8],0,0);
  
  textAlign(LEFT,LEFT);
  fill(255);
  noStroke();
  textFont(fCuerpo);
  textSize(24);
  
  if(texto == 0){
    text("Ba llevó a Gerda rápidamente a través del bosque hasta que \nla nieve pue muy gruesa para sus patas. Entonces, llegaron a \nuna cabaña donde los esperaba una vieja bruja.",10,24);
  }
  
  if(mDecision == false){
    if(mouseY > 150 & mouseY < 200 & mouseX > 550 & mouseX < 600){
      image(flecha2,550,150);
    }else{
      image(flecha1,550,150);
    }
  }
  
  if (texto >= 1){
    texto = 0;
    pantalla = 17;
  }
}

void pantalla16(){
  image(fondos[10],0,0);
  
  textAlign(LEFT,LEFT);
  fill(255);
  noStroke();
  textFont(fCuerpo);
  textSize(24);
  
  if(texto == 0){
    text("Ba le contó toda la historia a la mujer.\n-¿Podrías ayudar a esta pobre niña con alguno de tus \nhechizos -Preguntó al final.\n-¡Desde luego! -Contestó ella- Elige alguna de estas \npociones, mi niña.",10,480);
  }else if(texto == 1){
    text("-La poción roja te dará la fuerza de mil hombres -Explicó la\nbruja- y la verde hará que no seas capaz de sentir frío ni\ncon la tormenta más feroz.",10,480);
  }else if(texto == 2){
    mDecision = true;
    
    textAlign(CENTER,LEFT);
    //FINAL 1
    if(mouseY > 440 & mouseY < 475 & mouseX > 150 & mouseX < 450){
      fill(88,104,142);
    }else{
      fill(212,214,219);
    }
    text("Rechazarlas",300,460);
    
    //FINAL 2
    if(mouseY > 300 & mouseY < 335 & mouseX > 325 & mouseX < 455){
      fill(88,104,142);
    }else{
      fill(212,214,219);
    }
    text("Poción verde",395,330);
    
    //FINAL 3
    if(mouseY > 300 & mouseY < 335 & mouseX > 95 & mouseX < 210){
      fill(88,104,142);
    }else{
      fill(212,214,219);
    }
    text("Poción roja",155,330);
    
    textAlign(LEFT,LEFT);
    fill(255);
    noStroke();
    textFont(fCuerpo);
    textSize(24);
  }else if(texto == 3){
    if(eleR == 1){
      text("-Gracias, pero necesito llegar cuanto antes. No puedo \nperder más tiempo -Dijo Gerda.",10,480);
    }else if(eleR == 2){
      text("-Muchas gracias -Dijo Gerda y se tomó la poción Roja.\nLa niña la bebió y se sintió fuerte",10,480);
    }else if(eleR == 3){
      text("-Muchas gracias -Dijo Gerda y se tomó la poción Verde.\nLa niña sintió un calor extraño, como una pequeña llama en\nsu corazón.",10,480);
    }
  }else if(texto == 4){
    text("Luego, Ba le indicó el camino y Gerda se despidió de ambos\npara emprender el trayecto final de su camino.",10,480);
  }
  
  if(mDecision == false){
    if(mouseY > 150 & mouseY < 200 & mouseX > 550 & mouseX < 600 & mDecision == false){
      image(flecha2,550,150);
    }else{
      image(flecha1,550,150);
    }
  }
  
  if (texto >= 5){
    texto = 0;
    pantalla = 18;
  }
}

void pantalla17(){
  image(fondos[11],0,0);
  
  textAlign(LEFT,LEFT);
  fill(88,104,142);
  noStroke();
  textFont(fCuerpo);
  textSize(24);
  
  if(texto == 0){
    text("Al llegar al castillo de la Reina de las Nieves, Gerda\nrecorrió pasillos de hielo puro hasta encontrar la sala del \ntrono. El trono estaba vacío y, a sus pies, se encontraba Kay.",10,480);
  }else if(texto == 1){
    text("-¡Te he encontrado! -Gritó Gerda feliz. Pero Kay no le dio\nimportancia; el poder de la Reina de las Nieves le había\nhelado el corazón. La niña lo abrazó y se echó a llorar.",10,480);
  }else if(texto == 2){
    if(final1 > final2 & final1 > final3){
      text("De repente, algo se iluminó en los ojos del muchacho.\nGerda le besó una mejilla y el calo le volvió al cuerpo. Le dio\notro beso y las mejillas se le llenaron de color.",10,480);
    }else if(final2 > final1 & final2 > final3){
      text("En ese momento, Gerda escuchó pasos en uno de los \npasillos.Rápidamente, se escondió debajo del trono y \nesperó.",10,480);
    }else{
      text("-Ya no hay nada que puedas hacer -Retumbó una voz entre\nlos pasillos. Cuando Gerda se giró, se encontró cara a cara\ncon la mismísima Reina de las Nieves.",10,480);
    }
  }else if(texto == 3){
    if(final1 > final2 & final1 > final3){
      text("En ese momento, Kay recordó todo. Ambos se abrazaron y \nse echaron a llorar. Con cada lágrima, el hiejo que quedaba \nen los ojos de Kay se iba derritiendo.",10,480);
    }else if(final2 > final1 & final2 > final3){
      text("Allí encontró una espada y, en cuanto la Reina de las\nNieves se sentó en el trono, salió y le atravesó el pecho con \nel arma. Creyó que así su magia desaparecería, pero Kay\nseguía sin responder.",10,480);
    }else{
      text("Antes de que la niña pudiera reaccionar, la Reina de las\nNieves sopló su aliento helado sobre ella, convirtiéndola en\nhielo.",10,480);
    }
  }
  
  if(mDecision == false){
    if(mouseY > 150 & mouseY < 200 & mouseX > 550 & mouseX < 600){
      image(flecha2,550,150);
    }else{
      image(flecha1,550,150);
    }
  }
  
  if (texto >= 4){
    if(final1>final2 & final1>final3){
      texto = 0;
      pantalla = 19;
    }else if(final2>final1 & final2>final3){
      texto = 0;
      pantalla = 20;
    }else if(final3>final1 & final3>final2){
      texto = 0;
      pantalla = 21;
    }else{
      texto = 0;
      pantalla = 21;
    }
  }
}

void final_1(){
  image(fondos[0],0,0);
  
  textAlign(LEFT,LEFT);
  fill(88,104,142);
  noStroke();
  textFont(fCuerpo);
  textSize(24);
  
  if(texto == 0){
    text("Los dos niños escaparon juntos del castillo de la Reina de\nlas Nieves y regresaron a casa. Allí los esperaba la abuela de\nGerda.\n-¡Ahora son ustedes los que tienen que contarme\nla historia! -Sonrió al recibirlos.",10,24);
  }else if(texto == 1){
    mDecision = true;
    
    textAlign(CENTER,CENTER);
    textFont(fTitulo);
    noStroke();
    fill(88,104,142);
    textSize(48);
    text("Final original",300,50);
    
    textAlign(CENTER,LEFT);
    textFont(fCuerpo);
    if(mouseY > 540 & mouseY < 575 & mouseX > 150 & mouseX < 450){
      fill(212,214,219);
    }else{
      fill(88,104,142);
    }
    text("Volver al menú",300,560);    
  }
  
  if(mDecision == false){
    if(mouseY > 150 & mouseY < 200 & mouseX > 550 & mouseX < 600){
      image(flecha2,550,150);
    }else{
      image(flecha1,550,150);
    }
  }
  
}

void final_2(){
  image(fondos[8],0,0);
  
  textAlign(LEFT,LEFT);
  fill(255);
  noStroke();
  textFont(fCuerpo);
  textSize(24);
  
  if(texto == 0){
    text("Al ver que no había manera de que Kay la escuchara, Gerda \nse dio por vencida. Deshizo el camino hacia su casa. Cuando \nllegó al bosque la saqueadora, conmovida, la invitó a \nquedarse con ella como compañera.Gerda lo hizo y se \nconvirtió en la cuentacuentos de los bandidos.",10,24);
  }else if(texto == 1){
    mDecision = true;
    
    textAlign(CENTER,CENTER);
    textFont(fTitulo);
    noStroke();
    fill(255);
    textSize(48);
    text("Final 2",300,50);
    
    textAlign(CENTER,LEFT);
    textFont(fCuerpo);
    if(mouseY > 540 & mouseY < 575 & mouseX > 150 & mouseX < 450){
      fill(88,104,142);
    }else{
      fill(255);
    }
    text("Volver al menú",300,560);    
  }
  
  if(mDecision == false){
    if(mouseY > 150 & mouseY < 200 & mouseX > 550 & mouseX < 600){
      image(flecha2,550,150);
    }else{
      image(flecha1,550,150);
    }
  }
}

void final_3(){
  image(fondos[12],0,0);
  
  textAlign(LEFT,LEFT);
  fill(88,104,142);
  noStroke();
  textFont(fCuerpo);
  textSize(24);
  
  if(texto == 0){
    text("Gerda se transformó en una estatua de hielo y la Reina\nde las Nieves la dejó en su jardón. Kay, por su parte, con el \ncorazón congelado por la magia de la Reina, se quedó a \nvivir con ella por toda la eternidad.",10,480);
  }else if(texto == 1){
    mDecision = true;
    
    textAlign(CENTER,CENTER);
    textFont(fTitulo);
    noStroke();
    fill(88,104,142);
    textSize(48);
    text("Final 3",300,500);
    
    textAlign(CENTER,LEFT);
    textFont(fCuerpo);
    if(mouseY > 540 & mouseY < 575 & mouseX > 150 & mouseX < 450){
      fill(255);
    }else{
      fill(88,104,142);
    }
    text("Volver al menú",300,560);    
  }
  
  if(mDecision == false){
    if(mouseY > 150 & mouseY < 200 & mouseX > 550 & mouseX < 600){
      image(flecha2,550,150);
    }else{
      image(flecha1,550,150);
    }
  }
}

void setup(){
  //Tamaño y fondo de la ventana
  size(600,600);
  
  //Cargar imágenes
  fondoP1=loadImage("data/Fondo pantalla 1.jpg");
  sueloFondoP1=loadImage("data/SueloPantalla1cRosa.png");
  flecha1=loadImage("data/flechaSiguiente.png");
  flecha2=loadImage("data/flechaSiguienteClick.png");
  flecha3=loadImage("data/Flechaatras.png");
  flecha4=loadImage("data/Flechaatras2.png");
  copitoIm=loadImage("data/copito.png");
  
  //Cargar imágenes en el arreglo
  fondos = new PImage[13];
  for (int contador = 0; contador < cantImagenes; contador++){
    fondos[contador] = loadImage("data/pantalla-"+nf(contador,2)+".jpg");
  }
  //Cargar fuentes
  fTitulo=loadFont("data/Nonwatercolor-54.vlw");
  fCuerpo=loadFont("data/Calibri-18.vlw");
}

void draw(){
  
  if (pantalla==0){
    inicio();
  }else if(pantalla==1){
    creditos();
  }else if(pantalla==2){
    pantalla1();
  }else if(pantalla==3){
    pantalla2();
  }else if(pantalla==4){
    pantalla3();
  }else if(pantalla==5){
    pantalla4();
  }else if(pantalla==6){
    pantalla5();
  }else if(pantalla==7){
    pantalla6();
  }else if(pantalla==8){
    pantalla7();
  }else if(pantalla==9){
    pantalla8();
  }else if(pantalla==10){
    pantalla9();
  }else if(pantalla==11){
    pantalla10();
  }else if(pantalla==12){
    pantalla11();
  }else if(pantalla==13){
    pantalla12();
  }else if(pantalla==14){
    pantalla13();
  }else if(pantalla==15){
    pantalla14();
  }else if(pantalla==16){
    pantalla15();
  }else if(pantalla==17){
    pantalla16();
  }else if(pantalla==18){
    pantalla17();
  }else if(pantalla==19){
    final_1();
  }else if(pantalla==20){
    final_2();
  }else if(pantalla==21){
    final_3();
  }
  
  image(copitoIm,copitoX(),copitoY(),30,30);
}

//  rect(200,140,200,50);
void mousePressed(){
  //Botones inico
    //Botón "Creditos"
  if(mouseY >215 & mouseX > 200 & mouseY < 265 & mouseX < 400 & pantalla == 0){
    pantalla = 1;
  }else if(mouseY > 140 & mouseY < 190 & mouseX > 200 & mouseX < 400 & pantalla == 0){
    pantalla = 2;
  }else if(mouseY > 10 & mouseX > 10 & mouseY < 60 & mouseX < 60 & pantalla == 1){
    pantalla = 0;
  }else if(mouseY > 150 & mouseY < 200 & mouseX > 550 & mouseX < 600 & pantalla == 2){
    pantalla = 3;
  }else if(mouseY > 150 & mouseY < 200 & mouseX > 550 & mouseX < 600 & pantalla >= 3 & mDecision == false){
    texto = texto + 1;
  }else if(pantalla == 10 & mDecision == true){
    if(mouseY > 535 & mouseY < 570 & mouseX > 480 & mouseX < 590){
      mDecision = false;
      final1 = final1 + 1;
      texto = texto + 1;
      eleR = 1;
    }else if(mouseY > 510 & mouseY < 545 & mouseX > 180 & mouseX < 290){
      mDecision = false;
      final2 = final2 + 1;
      texto = texto + 1;
      eleR = 2;
    }else if(mouseY > 240 & mouseY < 275 & mouseX > 230 & mouseX < 340){
      mDecision = false;
      final3 = final3 + 1;
      texto = texto + 1;
      eleR = 3;
    }
  }else if(pantalla == 13 & mDecision == true){
    if(mouseY > 440 & mouseY < 475 & mouseX > 150 & mouseX < 450){
      mDecision = false;
      final1 = final1 + 1;
      texto = texto + 1;
      eleR = 1;      
    }else if(mouseY > 540 & mouseY < 575 & mouseX > 150 & mouseX < 450){
      mDecision = false;
      final2 = final2 + 1;
      texto = texto + 1;
      eleR = 2;
    }else if(mouseY > 490 & mouseY < 525 & mouseX > 150 & mouseX < 450){
      mDecision = false;
      final3 = final3 + 1;
      texto = texto + 1;
      eleR = 3;    
    }
  }else if(pantalla == 15 & mDecision == true){
    if(mouseY > 440 & mouseY < 475 & mouseX > 150 & mouseX < 450){
      mDecision = false;
      final1 = final1 + 1;
      texto = texto + 1;
      eleR = 1;      
    }else if(mouseY > 540 & mouseY < 575 & mouseX > 150 & mouseX < 450){
      mDecision = false;
      final2 = final2 + 1;
      texto = texto + 1;
      eleR = 2;
    }else if(mouseY > 490 & mouseY < 525 & mouseX > 150 & mouseX < 450){
      mDecision = false;
      final3 = final3 + 1;
      texto = texto + 1;
      eleR = 3;    
    }
  }else if(pantalla == 17 & mDecision == true){
      if(mouseY > 440 & mouseY < 475 & mouseX > 150 & mouseX < 450){
      mDecision = false;
      final1 = final1 + 1;
      texto = texto + 1;
      eleR = 1;      
    }else if(mouseY > 300 & mouseY < 335 & mouseX > 95 & mouseX < 210){
      mDecision = false;
      final2 = final2 + 1;
      texto = texto + 1;
      eleR = 2;
    }else if(mouseY > 300 & mouseY < 335 & mouseX > 325 & mouseX < 455){
      mDecision = false;
      final3 = final3 + 1;
      texto = texto + 1;
      eleR = 3;    
    }
  }else if(pantalla >= 19 & mDecision == true){
    if(mouseY > 540 & mouseY < 575 & mouseX > 150 & mouseX < 450){
      mDecision = false;
      final1 = 0;
      final2 = 0;
      final3 = 0;
      texto = 0;
      eleR = 0;
      pantalla = 0;
    }
  }

}
