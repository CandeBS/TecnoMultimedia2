class Limas{
    constructor() {
        this.limas = loadImage("data/lima.png");
        this.limas2 = loadImage("data/lima2.png");
        this.tam1 = random (550,1300);
        this.tam2 = random (550,1000);
        this.y1 = random (300,550);
        this.y2 = random (300,550);
        this.x1 = random(-300,300);
        this.x2 = random(-300,300);
        this.color = int(random(50,100));
      }

      dibujar() {
        push();
        tint(255,this.color);
        image(this.limas, this.x1, this.y1,this.tam1, this.tam1);
        image(this.limas2, this.x2, this.y2,this.tam2, this.tam2);
        pop();
      }
}
