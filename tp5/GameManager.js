class gameManager{
  constructor(cantObstaculos,pantalla){
    this.cantObstaculos = cantObstaculos;
    this.obstaculos = [];
    this.barco = new barco();
    this.pantalla = pantalla;
  }
  
  crearObstaculoEnPosAleatoria(){
    if (random(1) < 0.02) {
      this.obstaculos.push(new obstaculo(0, random(height - 100)));
    }
  }
  
  dibujar(){
    for(var cont = this.obstaculos.length - 1; cont >= 0; cont--){
      this.obstaculos[cont].dibujar();
      this.obstaculos[cont].mover();
      if(this.obstaculos[cont].posX > 1000){
        this.obstaculos.splice(cont, 1);
      } else if (this.obstaculos[cont].colision) {
          this.obstaculos[cont].colision = true;
          this.barco.vida--;
          this.obstaculos.splice(cont, 1);
      }
    }
    this.crearObstaculoEnPosAleatoria();
    this.barco.dibujar();
    
    text("VIDAS: " + this.barco.vida,50,10);
    
    if(this.barco.vida <=0){
      this.pantalla = 2;
    }
  }
  
  keyPresssed(keyCode){
    this.barco.keyPresssed(keyCode);
  }
}
