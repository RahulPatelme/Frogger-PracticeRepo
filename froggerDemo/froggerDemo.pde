Frog frog;
Lane[] lanes;
PImage bg;
//GameMenu gamemenu;
Timer startTimer; 


  boolean Menu = true, Play;
  //PImage bg;
  float Button1 = 100, Button2 = 100, Button3 = 100;
  
EndScreen endscreen;
boolean MenuEnd = true;
PImage bgEnd;
//PImage win;

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
  frog = new Frog(width/2-grid/2, height-grid, grid);
}

void setup()
{
  //setting the window size
  size(800, 650);
  //Function to place frog here as starting point as well
  resetGame();
  
  //gamemenu = new GameMenu();
  //loading the background image
  bg = loadImage("data/images/frogger800-650.jpeg");
  
  
  rectMode(CENTER);
  stroke(245, 245, 245); //button border
  textSize(45); //text inside buttons
  
  //background(0);
  //creating lanes by calling the class
int totalLanes = 13;
//int(height / grid);
lanes = new Lane[totalLanes];
//Lanes start from top of screen and go down, here we also randomize the speed of the obstacles objects

//(number of lane, color of lane)
lanes[0] = new Lane(0,color(51,204,51));
//(lane number, type of obstacle, length of obstacle, distance btw obstacles, randomized speed of obstacles, color of lane)
lanes[1] = new Lane(1,LOG,3,5,200,random(-5,5),color(51,153,255));
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


endscreen = new EndScreen();
 // size(800, 450);

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
    startMenu(); 
  } else if (gameScreen == 1) {
    secondScreen();
    TimerDisplay();
  } else if (gameScreen == 2) {
    thirdScreen();
  } else if (gameScreen == 3) {
    fourthScreen();
  }
}

  void firstScreen() {
  background(bg);
  gameScreen = 0; //Do we need this?
  }
  
  void secondScreen() {
  gameScreen = 1;
 
  background(0);
 
  //Drawing the lanes
  for(Lane lane : lanes)
  {
    lane.run();
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
  
  //imageMode(CENTER);
  //image(win, width/2, height/2, 250, 250); 
  
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
 
  void startMenu() {  
    //Button 1: 
    fill(255, 77, 80, Button1); //Button margin colour
    rect(width/2, height/2 - 75, 200, 50, 5); //Drawing the button
    fill(255); //Font colour for inside of the button
    //Button text
    text("Play", (width /2) - (textWidth("Play") / 2), (height/2) + ((textAscent() - textDescent()) / 2) - 75);
    
    
    //Button 2: 
    fill(255, 77, 80, Button2);
    rect(width/2, height/2, 200, 50, 5);
    fill(255);
    text("Guide", (width /2) - (textWidth("Guide") / 2), (height/2) + ((textAscent() - textDescent()) / 2));
    
    
    //Button 3:
    fill(255, 77, 80, Button3);
    rect(width/2, height/2 + 75, 200, 50, 5);
    fill(255);
    text("Quit", (width /2) - (textWidth("Quit") / 2), (height/2) + ((textAscent() - textDescent()) / 2) + 75);
    
    
    if (Menu) {
      if (mouseX > width/2 - 100 && mouseX < width/2 + 100 
      && mouseY > height/2 - 75 - 25 && mouseY < height/2 - 75 + 25) { //pointer collision with Button1
        if (mousePressed) {  
          secondScreen();
        }
        if (Button1 < 150) { //Highlighting effect by darkening the colour for button 1
          Button1 += 100;
        }
      } else if (Button1 > 100) {
        Button1 -= 100;
      }

      if (mouseX > width/2 - 100 && mouseX < width/2 + 100 
      && mouseY > height/2 - 25 && mouseY < height/2 + 25) { //pointer collision with Button2
        if (mousePressed) {
          delay(50); //Why? 
          //Call guide window over here
        }
        if (Button2 < 150) { //Highlighting effect by darkening the colour for button 2
          Button2 += 100;
        }
      } else if (Button2 > 100) {
        Button2 -= 100;
      }

      if (mouseX > width/2 - 100 && mouseX < width/2 + 100 
      && mouseY > height/2 + 75 - 25 && mouseY < height/2 + 75 + 25) { //pointer collision with Button3
        if (mousePressed) {
          exit();  //Quits the window
        }
        if (Button3 < 150) { //Highlighting effect by darkening the colour for button 3
          Button3 += 100;
        }
      } else if (Button3 > 100) {
        Button3 -= 100;
      }
    }
    
    if (Button1 == 0 && Button2 == 0 && Button3 == 0) { //I dont remember what this code is for
      Play = true;
    }
}

void TimerDisplay() {
    startTimer.countUp();
 
    fill(255);
    text(startTimer.getTime(), 10, 20); 
    textSize(20);
}
