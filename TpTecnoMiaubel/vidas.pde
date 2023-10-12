class Vidaclass {

  PImage vidacompleta, vidamenos1, vidamenos2;

  void vidaJuego() {
    vidacompleta = loadImage ("vida01.png");
    vidamenos1 = loadImage ("vida02.png");
    vidamenos2 = loadImage ("vida03.png");
  }

  void mostrar() {
    text(totalvidas,50,50);
    if (totalvidas == 3){
    image (vidacompleta, 25, 31);
    } else if (totalvidas == 2){
    image (vidamenos1, 25, 20);
    } else if (totalvidas == 1){
    image (vidamenos2, 25, 20);
    }
  }
}
