class Rino {
  PImage rinoceronte;
  FCircle rinocerontito; 

  void indxRino() {
    if (frameCount == 400) {
      PImage rinoceronteImg = loadImage("rino.png");
      rinocerontito = new FCircle(50); 
      rinocerontito.setPosition(random(0 + 10, width - 10), 2); 
      rinocerontito.setVelocity(0, 200);
      rinocerontito.setRestitution(1.2);
      rinocerontito.setNoStroke();
      rinocerontito.setFill(200, 30, 90);
      rinocerontito.setName("rino");
      mundo.add(rinocerontito);

      rinocerontito.attachImage(rinoceronteImg);
    }
  }
}
