//███████  ██████  ███    ██ ██ ██████   ██████  
//██      ██    ██ ████   ██ ██ ██   ██ ██    ██ 
//███████ ██    ██ ██ ██  ██ ██ ██   ██ ██    ██ 
//     ██ ██    ██ ██  ██ ██ ██ ██   ██ ██    ██ 
//███████  ██████  ██   ████ ██ ██████   ██████  

//-------CONFIGURACION----
let AMP_MIN = 0.01; // umbral mínimo de amplitud. Señal que supera al ruido de fondo
let AMP_MAX = 0.1; // umbral máximo de amplitud. 
let FREC_MIN = 880;
let FREC_MAX = 2000;

//-----ENTRADA DE AUDIO----
let mic;

//-----CAMINANTE----
let trazo; 

//-----AMPLITUD----
let amp; //variable de la amlitud
let haySonido = false; // vaiable booleana que define el ESTADO
let antesHabiaSonido = false; //memoria de la variable "haySonido". Guarda el valor de la variable en fotograma anterior

//------CLASIFICADOR-----
let classifier;
const options = { probabilityThreshold: 0.9 };
let label;
let etiqueta;
const classModel = 'https://teachablemachine.withgoogle.com/models/i7mh1r5L1/';
  
  // Teachable Machine model URL:
 // let soundModel = 'https://teachablemachine.withgoogle.com/models/i7mh1r5L1/';
  
 function setup() {
  createCanvas(700, 850);
  frameRate(10);
  
  limon = new Limon();
  limas = new Limas();
  limas2 = new Limas();

  trazo = new Caminante();

  audioContext = getAudioContext();
  mic = new p5.AudioIn();
  mic.start(startPitch);

  // Inicializar el clasificador
  classifier = ml5.soundClassifier(classModel + 'model.json', options);

  // Comenzar a clasificar
  classifier.classify(gotResult);

}

//██████  ██████   █████  ██     ██ 
//██   ██ ██   ██ ██   ██ ██     ██ 
//██   ██ ██████  ███████ ██  █  ██ 
//██   ██ ██   ██ ██   ██ ██ ███ ██ 
//██████  ██   ██ ██   ██  ███ ███  
function draw() {
  if (label == 'Shhh'){
    background (255,0,0)
    limon.clear();
    label = ' ';
  } else if (label == 'Aplauso'){
    limon.dibujar();
  }

  background(220);
  limon.dibujar();
  limas.dibujar();
  limas2.dibujar();

  trazo.mover();
  trazo.dibujar();

  fill(255);
  textSize(32);
  textAlign(CENTER, CENTER);
  text(label, width / 2, height / 2);

}

function gotResult(error, results) {
  if (error) {
    console.error(error);
    return;
  }
  // The results are in an array ordered by confidence.
  // console.log(results[0]);
  label = results[0].label;
}
