class Gravityball {
  //instance variables
  int x;
  float y;
  int diameter;
  float speed;

  //constructor
  Gravityball (int tempX, int tempY, int tempDiameter) {
    x= tempX;
    y= tempY;
    diameter= tempDiameter;
    speed=1;
  }
  
  void display() {
 
//get color from video
color c =video.get(int(x),int(y));
 noStroke();
 fill(c);
 
    ellipse(x, y, diameter, diameter);
  } 

  void fall() {
    if (y>height+100) {
      y=-100;
    } else {
      y++;
    }
  }
  
 //gravity
  void update(){
    y=y+speed;
    speed=speed+gravity;
    if(y>height){
      speed=speed*-random(0.5,1);
  
}}
  
  //mouseclick event
  void grow() {
    
    diameter=constrain(diameter, 0, 30);
    
    if (mouseButton==RIGHT) {
     
        
        diameter++;
      } else if (mouseButton==LEFT) {
        
        diameter--;
      }
    }
  
}