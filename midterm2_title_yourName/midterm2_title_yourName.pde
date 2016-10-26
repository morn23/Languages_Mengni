String state= "pregame"; //create String variable called state and assign initial value
//PFont mono;

PImage oripic;
PImage kt00;
PImage kt01;
PImage kt02;
PImage kt03;
PImage kt04;
PImage kt05;
PImage kt06;
PImage kt07;
PImage kt08;
PImage kt09;
int gridsize = 3;
int[][] grid; //two-dimensional array
float rectsize;
PImage[] pictures;
int rand=0;

boolean i=true;



void setup() {

  size(900, 900);
 // frameRate(24);
  background(0);
  rectsize = 200;
  grid = new int[gridsize][gridsize];


  pictures = new PImage[10];
  kt00= loadImage("kt0.png");
  kt01= loadImage("kt1.png");
  kt02= loadImage("kt2.png");
  kt03= loadImage("kt3.png");
  kt04= loadImage("kt4.png");
  kt05= loadImage("kt5.png");
  kt06= loadImage("kt6.png");
  kt07= loadImage("kt7.png");
  kt08= loadImage("kt8.png");
  kt09= loadImage("kt9.png");
  for (int i = 0; i <pictures.length; i++) {
    pictures[i] = loadImage("kt" + str(i) + ".png");
  }
}


void draw() {
  //mono = loadFont("Roboto-Medium.ttf");

  oripic = loadImage("200.png");

  if (state== "pregame") {
     frameRate(24);
    textSize(40);
    textAlign(CENTER);
    background(0);
    fill(0, 0, 150);
    //textFont(mono);

    text("Press any key to start", mouseX, mouseY);
    fill(0,0,255);
     text("Press any key to start", mouseX-15, mouseY-10);
  } else if (state=="game") {
  // rect(200, 200, 600, 600);
    image(oripic, 0, 0);
    background (0,0,255);
//mousePressed();
    textSize(36);
    textAlign(RIGHT);

    image(oripic, 0, 0);
    fill(255, 0, 0);
    textSize(20);
    text("Target", 130, 220);
    fill(0);
    text("Enter",535,830);
    text("Exit", 505,190);
    //int rand = (int)random(pictures.length);
   noFill();
 //  image(pictures[rand], 200, 400);
   //image(pictures[rand], 400, 200);
 if (mouseX>200 && mouseX<400
    && mouseY>200 && mouseY<400) {
    image(pictures[rand], 200, 200);
  } 
  if (mouseX>400 && mouseX<600
    && mouseY>200 && mouseY<400) {
    image(pictures[rand], 400, 200);
  } 
  if (mouseX>600 && mouseX<800
    && mouseY>200 && mouseY<400) {
    image(pictures[rand], 600, 200);
  } 
  if(mouseX>200 && mouseX<400
    && mouseY>400 && mouseY<600) {
    image(pictures[rand], 200, 400);
  } 
  if (mouseX>400 && mouseX<600
    && mouseY>400 && mouseY<600) {
    image(pictures[rand], 400, 400);
  } 
  if (mouseX>600 && mouseX<800
    && mouseY>400 && mouseY<600) {
    image(pictures[rand], 600, 400);
  }
  if (mouseX>200 && mouseX<400
    && mouseY>600 && mouseY<800) {
    image(pictures[rand], 200, 600);
  }
  if (mouseX>400 && mouseX<600
    && mouseY>600 && mouseY<800) {
    image(pictures[rand], 400, 600);
  }
  if (mouseX>600 && mouseX<800
    && mouseY>600 && mouseY<800) {
    image(pictures[rand], 600, 600);
  }
    rect(200, 200, 600, 600);
    
   
 
  }

  //println(state);
}


//click mouse to trigger next state
void keyPressed() {
  if (state== "pregame") {
    state="game";
  } else if (state=="game") {
    state="pregame";
  }
}


void mousePressed(){
  if(i){
rand = int(random(pictures.length));}
else{
  rand=0;}
  
}
  