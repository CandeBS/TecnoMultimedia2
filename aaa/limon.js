class Limon {
  constructor() {
    this.limoncin = loadImage("data/ovalo2.png");
    this.tam = 700;
    this.x = (random(0,350));
    this.y = random(-300 , 70);
  }

  dibujar() {
    image(this.limoncin, this.x, this.y, this.tam, this.tam);
  }

} 
