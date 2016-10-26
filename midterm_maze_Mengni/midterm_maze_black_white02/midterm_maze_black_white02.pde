//Mengni Feng Maze Maze

int gridsize = 3;
int[][] grid;
float rectsize;
PImage[] pictures;

void setup() {
  size(700, 700);
  frameRate(255);
  background(0);
  rectsize = width / gridsize;
  grid = new int[gridsize][gridsize];

  pictures = new PImage[17];

  for (int i = 0; i <= 16; i++) {
    pictures[i] = loadImage("kt" + str(i) + ".gif");
  }

  for (int i = 0; i < gridsize; i++) {
    for (int j = 0; j < gridsize; j++) {
      grid[i][j] = 0;
    }
  }
}

void draw() {
  background(255);
  
  for (int i = 0; i < gridsize; i++) {
    for (int j = 0; j < gridsize; j++) {
      float x = i * rectsize;
      float y = j * rectsize;
      int index = grid[i][j];
      PImage pic = pictures[index];
      image(pic, x, y, rectsize+2, rectsize+2);
    }
  }
}

void mouseClicked() {
  int x = floor(mouseX/rectsize); 
  // floor() Calculates the closest int value that is less than or equal to the value of the parameter
  int y = floor(mouseY/rectsize);

  int index = grid[x][y];
  if (mouseButton == LEFT) {
    index = index + 1;
    index %= 17;
  } else {
    if (index == 0){
      index = 16;
    }
    else{
      index = index - 1;
    }
  }
  
  grid[x][y] = index;
}