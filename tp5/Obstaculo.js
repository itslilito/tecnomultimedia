class obstaculo{
  constructor(posX, posY) {
    this.posX = posX;
    this.posY = posY;
    this.colision = false;
    this.img = loadImage("assets/piedra.png");
  }

  dibujar() {
    if (this.colision === false) {
      image(this.img, this.posX, this.posY, 100, 100);
      rect(this.posX, this.posY + 24, 85, 50);
    }
  }

  mover() {
    this.posX += 3;
  }

  colision(barco) {
    if (
      this.posX + 85 >= barco.posX &&
      this.posY + 50 >= barco.posY &&
      this.posX <= barco.posX + 200 &&
      this.posY <= barco.posY + 100
    ) {
      return true;
    } else {
      return false;
    }
  }  
}
