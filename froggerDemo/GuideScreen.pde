class GuideScreen {
  boolean MenuGuide = true;
  float ButtonPlayGuide = 100, ButtonQuitGuide = 100;
  
  void GuideText() {
    textSize(38);
    text("Guide", (width /2) - (textWidth("Guide") / 2), 80); 
    //fill(153, 223, 165); 
    
    //SCORE
    //TIMER
  }
  
  void GuideMenu() {    
    //Button Play : 
    fill(255, 77, 80, ButtonPlayGuide); //Button margin colour
    rect(width/2, height/2 - 75, 200, 50, 5); //Drawing the button
    fill(255); //Font colour for inside of the button
    //Button text
    text("Play", (width /2) - (textWidth("Play") / 2), (height/2) + ((textAscent() - textDescent()) / 2) - 75);
    
    //Button Quit (Close Screen):
    fill(255, 77, 80, ButtonQuitGuide);
    rect(width/2, height/2, 200, 50, 5);
    fill(255); 
    text("Quit", (width /2) - (textWidth("Quit") / 2), (height/2) + ((textAscent() - textDescent()) / 2));
    
    if (MenuGuide) {
      if (mouseX > width/2 - 100 && mouseX < width/2 + 100 
      && mouseY > height/2 - 75 - 25 && mouseY < height/2 - 75 + 25) { //pointer collision with ButtonPlayAgain
        if (mousePressed) {         
    //MenuGuide = false; 
    secondScreen();
    TimerDisplay();
    resetGame();
        }
        if (ButtonPlayGuide < 150) { //Highlighting effect by darkening the colour for ButtonPlayAgain
          ButtonPlayGuide += 100;
        }
      } else if (ButtonPlayGuide > 100) {
        ButtonPlayGuide -= 100;
      }
    }
    
    if (mouseX > width/2 - 100 && mouseX < width/2 + 100 
      && mouseY > height/2 - 25 && mouseY < height/2 + 25) { //pointer collision with ButtonQuit2
        if (mousePressed) {
          exit();  //Quits the window
        }
        if (ButtonQuitGuide < 150) { //Highlighting effect by darkening the colour for ButtonQuit2
          ButtonQuitGuide += 100;
        }
      } else if (ButtonQuitGuide > 100) {
        ButtonQuitGuide -= 100;
      }
   }
}
