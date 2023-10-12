class Perros {
  PImage[] perros = new PImage[3];
  FCircle perrito; 

  void imgPerros() {
    for (int i = 0; i < perros.length; i++) {
      PImage dibujosPerros = loadImage("perro" + i + ".png");
      dibujosPerros.resize(150, 150);
      perros[i] = dibujosPerros;
    }
  }

  void indxPerros() {
    if (frameCount % 100 == 0) {
      perrito = new FCircle(50); 
      perrito.setPosition(random(0 + 10, width - 10), 2); 
      perrito.setVelocity(0, 200);
      perrito.setRestitution(1);
      perrito.setNoStroke();
      perrito.setFill(200, 30, 90);
      perrito.setName("perro");
      mundo.add(perrito);

      int index = int(random(perros.length)); 
      perrito.attachImage(perros[index]);
    }
  }
}
