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
    textSize(45);
    textAlign(LEFT, TOP);
    fill(255);
    text( punto + "/5 ", 180, 150); 
    pop();
    
    
  }
}
