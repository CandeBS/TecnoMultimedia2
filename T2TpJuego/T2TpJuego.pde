import fisica.*;

FWorld mundo;
Puntos puntos;
AbuelaClass abuela;
Vidaclass vidas;
Juego juegoMiaubel;
GatosClass Gatos;
Perros rinoyperros;

PImage imagenabuela, fondo;
int abuX, abuY;
int punto = 0;
int vida = 1;
ArrayList<FCircle> gatosList = new ArrayList<FCircle>();
ArrayList<FCircle> perrosList = new ArrayList<FCircle>();
boolean abuelaEnContacto = false;
  FBody ball = null;
  FBody abuelita = null;


//███████ ███████ ████████ ██    ██ ██████  
//██      ██         ██    ██    ██ ██   ██ 
//███████ █████      ██    ██    ██ ██████  
//     ██ ██         ██    ██    ██ ██
//███████ ███████    ██     ██████  ██

void setup() {
  size(1500, 1000);
  Fisica.init(this);
  
}

//void contactStarted(FContact c) {
//  println("hay contacto");
//  FBody body1 = c.getBody1();
//  FBody body2 = c.getBody2();

//  if ((body1 == abuela.miaubel && (body2 == Gatos.gatito || body2 == rinoyperros.perrito)) ||
//    (body2 == abuela.miaubel && (body1 == Gatos.gatito || body1 == rinoyperros.perrito))) {
//    abuelaEnContacto = true;
//    if (body1 == Gatos.gatito){
//      ball = body1;
//    } else if (body2 == Gatos.gatito){
//      ball = body2;
//    }else if (body1 == rinoyperros.perrito){
//      ball = body1;
//    } else if (body2 == rinoyperros.perrito){
//     ball = body2; 
//    }
//  }
//}

//██████  ██████   █████  ██     ██ 
//██   ██ ██   ██ ██   ██ ██     ██ 
//██   ██ ██████  ███████ ██  █  ██ 
//██   ██ ██   ██ ██   ██ ██ ███ ██ 
//██████  ██   ██ ██   ██  ███ ███  
void draw() {

  juegoMiaubel.funcionar(
  mundo.step();
  mundo.draw(););
  puntos = new Puntos(100,100,punto);

  for (int i = gatosList.size() - 1; i >= 0; i--) {
    FCircle gato = gatosList.get(i);
    gato.setPosition(gato.getX(), gato.getY() + 200);
  }

  for (int i = perrosList.size() - 1; i >= 0; i--) {
    FCircle perro = perrosList.get(i);
    perro.setPosition(perro.getX(), perro.getY() + 2);
  }
  }


  //void contactStarted(FContact c) {
  //  //Funcion contacto de objetos
  //  FBody ball = null;
  //  FBody abuelita = null;
  //  if (c.getBody1() == abuela.miaubel && c.getBody2() == rinoyperros.perrito) {
  //      punto -= 1;
  //      mundo.remove(c.getBody2());
  //  }
  //   else if (c.getBody2() == abuela.miaubel && c.getBody1() == rinoyperros.perrito) {
  //      punto -= 1;
  //      mundo.remove(c.getBody1()); 
  //  }
  //  else if (c.getBody1() == abuela.miaubel && c.getBody2() == Gatos.gatito) {
  //      punto += 1;
  //      mundo.remove(c.getBody2());
  //  }
  //  else if (c.getBody2() == abuela.miaubel && c.getBody1() == Gatos.gatito) {
  //      punto += 1;
  //      mundo.remove(c.getBody1());
  //  }
  //}


  
//  if (abuelaEnContacto) {
//    println ("abuela em contacto");
//    // Incrementa o disminuye puntos y elimina la pelota aquí
//    if (ball == Gatos.gatito) {
//      punto += 1;
//      println ("Se sumo un punto");
//      mundo.remove(ball);
//    } else if (ball == rinoyperros.perrito) {
//      punto -= 1;
//      println ("Se restó un punto");
//      mundo.remove(ball);
//    }

//    // Restablece la variable abuelaEnContacto para evitar múltiples incrementos/disminuciones en el mismo contacto.
//    abuelaEnContacto = false;
//  }
//}

void keyPressed() {
  juegoMiaubel.keyPressed();
}
