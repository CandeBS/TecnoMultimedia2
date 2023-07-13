class Limon {
  constructor(limones) {
    this.limones = limones;
    this.limoncin = Math.floor(Math.random() * cantLimones);
    this.tam = 700;
    //Esto es como lo del arreglo, para que cambien los limones
    this.x = Math.random() * 350;
    this.y = Math.random() * (-300 - 70) + 70;
  }

  dibujar() {
    background(fondo); // Vuelve a dibujar el fondo
    image(this.limones[this.limoncin], this.x, this.y, this.tam, this.tam);
  }
}
