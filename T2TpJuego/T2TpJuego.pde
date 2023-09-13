import fisica.*;

FWorld mundo;
PImage abuela;


//███████ ███████ ████████ ██    ██ ██████  
//██      ██         ██    ██    ██ ██   ██ 
//███████ █████      ██    ██    ██ ██████  
//     ██ ██         ██    ██    ██ ██
//███████ ███████    ██     ██████  ██

void setup(){
  size (1500,1000);
  Fisica.init(this);
  
  mundo = new FWorld();
  mundo.setEdges(); //bordes para que no se vayan los gatitos fuera de la pantalla
  mundo.setGravity(100, 400);
  
  abuela = loadImage("abu.png"); 
}

//██████  ██████   █████  ██     ██ 
//██   ██ ██   ██ ██   ██ ██     ██ 
//██   ██ ██████  ███████ ██  █  ██ 
//██   ██ ██   ██ ██   ██ ██ ███ ██ 
//██████  ██   ██ ██   ██  ███ ███  
void draw(){
  background(245,225,239);
  mundo.step(); //Para que pase el tiempo
  mundo.draw();
  
  //background(180);
  
  //Gatitos cayendo
  if (frameCount % 60 == 0) {
    FCircle gatito = new FCircle(50);
    gatito.setPosition(random(0+10, width-10), 2); //De donde salen los gatos
    gatito.setFill(214,149,234); //Color
    gatito.setRestitution(1.5);
    mundo.add(gatito);
  }
  
}
