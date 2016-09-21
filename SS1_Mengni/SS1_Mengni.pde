//The layers version_3 by Mengni Feng 09/12/2016
//try to drag the cursor 
//try to keep clicked and drag the cursor
//press any key to reset
float r;

float g;

float b;

float a;


void setup(){
  background(0);
size(1080,720);
 
noFill();
stroke(1);
}
 
void draw(){


  
//r = random(255);

//g = random(255);

//b = random(255);

a = random(100);

quad(mouseX-40,mouseY+40,800,280,mouseX+80,440,80,320);


  if(mouseX > width/2) {fill(
   r = r + 1,g,b,a);
  } else {
   fill(r = r - 1,g,b,a);
}
if (mouseY > height/2) {fill(
   r,g,b = b + 1,a);
  } else {
   fill(r,g,b = b - 1,a);
}
  if (mousePressed) {
   fill(r,g = g + 1,b,a);
  } else {
   fill(r,g = g - 1,b,a);
}
  r = constrain(r,0,255);
  g = constrain(g,0,255);
  b = constrain(b,0,255);
}


void keyPressed() {
 background(0);
}