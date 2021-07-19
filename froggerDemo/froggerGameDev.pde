Frog frog;
Lane lane;
int size = 30;

void setup(){
  size(600,600);
  lane = new Lane(20, size);
  frog = new Frog(width/2, height-size, size);
}

void draw(){
  background(0);
  lane.drawLane();
  frog.up();
  
  if (keyPressed){
    if (keyCode == UP){
      frog.move(0,-1);
    }
    else if (keyCode == LEFT){
      frog.move(-1,0);
    }
    else if (keyCode == DOWN){
      frog.move(0,1);
    }
    else if (keyCode == RIGHT){
      frog.move(1,0);
    }
  }else {
    if (keyCode == DOWN){
      frog.move(0,0);
    }
    else if (keyCode == UP){
      frog.move(0,0);
    }
    else if (keyCode == RIGHT){
      frog.move(0,0);
    }
    else if (keyCode == LEFT){
      frog.move(0,0);
    }
  }
}
