
//Inclass_remix_work
//Mengni
//and
//ZsaZsa


import processing.video.*;

Capture video;

Line[] lines= new Line[2000];
//Gravityball[] gravityballs= new Gravityball[int(random(500,1000))];

//float gravity = 0.1;  

void setup() {
  size (800, 800);
  //frameRate(50);
  //background(0);
  video = new Capture(this, width, height);
  video.start();
  //initialize objects by calling the constructor with a for loop
  //for (int i=0; i< gravityballs.length; i++){
  //  gravityballs[i]= new Gravityball(int(random(width)), int (random(height)), 65);
  //}
  
  for(int i=0;i<lines.length;i++){
         lines[i]= new Line(); 
  }
  //background(0);
}


void captureEvent(Capture video) {
  video.read();
}

void draw() {
 background(0);

  //call methods 
  //the for loop increments through each object in the array
  //for(int i=0; i<gravityballs.length; i++){
   

  //gravityballs[i].display(); 
  //gravityballs[i].fall();
  //gravityballs[i].update();
  //gravityballs[i].grow();
  //}
  
  for(int i=0;i<lines.length;i++){
    lines[i].move();                //line moving speed 
    lines[i].display();             //line images
    lines[i].more(mouseX,mouseY);   //checking the point of mouse
  }
}

//void keyPressed() {
  
//  // If  press r, saveframes
//  if (key == 'r' || key == 'R') {
//    saveFrame("output/frames####.png");
//  }
//}