class Vidaclass {

  float x, y;
  int vida;

  Vidaclass (float x, float y, int vida) {
    this.x = x; 
    this.y = y;
    this.vida= vida;
  }
  void dibujar () { //Dibujo los puntos
    push();
    textSize(20);
    textAlign(CENTER);
    fill(0);
    text("Vidas: "+vida, 100, 100);
    pop();
  }
}
