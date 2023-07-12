//███████  ██████  ███    ██ ██ ██████   ██████  
//██      ██    ██ ████   ██ ██ ██   ██ ██    ██ 
//███████ ██    ██ ██ ██  ██ ██ ██   ██ ██    ██ 
//     ██ ██    ██ ██  ██ ██ ██ ██   ██ ██    ██ 
//███████  ██████  ██   ████ ██ ██████   ██████  


//-----ENTRADA DE AUDIO----
let mic;

//-----AMPLITUD----
let amp;
let AMPMin = 0.04;

//-----IMPRIMIR----
let IMPRIMIR = true;

//-----COSITAS----
let trazo;
let dibujarLimon = false;
let textura;
let limas;
var fondo;
let limones = [];
const cantLimones = 4;
let limonActual;
let limaPGraphics;

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
    tint(208,208,208,20);
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
  for (let i = 0; i < cantLimones; i++) {
    limones[i] = loadImage("./data/ovalo" + i + ".png");
  }
    // Load the model
    classifier = ml5.soundClassifier(soundModel + 'model.json');
    fondo = loadImage ('data/fondo.png');
  }


//███████ ███████ ████████ ██    ██ ██████  
//██      ██         ██    ██    ██ ██   ██ 
//███████ █████      ██    ██    ██ ██████  
//     ██ ██         ██    ██    ██ ██      
//███████ ███████    ██     ██████  ██      

function setup() {
  createCanvas(700, 850);
  background (fondo);
  frameRate(10);

  limon = new Limon();
  limas = new Limas();
  textura = new Textura();
  trazo = new Caminante();

  limaPGraphics = createGraphics(700, 850); // Crear el PGraphics con el tamaño deseado
  limaPGraphics.background(0, 0); // Establecer un fondo transparente

  for (let i=0; i<cantLimones;i++){
    limones[i] = loadImage ("./data/ovalo"+i+".png");
  }

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

// Dibujar las limas
limas.dibujar();

if (label === 'Aplauso' && amp > 0.1) {
  limonActual = new Limon(limones);
  background(fondo); // Vuelve a dibujar el fondo
  limonActual.dibujar();
  dibujarLimon = true;
}

if (label === 'Silbido'){
  trazo.mover();
  trazo.dibujar();  
}

if (label === 'Shhh'){
  textura.dibujar();
  }

  if (amp > 0.9) {
    window.location.reload(); // Recargar la página
  }

  image(limaPGraphics, 0, 0);

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
