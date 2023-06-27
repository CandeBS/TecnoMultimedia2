//███████  ██████  ███    ██ ██ ██████   ██████  
//██      ██    ██ ████   ██ ██ ██   ██ ██    ██ 
//███████ ██    ██ ██ ██  ██ ██ ██   ██ ██    ██ 
//     ██ ██    ██ ██  ██ ██ ██ ██   ██ ██    ██ 
//███████  ██████  ██   ████ ██ ██████   ██████  


//-----ENTRADA DE AUDIO----
let mic;

//-----AMPLITUD----
let amp;
let AMPMin = 0.03;
let haySonido = false;

//-----IMPRIMIR----
let IMPRIMIR = true;

//-----COSITAS----
let trazo;
let limon;
let limas = [];
let limones = []; 
let mostrarLimon = false; 

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

/*  function generarLimones() {
   if (label === 'Aplauso') {
    if (limones.length >= 1) {
        limones.shift(); // Eliminar limon del arreglo
      }
      let nuevoLimon = new Limon(); // Crea una nueva instancia de Limon
      limones.push(nuevoLimon); // Agrega la nueva instancia al arreglo de limones
    } 
 }  */


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

// Mover y dibujar el trazo
trazo.mover();
trazo.dibujar();

if (label === 'Aplauso') {
  if (limones.length >= 1) {
      limones.shift(); // Eliminar limon del arreglo
    }
    let nuevoLimon = new Limon(); // Crea una nueva instancia de Limon
    limones.push(nuevoLimon); // Agrega la nueva instancia al arreglo de limones
  } 

for (let i = 0; i < limones.length; i++) {
  limones[i].dibujar();
} 


  }

if(IMPRIMIR){
  printData();
}
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
function printData(){
  push();
  textSize(16);
  fill(0);
  let texto;

  texto = 'amplitud: ' + amp;
  text(texto, 100,20);
  pop();

}
