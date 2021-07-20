PImage frog;
PImage []left;
PImage []right;
PImage []up;
PImage []bottom;
//PImage background;

int totFrames = 3;
int imgWidth = 142;
int imgHeight = 88;
int i=0;
int size = 50;
PVector speed;
int x,y;
int dir=1;
int grid = 5;
int backWidth = 682;
int backHeight = 597;


void setup(){
  size(682,597);
  //background = loadImage("data/photos/background2.png");
  left = new PImage[totFrames];
  right = new PImage[totFrames];
  up = new PImage[totFrames];
  bottom = new PImage[totFrames];
  frog = loadImage("data/photos/ch.jpg");
  for (int i=0; i<totFrames; i++){
    up[i] = frog.get(i*imgWidth/6,0,imgWidth/6, imgHeight/3);
    left[i] = frog.get(i*imgWidth/2, 0, imgWidth/6, imgHeight/3);
  }
  x=width/2;
  y=height-size;
  speed = new PVector(x,y);
}


void draw(){
 // background.resize(backWidth,backHeight);
  background(0);
  if (keyPressed){
      if (keyCode == DOWN){
        up();
        speed.y+=dir*grid;
        increment();
      }
      else if (keyCode == LEFT){
        left();
        speed.x-=dir*grid;
        increment();
      }
      else if (keyCode == RIGHT){
        left();
        speed.x+=dir*grid;
        increment();
      }
      else if (keyCode == UP){
        up();
        speed.y-=dir*grid;
        increment();
      }
    }else{
      if (keyCode == DOWN){
        up();
      }
      else if (keyCode == UP){
        up();
      }
      else if (keyCode == RIGHT){
        left();
      }
      else if (keyCode == LEFT){
        left();
      }      
    }
}


void up(){
  up[i].resize(size, size);
  image(up[i], speed.x,speed.y);
}


void left(){
  left[i].resize(size,size);
  image(left[i], speed.x, speed.y);
}


void increment(){
  if(frameCount%5==0){
    i++;
    if (i==up.length){
      i=0;
    }
  }
}
