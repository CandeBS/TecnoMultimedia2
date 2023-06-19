class Limon {
  constructor() {
    this.limoncin = loadImage("data/ovalo.png");
    this.tam = 600;
    this.x = (random(20,700));
    this.y = random(height - this.tam);
    this.limonAnterior = null;
  }

  dibujar() {
    image(this.limoncin, this.x, this.y, this.tam, this.tam);
  }

  reiniciarLimon() {
    this.x = random(width - this.tam);
    this.y = random(height - this.tam);
  }

  generarNuevoLimon() {
    this.reiniciarLimon(); // Reiniciar la posición del limón
  }
} 
