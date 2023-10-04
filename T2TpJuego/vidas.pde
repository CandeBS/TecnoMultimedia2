class Vidaclass {

  int totalvidas;
  PImage vidacompleta, vidamenos1, vidamenos2;

  void vidaJuego() {
    vidacompleta = loadImage ("vida01.png");
    vidamenos1 = loadImage ("vida02.png");
    vidamenos2 = loadImage ("vida03.png");
  }

  void mostrar() {
    if (totalvidas >= 3);
    image (vidacompleta, 25, 20);
    if (totalvidas >= 2);
    image (vidamenos1, 25, 20);
    if (totalvidas >= 1);
    image (vidamenos2, 25, 20);
  }
}
