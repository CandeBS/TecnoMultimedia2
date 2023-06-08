//███████ ███████ ████████ ██    ██ ██████  
//██      ██         ██    ██    ██ ██   ██ 
//███████ █████      ██    ██    ██ ██████  
//     ██ ██         ██    ██    ██ ██      
//███████ ███████    ██     ██████  ██      

let trazo; 

function setup() {
  createCanvas(700, 850);
  frameRate(10);
  limon = new Limon();
  limas = new Limas();
  limas2 = new Limas();

  trazo = new Caminante();
}

//██████  ██████   █████  ██     ██ 
//██   ██ ██   ██ ██   ██ ██     ██ 
//██   ██ ██████  ███████ ██  █  ██ 
//██   ██ ██   ██ ██   ██ ██ ███ ██ 
//██████  ██   ██ ██   ██  ███ ███  
function draw() {
  background(220);
  limon.dibujar();
  limas.dibujar();
  limas2.dibujar();

}
