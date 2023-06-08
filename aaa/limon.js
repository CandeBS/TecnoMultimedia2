
class Limon {
    constructor() {
      this.limoncin = loadImage("data/ovalo.png");
      this.tam = 600;
    }
  
    dibujar() {
      image(this.limoncin, 0, 0,this.tam, this.tam);
      
    }
  }