class Limon {
  constructor(limones) {
    this.limones = limones;
    this.limoncin = Math.floor(Math.random() * cantLimones);
    this.tam = 700;
    this.x = Math.random() * 350;
    this.y = Math.random() * (-300 - 70) + 70;
  }

  dibujar() {
    image(this.limones[this.limoncin], this.x, this.y, this.tam, this.tam);
  }
}
