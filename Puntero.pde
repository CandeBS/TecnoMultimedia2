class Puntero{
  float id;
  float x;
  float y;
  float diam;
  PImage mano;
  
  FWorld mundo;
  
  FCircle body;
  FMouseJoint mj;
  
  Puntero(FWorld _mundo, float _id, float _x, float _y){
    mundo = _mundo;
    id = _id;
    x = _x;
    y = _y;
    diam = 80;
    
    body = new FCircle(diam);
    body.setPosition(x,y);
    body.setRotatable(false);
    mj = new FMouseJoint(body,x,y);
    mundo.add(body);
    mundo.add(mj);
    mano = loadImage("mano.png");
    
  }
  
  void setTarget(float nx, float ny) {
    mj.setTarget(nx,ny);
  }
  
  void setID(float id){
    this.id = id;
  }
  
   void borrar() {
    mundo.remove(mj);
    mundo.remove(body);
  }
  
  void dibujar() {

    body.attachImage(mano);
  }
}
