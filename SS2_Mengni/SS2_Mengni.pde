//The layers version_2 by Mengni Feng 09/12/2016

float r;

float g;

float b;

float a;

int change = 40;

int a1 = 680;
int a2 = 0;
int a3 = 40;

void setup(){
size(1080,720);
background(0);
noFill();
stroke(2);}

void draw(){
  
r = random(255);

g = random(255);

b = random(255);

a = random(180);
}


void mousePressed() {

  fill(r,g,b,a);
  quad(mouseX-40,mouseY+40,800,280,mouseX+80,440,80,320);}


void keyPressed() {
  background(0);
}