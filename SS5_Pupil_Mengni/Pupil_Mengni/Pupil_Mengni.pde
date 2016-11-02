//Pupil_Mengni
//try to put mouse at right of left side of canvas


import processing.video.*;


//Declare Movie object
Movie movie; 
int x=0;
int y=0;

void setup() {
  size(600,360);
//Initialize Movie object

movie = new Movie(this, "eye.m4v"); 


  movie.volume(0);
  movie.loop(); 
}

// Read new frames from movie
void movieEvent(Movie movie) {
  movie.read();
}

void draw() {

 background(0);
  int w= movie.width;
  int h= movie.height;
  

  if (mouseX> 300) {
    //   background(0);

    copy(movie, 0, h/2-20, w, 30, 0, y, w, 30);
    y=y+1;
    if (y>height){
      y=0;}

  } else {
    

    copy(movie, w/2-5, 0, 30, h, x, 0, 30, h);
    x=x+1;
     if (x>width){
      x=0;}
      
      
      
 
  }
//image(movie, 0, 0);
 }


 


//void keyPressed() {
//  if (key == 'A') {
//    background(0);
//  }
//}