class barco{
  constructor(){
    this.vida = 3;
    this.posX = 800;
    this.posY = 250;
    this.img = loadImage("assets/barco.png");
  }
  
  dibujar(){
    image(this.img, this.posX, this.posY,200,100);
    fill(255,0,0,100);
    rect(this.posX,this.posY+20,200,60);
  }
  
  moverArriba(){
    this.posY -= 30;
  }
  
  moverAbajo(){
    this.posY += 30;
  }
  

  keyPresssed(keyCode){
    if(keyCode == UP_ARROW){
      this.moverArriba();
    }else if(keyCode == DOWN_ARROW){
      this.moverAbajo();
    }
  }
}
