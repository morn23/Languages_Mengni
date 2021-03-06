
//Gravityball_Mengni_Feng
//gravityball as effect overlapping in-time camera video
//Mouse: Right click to zoom out Pixels/to have more pixels
//       LEFT click to zoom in Pixels/to have less pixels
//Press r key to saveframe


import processing.video.*;

Capture video;
int n=int(random(500,8000));

Gravityball[] gravityballs= new Gravityball[n];

float gravity = 0.1;  

void setup() {
  size (400, 400);
  //background(0);
  video = new Capture(this, width, height);
  video.start();
  //initialize objects by calling the constructor with a for loop
  for (int i=0; i< gravityballs.length; i++){
    gravityballs[i]= new Gravityball(int(random(width)), int (random(height)), 65);
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
  for(int i=0; i<gravityballs.length; i++){
   

  gravityballs[i].display(); 
  gravityballs[i].fall();
  gravityballs[i].update();
  gravityballs[i].grow();
  }
  if (mouseButton==LEFT) {
     
        
        n++;
      } else if (mouseButton==RIGHT) {
        
        n--;
      }
}

void keyPressed() {
  
  // If  press r, saveframes
  if (key == 'r' || key == 'R') {
    saveFrame("output/frames####.png");
  }
}