class Juego {

  Puntos puntos;
  Vidaclass vidas;

  PImage hudGatos, pantNombre, pantGanar, pantPerder, pantRino;
  int pantalla = 0;

  Juego() { //Constructor con imagenes
    pantNombre = loadImage ("pantNombre.png");
    pantGanar = loadImage ("pantGanar.png");
    //despues cambiar por el tamaño y la imagen posta
    pantGanar.resize(1500, 1000);
    pantPerder = loadImage ("pantPerder.png");
    pantRino = loadImage ("perderRino.png");
    hudGatos = loadImage ("gatoContador.png");
  }

  void funcionar() {
    //pantallas del juego
    if (pantalla == 0) {
      nombreJuego();
      //poner musica pantalla inicio
    }
    if (pantalla == 1) {
      pantalla = 1;
      vidas = new Vidaclass();
      vidas.vidaJuego();
      vidas.mostrar();
      jueguito();
    }
    if (punto >=10) {
      pantalla = 2;
      ganar();
    }
    if (totalvidas <= 0) {
      pantalla = 3;
      perder();
    }
  }

  void nombreJuego() {
    image (pantNombre, 0, 0);
  }

  void ganar() {
    image (pantGanar, 0, 0);
  }

  void perder() {
    image (pantPerder, 0, 0);
  }
  
    void reinicio() {
    pantalla = 0;
    punto = 0;
    totalvidas = 5 ;
  }

  void jueguito() {
    image (hudGatos, 30, 100);

    Puntos puntos = new Puntos(35, 25, punto);
    puntos.dibujar(); 
    Gatos.indxGatos();
    rinoyperros.indxPerros();
  }

  void keyPressed() {
    if (key == 'j' || key == 'J' ) {
      pantalla = 1;
    }
  }
}
