import fisica.*;

FWorld mundo;
FBox miaubel;
Puntos puntos;
Vidaclass vidas;
Juego juegoMiaubel;
GatosClass Gatos;
Perros rinoyperros;

PImage abuela,fondo;
int abuX, abuY;
int punto = 0;
int vida = 1;
ArrayList<FCircle> gatosList = new ArrayList<FCircle>();
ArrayList<FCircle> perrosList = new ArrayList<FCircle>();


//███████ ███████ ████████ ██    ██ ██████  
//██      ██         ██    ██    ██ ██   ██ 
//███████ █████      ██    ██    ██ ██████  
//     ██ ██         ██    ██    ██ ██
//███████ ███████    ██     ██████  ██

void setup() {
  size(1500, 1000);
  Fisica.init(this);

  mundo = new FWorld();
  mundo.setEdges();
  mundo.setGravity(100, 400);
  
  fondo = loadImage("fondo.png");

  miaubel = new FBox(300, 150);
  miaubel.setPosition(width/2, height - 40);
  miaubel.setRestitution(0);
  mundo.add(miaubel);
  miaubel.setStatic(true);

  abuela = loadImage("abu.png");
  abuela.resize(300, 150);

  miaubel.attachImage(abuela);

  Gatos = new GatosClass();
  Gatos.imgGatos();
  rinoyperros = new Perros();
  rinoyperros.imgPerros();
  gatosList = new ArrayList<FCircle>();
  perrosList = new ArrayList<FCircle>();
  
  juegoMiaubel = new Juego();
}

//██████  ██████   █████  ██     ██ 
//██   ██ ██   ██ ██   ██ ██     ██ 
//██   ██ ██████  ███████ ██  █  ██ 
//██   ██ ██   ██ ██   ██ ██ ███ ██ 
//██████  ██   ██ ██   ██  ███ ███  
void draw() {
  image (fondo,0,0);
  mundo.step();
  mundo.draw();

  juegoMiaubel.funcionar();

  for (int i = gatosList.size() - 1; i >= 0; i--) {
    FCircle gato = gatosList.get(i);
    gato.setPosition(gato.getX(), gato.getY() + 200);
  }

  for (int i = perrosList.size() - 1; i >= 0; i--) {
    FCircle perro = perrosList.get(i);
    perro.setPosition(perro.getX(), perro.getY() + 2);
  }
  }
  
void contactStarted(FContact c) {
  FBody ball = null;
  if (c.getBody1() == miaubel) {
    ball = c.getBody2();
    punto += 1;
  } else if (c.getBody2() == miaubel) {
    ball = c.getBody1();
    punto += 1;
  }
  
  if (ball == null) {
    return;
  }
  
  ball.setFill(30, 190, 200);
  mundo.remove(ball);
}

void keyPressed() {
  juegoMiaubel.keyPressed();
}
