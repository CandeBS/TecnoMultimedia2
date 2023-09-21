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
      jueguito();
    }
    if (punto >=10) {
      pantalla = 2;
      ganar();
    }
  }

  void nombreJuego() {
    image (pantNombre, 0, 0);
  }

  void ganar() {
    image (pantGanar, 0, 0);
  }

  void jueguito() {
    //FBox techo;
    image (hudGatos, 30, 100);

    Puntos puntos = new Puntos(35, 25, punto);
    puntos.dibujar(); 
    Gatos.indxGatos();
    rinoyperros.indxPerros();

//    techo = new FBox(320, 88);
//    techo.setPosition(100, 500);
//    techo.setStatic(true);
//    techo.setFill(0);
//    techo.setRestitution(0);
//    mundo.add(techo);
  }

  void keyPressed() {
    if (key == 'j' || key == 'J' ) {
      pantalla = 1;
    }
  }
}
