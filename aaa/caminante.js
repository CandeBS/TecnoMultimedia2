class Caminante {
    constructor() {
      this.imagen = loadImage("data/lineaCua.png");
     // this.x = random(width);
     // this.y = random(height);
      this.vel = 4;
      this.direccion = random(TWO_PI);
      this.t = 50;

      this.saltar();
      this.diam = random(15,40);
    }

    saltar(){
      this.x = random(width);
      this.y = random(height);
    }
  
    dibujar() {
      push();
    translate(this.x, this.y);
    rotate(this.direccion);
    image(this.imagen, 0, 0, this.t, this.t);
    pop();
    }
  
    mover() {
      this.direccion += radians(random(-10, 10));
      this.x += this.vel * cos(this.direccion);
      this.y += this.vel * sin(this.direccion);
  
      this.x = this.x > windowWidth ? this.x - windowWidth : this.x;
      this.x = this.x < 0 ? this.x + windowWidth : this.x;
      this.y = this.y > windowHeight ? this.y - windowHeight : this.y;
      this.y = this.y < 0 ? this.y + windowHeight : this.y;


    }
  }
  
