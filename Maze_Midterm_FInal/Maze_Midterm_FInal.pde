//Mengni Feng
// Maze Maze
//Language class midterm project

//Maze Puzzle Game
//traditional Maze game is to find a single way out from a start point to an end point
//This Maze puzzle game trying to subverting the existing impression of maze game
//the ultimate goal is to gain a maze image by complete this puzzle
//sometimes our life is not to find our own way but to work so hard to set difficuties for ourselves first



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
int rand0=0;
int rand1=0;
int rand2=0;
int rand3=0;
int rand4=0;
int rand5=0;
int rand6=0;
int rand7=0;
int rand8=0;

boolean i=true;



void setup() {

  size(900, 900);
  // frameRate(24);
  // background(0);
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
  
  background(0);
  arraytop();
  gameover();


  oripic = loadImage("200.png");

  if (state== "pregame") {
    frameRate(24);
    textSize(40);
    textAlign(CENTER);
    background(0);
    fill(random(255), 0, random(255));
    //textFont(mono);
    for (int i=0; i<900; i=i+430) {
      for (int j=0; j<900; j=j+50) {
        text("Press any key to start", i, j);
        
      }
    }
  } else if (state=="game") {
    // rect(200, 200, 600, 600);
    frameRate(2);
   
    //image(oripic, 0, 0);
    background (random(255), 0, random(255));
    //background (255);
    //mousePressed();
    textSize(36);
    textAlign(RIGHT);

    image(oripic, 0, 0);
     stroke(255);
    rect(0,0,200,200);
    fill(random(255), 0, random(255));
    textSize(20);
    text("Target", 130, 220);
    //fill(0);
    text("Enter", 535, 830);
    text("Exit", 505, 190);
    text("Click each unit within the frame to complete your maze puzzle", 865, 90);
    //int rand = (int)random(pictures.length);
    noFill();

    image(pictures[rand0], 200, 200);
    image(pictures[rand1], 400, 200);
    image(pictures[rand2], 600, 200);
    image(pictures[rand3], 200, 400);
    image(pictures[rand4], 400, 400);
    image(pictures[rand5], 600, 400);
    image(pictures[rand6], 200, 600);
    image(pictures[rand7], 400, 600);
    image(pictures[rand8], 600, 600);
     
     stroke(255);
    rect(200, 200, 600, 600);

    rect(800, 800, 100, 100);
  } else if (state=="gameover") {
    
    for (int i=300; i<900; i=i+550) {
      for (int j=0; j<900; j=j+100) {
      fill(random(255), 0, random(255)); 
      textSize(40);
    text("Your time is up, Game Over", i, j);
    text("Press any key to restart", i-35, j+50);
}}
  }
    

  println(frameCount);
}



void keyPressed() {
  if (state== "pregame") {
    state="game";
  } 
  else if (state== "gameover") {
    state="pregame";
  } 
}

void gameover(){
   if (frameCount>400 ) {
    state="gameover";
  frameCount=0;  }
  
  //if (keyPressed){
  //  if (state== "gameover"){
  //  frameCount=0;  
  //  state = " pregame";}}
    
  }

void mouseClicked() {
  if (mouseX>200 && mouseX<400
    && mouseY>200 && mouseY<400) {

    rand0=rand0+int(random(1, 8));
  } 
  if (mouseX>400 && mouseX<600
    && mouseY>200 && mouseY<400) {
    rand1=rand1+int(random(1, 8));
  } 
  if (mouseX>600 && mouseX<800
    && mouseY>200 && mouseY<400) {
    rand2=rand2+int(random(1, 8));
  } 
  if (mouseX>200 && mouseX<400
    && mouseY>400 && mouseY<600) {
    rand3=rand3+int(random(1, 8));
  } 
  if (mouseX>400 && mouseX<600
    && mouseY>400 && mouseY<600) {
    rand4=rand4+int(random(1, 8));
  } 
  if (mouseX>600 && mouseX<800
    && mouseY>400 && mouseY<600) {
    rand5=rand5+int(random(1, 8));
  }
  if (mouseX>200 && mouseX<400
    && mouseY>600 && mouseY<800) {
    rand6=rand6+int(random(1, 8));
  }
  if (mouseX>400 && mouseX<600
    && mouseY>600 && mouseY<800) {
    rand7=int(random(1, 8));
  }
  if (mouseX>600 && mouseX<800
    && mouseY>600 && mouseY<800) {
    rand8=rand8+int(random(1, 8));
  }
}


void arraytop() {
  if (rand0>9) {
    rand0=int(random(0,8));
  }
  if (rand1>9) {
    rand1=int(random(0,8));
  }
  if (rand2>9) {
    rand2=int(random(0,8));
  }
  if (rand3>9) {
    rand3=int(random(0,8));
  }

  if (rand4>9) {
    rand4=int(random(0,8));
  }
  if (rand5>9) {
    rand5=int(random(0,8));
  }  

  if (rand6>9) {
    rand6=int(random(0,8));
  }  
  if (rand7>9) {
    rand7=int(random(0,8));
  }  
  if (rand8>9) {
    rand8=int(random(0,8));
  }
}