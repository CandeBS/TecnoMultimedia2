class Juego {

  PImage pantNombre;
  int pantalla = 0;

  Juego() { //Constructor con imagenes
    pantNombre = loadImage ("pantNombre.png");
  }

  void funcionar() {
    //pantallas del juego
    if (pantalla == 0) {
      nombreJuego();
      //poner musica pantalla inicio
    }
    if (pantalla == 1) {
      pantalla = 1;
      jueguito();
    }
  }

  void nombreJuego() {
    image (pantNombre, 0, 0);
  }

void jueguito() {
  Puntos puntos = new Puntos(35, 25, punto); // Create an instance of the Puntos class
  puntos.dibujar(); // Call the dibujar method to display the points

  Gatos.indxGatos();
  rinoyperros.indxPerros();
}

  void keyPressed() {
    if (key == 'j' || key == 'J' ) {
      pantalla = 1;
    }
  }
}
