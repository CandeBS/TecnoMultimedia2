class GatosClass {
  PImage[] gatos = new PImage[7];
  FCircle gatito;

  void imgGatos() {
    for (int i = 0; i < gatos.length; i++) {
      PImage dibujosGatos = loadImage("gato" + i + ".png");
      gatos[i] = dibujosGatos;
    }
  }

  void indxGatos() {
    // Gatitos cayendo
    if (frameCount % 60 == 0) {
      gatito = new FCircle(50); // Initialize gatito here
      gatito.setPosition(random(0 + 10, width - 10), 2); // De donde salen los gatos
      gatito.setVelocity(0, 200);
      gatito.setRestitution(1.5);
      gatito.setNoStroke();
      gatito.setFill(200, 30, 90);
      gatito.setName("gato");
      mundo.add(gatito);
      println("Me ejecuto");
      
      
      int index = int(random(gatos.length)); // Choose a random cat image
      gatito.attachImage(gatos[index]);
    }
  }
}
