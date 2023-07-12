
class Limas{
    constructor() {
        this.limas = loadImage("data/lima.png");
        this.tam = random (350,450);
        this.y = 550;
        this.x = random(0,600);
        this.color = int(random(100,200));
      }
    
      dibujar() {
        push();
        tint(255,this.color);
        image(this.limas, this.x, this.y,this.tam, this.tam);
        pop();
      }
}
