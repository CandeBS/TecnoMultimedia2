//███████  ██████  ███    ██ ██ ██████   ██████  
//██      ██    ██ ████   ██ ██ ██   ██ ██    ██ 
//███████ ██    ██ ██ ██  ██ ██ ██   ██ ██    ██ 
//     ██ ██    ██ ██  ██ ██ ██ ██   ██ ██    ██ 
//███████  ██████  ██   ████ ██ ██████   ██████  


//-----ENTRADA DE AUDIO----
let mic;

//-----AMPLITUD----
let amp;
let AMPMin = 0.02;
let haySonido = false;

//-----IMPRIMIR----
let IMPRIMIR = true;

//-----COSITAS----
let trazo;
let limon;
let textura;
let limas = [];

//-----TEXTURA----
class Textura {
  constructor() {
    this.textura = loadImage("data/textura.png");
    this.tam = 900;
    this.x = 0;
    this.y = 0;
  }

  dibujar() {
    push();
    tint(208,208,208);
    image(this.textura, this.x, this.y, this.tam, this.tam);
    pop();
  }
}


//------CLASIFICADOR-----
let classifier;
const options = { probabilityThreshold: 0.9 };
let label;
let etiqueta;
const soundModel = 'https://teachablemachine.withgoogle.com/models/i7mh1r5L1/';

  
function preload() {
    // Load the model
    classifier = ml5.soundClassifier(soundModel + 'model.json');
  }


//███████ ███████ ████████ ██    ██ ██████  
//██      ██         ██    ██    ██ ██   ██ 
//███████ █████      ██    ██    ██ ██████  
//     ██ ██         ██    ██    ██ ██      
//███████ ███████    ██     ██████  ██      

function setup() {
  createCanvas(700, 850);
  background(220);
  frameRate(10);

  limon = new Limon();
  limas = new Limas();
  limas2 = new Limas();
  textura = new Textura();

  trazo = new Caminante();

  // The sound model will continuously listen to the microphone
  classifier.classify(gotResult);

  //-----MICROFONO----
  mic = new p5.AudioIn();
  mic.start();

  userStartAudio();
}

//██████  ██████   █████  ██     ██ 
//██   ██ ██   ██ ██   ██ ██     ██ 
//██   ██ ██████  ███████ ██  █  ██ 
//██   ██ ██   ██ ██   ██ ██ ███ ██ 
//██████  ██   ██ ██   ██  ███ ███  
function draw() {

  // Amplitud para el dibujo
  amp = mic.getLevel();
  haySonido = amp > AMPMin;

if (haySonido){

// Dibujar las limas
limas.dibujar();
limas2.dibujar();

if (label === 'Aplauso') {
limon.dibujar();
  } 

if (label === 'Silbido'){
  trazo.mover();
  trazo.dibujar();  
}

if (label === 'Shhh'){
  textura.dibujar();
}


  }

/* if(IMPRIMIR){
  printData();
} */
}
function gotResult(error, results) {
  if (error) {
    console.error(error);
    return;
  }

  // console.log(results[0]);
  label = results[0].label;
}

//-----IMPRIMIR pt2---
/* function printData(){
  push();
  textSize(16);
  fill(0);
  let texto;

  texto = 'amplitud: ' + amp;
  text(texto, 100,20);
  pop();
}
 */
