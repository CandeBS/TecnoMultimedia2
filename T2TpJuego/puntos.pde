class Puntos {

  float x, y;
  int punto;

  Puntos(float x, float y, int punto) {
    this.x = x;
    this.y = y;
    this.punto = punto;
  }
  
  void dibujar() { // Dibujo los puntos
    push();
    textSize(20);
    textAlign(LEFT, TOP); // Set text alignment to top-left
    fill(0);
    text("Puntos: " + punto, x, y); // Draw points at specified x and y coordinates
    pop();
  }
}
