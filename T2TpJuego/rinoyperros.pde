class Perros {
  PImage[] perros = new PImage[3];
  FCircle perrito; // Define perrito as a member variable

  void imgPerros() {
    for (int i = 0; i < perros.length; i++) {
      PImage dibujosPerros = loadImage("perro" + i + ".png");
      dibujosPerros.resize(150, 150);
      perros[i] = dibujosPerros;
    }
  }

  void indxPerros() {
    // Perros falling
    if (frameCount % 60 == 0) {
      perrito = new FCircle(50); // Initialize perrito here
      perrito.setPosition(random(0 + 10, width - 10), 2); // Where the dogs come from
      perrito.setVelocity(0, 200);
      perrito.setRestitution(1.5);
      perrito.setNoStroke();
      perrito.setFill(200, 30, 90);
      perrito.setName("perro");
      mundo.add(perrito);

      int index = int(random(perros.length)); // Choose a random dog image
      perrito.attachImage(perros[index]);
    }
  }
}
