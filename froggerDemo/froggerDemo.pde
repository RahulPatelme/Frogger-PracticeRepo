Frog frog;
Lane[] lanes;

int SAFETY = 0;
int CAR = 1;
int LOG = 2;

float grid = 50;

void resetGame()
{
  frog = new Frog(width/2-grid/2, height-grid, grid);
  //frog.attach(null);
}

void setup()
{
  size(800, 650);
  resetGame();
  
  int totalLanes = int(height / grid);
  lanes = new Lane[totalLanes];
  
  lanes[0] = new Lane(0,color(51,204,51));
  lanes[1] = new Lane(1,LOG,3,1.5,200,random(-5,5),color(51,153,255));
  lanes[2] = new Lane(2,LOG,3,1.5,200,random(-5,5),color(51,153,255));
  lanes[3] = new Lane(3,color(51,204,51));
  lanes[4] = new Lane(4,LOG,3,1.8,200,random(-4,4),color(51,153,255));
  lanes[5] = new Lane(5,LOG,3,2.5,190,random(-1,1),color(51,153,255));
  lanes[6] = new Lane(6,color(51,204,51));
  lanes[7] = new Lane(7,CAR,3,1,200,random(-5,5),color(100));
  lanes[8] = new Lane(8,CAR,3,1,200,random(-4,4),color(100));
  lanes[9] = new Lane(9,color(51,204,51));
  lanes[10] = new Lane(10,CAR,3,1.5,200,random(-3,3),color(100));
  lanes[11] = new Lane(11,CAR,3,1,180,random(-2,2),color(100));
  lanes[12] = new Lane(12,color(51,204,51));
}

void draw()
{
  background(0);
  
  //car2.resize();
  
  for(Lane lane : lanes)
  {
    lane.run();
  }
  
  frog.update();
  if (keyCode == UP){
      frog.showUp();
    }
    else if (keyCode == LEFT){
      frog.showLeft();
    }
    else if (keyCode == DOWN){
      frog.showDown();
    }
    else if (keyCode == RIGHT){
      frog.showRight();
    }
  
  int laneIndex = int(frog.y / grid);
  lanes[laneIndex].check(frog);
  
  
}

void keyPressed()
{
  if (keyPressed){
    if (keyCode == UP){
      frog.showUp();
      frog.move(0,-1);
    }
    else if (keyCode == LEFT){
      frog.showLeft();
      frog.move(-1,0);
    }
    else if (keyCode == DOWN){
      frog.showDown();
      frog.move(0,1);
    }
    else if (keyCode == RIGHT){
      frog.showRight();
      frog.move(1,0);
    }
  }else {
    if (keyCode == DOWN){
      frog.showDown();
      frog.move(0,0);
    }
    else if (keyCode == UP){
      frog.showUp();
      frog.move(0,0);
    }
    else if (keyCode == RIGHT){
      frog.showRight();
      frog.move(0,0);
    }
    else if (keyCode == LEFT){
      frog.showLeft();
      frog.move(0,0);
    }
  }
}
