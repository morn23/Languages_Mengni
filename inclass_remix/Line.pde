class Line{


float x;
float y;
float speed;
float x1;
boolean mouse;


Line(){
  x=0;
  y=0;
  x1=random(-20,20);
  speed=random(1);
  mouse=false;
  
}

// Line speed
void move(){
  x=x+speed;
  if(x>width){
  x=-1;
  }
}
  
  //Line images
  void display(){
    color c =video.get(int(x),int(y));
    if(mouse){
      fill(c);
    }else{
      fill(0);
    }
    noStroke();
    rect(x,random(height),x1,random(height));
  }
  

  void more(int mx,int my){
  if(x>mx && mx<x+x1){
    mouse=true;
  }else{
    mouse=false;
  }
  }
}