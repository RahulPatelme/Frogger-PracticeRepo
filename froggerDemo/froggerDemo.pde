Frog frog;
Lane[] lanes;
PImage bg;
Timer startTimer; 

//importing sound library
import processing.sound.*;
  
  SoundFile file;
  
  //attaching audio file
  String audioName = "data/sounds/frogger-sound.wav";
  String path;

  //For starting menu:
  //boolean Menu = true, Play;
  //float Button1 = 100, Button2 = 100, Button3 = 100;
  
GameMenu gamemenu;  
EndScreen endscreen;
boolean MenuEnd = true;
PImage bgEnd;

// We control which screen is active by settings / updating
// gameScreen variable. We display the correct screen according
// to the value of this variable.
//
// 0: Menu Screen 
// 1: Guide Screen 
// 2: Game Screen
// 3: End Screen

int gameScreen = 0;

int SAFETY = 0;
int CAR = 1;
int LOG = 2;

float grid = 50;

//Function for reseting the frogs position
void resetGame()
{
  //Frog gets placed in a position which is in the middle of screen
  //frog = new Frog(width/2-grid/2, height-grid, grid);
  frog = new Frog(width/2-grid/2, height-grid*10, grid);
}

void setup()
{
  //setting the window size
  size(800, 650);
  //Function to place frog here as starting point as well
  resetGame();
  
   path = sketchPath(audioName);
    file = new SoundFile(this, path);
    file.play(); 
    file.loop(); 
  
  //loading the background image
  gamemenu = new GameMenu();
  bg = loadImage("data/images/frogger800-650.jpeg");
  
  
  rectMode(CENTER);
  stroke(245, 245, 245); //button border
  textSize(45); //text inside buttons
  
  //creating lanes by calling the class
int totalLanes = 13;
lanes = new Lane[totalLanes];
//Lanes start from top of screen and go down, here we also randomize the speed of the obstacles objects

//(number of lane, color of lane)
lanes[0] = new Lane(0,color(51,204,51));
//(lane number, type of obstacle, length of obstacle, distance btw obstacles, randomized speed of obstacles, color of lane)
lanes[1] = new Lane(1,LOG,5,1.5,400,random(-5,5),color(51,153,255));
lanes[2] = new Lane(2,LOG,3,3,300,random(-5,5),color(51,153,255));
lanes[3] = new Lane(3,color(51,204,51));
lanes[4] = new Lane(4,LOG,2,1.8,200,random(-4,4),color(51,153,255));
lanes[5] = new Lane(5,LOG,3,2.5,190,random(-1,1),color(51,153,255));
lanes[6] = new Lane(6,color(51,204,51));
lanes[7] = new Lane(7,CAR,4,1,300,random(-5,5),color(100));
lanes[8] = new Lane(8,CAR,3,1,200,random(-4,4),color(100));
lanes[9] = new Lane(9,color(51,204,51));
lanes[10] = new Lane(10,CAR,3,1.5,200,random(-3,3),color(100));
lanes[11] = new Lane(11,CAR,3,1,180,random(-2,2),color(100));
lanes[12] = new Lane(12,color(51,204,51));


endscreen = new EndScreen();
  bgEnd = loadImage("data/images/froggerEnd800-650.jpeg");
  
  rectMode(CENTER);
  stroke(245, 245, 245); //button border
  textSize(35); //text inside buttons
  
  startTimer = new Timer(0); //Timer starting position
}


void draw()
{
  if (gameScreen == 0) {
    firstScreen();
   // startMenu(); 
  } else if (gameScreen == 1) {
    secondScreen();
    TimerDisplay();
  } else if (gameScreen == 2) {
    thirdScreen();
  } else if (gameScreen == 3) {
    fourthScreen();
    TimerReset();
  }
}

  void firstScreen() {
  //background(bg);
  gameScreen = 0; 
  background(bg);
  gamemenu.startMenu();
  }
  
  void secondScreen() {
  gameScreen = 1;
  background(0);
 
  //Drawing the lanes
  for(Lane lane : lanes)
  {
    lane.run();
    frogSafeCheck();
  }
  
  //Displaying the frog
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

  void thirdScreen() {
    //gameScreen = 2;
  }
  
  void fourthScreen() {
    gameScreen = 3;
    background(bgEnd);
  endscreen.EndText();
  endscreen.EndMenu();
  }

void startGame() {
  gameScreen=1;
}


//Function for frog movement and sprite display
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

void TimerDisplay() {
    startTimer.countUp();
 
    fill(255);
    text(startTimer.getTime(), 10, 20); 
    textSize(20); 
}

void TimerReset() {
   if(gameScreen == 3) {
   startTimer.countDown();
   } else {
   startTimer.setTime(0);
 }
}

void frogSafeCheck()
{
     if(frog.y < 50) {
       gameScreen=3;
    }
}
