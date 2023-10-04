class Techos {

  FBox techo, techo2,techo3;
  PImage techoLiso, techoCortina;

  void techosvoid() {

    techoLiso = loadImage("obstaculo2.png");
    techoCortina = loadImage("obstaculo1.png");

    techo = new FBox(320, 88);
    techo.attachImage(techoLiso);
    techo.setPosition(130, 525);
    techo.setStatic(true);
    techo.setRestitution(0);
    mundo.add(techo);

    techo2 = new FBox(320, 88);
    techo2.attachImage(techoLiso);
    techo2.setPosition(1155, 280);
    techo2.setStatic(true);
    techo2.setRestitution(0);
    mundo.add(techo2);

    techo3 = new FBox(320, 88);
    techo3.attachImage(techoCortina);
    techo3.setPosition(650, 600);
    techo3.setStatic(true);
    techo3.setRestitution(0);
    mundo.add(techo3);
  }
}
