class EndScreen {
  boolean MenuEnd = true;
  float ButtonPlayAgain = 100, ButtonQuit2 = 100;
  
  void EndText() {
    textSize(38);
    text("You Win!", (width /2) - (textWidth("You Win!") / 2), 60);
    textSize(32);
    text("Score:", (width /2) - (textWidth("Score:") / 2), 120);
    text(score, (width /2) - (textWidth("  ") / 2), 150);
    //TIMER()to be added
  }
  
  void EndMenu() {    
    //Button Play Again: 
    fill(255, 77, 80, ButtonPlayAgain); //Button margin colour
    rect(width/2, height/2 - 75, 250, 50, 20); //Drawing the button
    fill(255); //Font colour for inside of the button
    //Button text
    text("Play Again", (width /2) - (textWidth("Play Again") / 2), (height/2) + ((textAscent() - textDescent()) / 2) - 75);
    
    //Button Quit (End Screen):
    fill(255, 77, 80, ButtonQuit2);
    rect(width/2, height/2, 250, 50, 20);
    fill(255); 
    text("Quit", (width /2) - (textWidth("Quit") / 2), (height/2) + ((textAscent() - textDescent()) / 2));
    
    if (MenuEnd) {
      if (mouseX > width/2 - 100 && mouseX < width/2 + 100 
      && mouseY > height/2 - 75 - 25 && mouseY < height/2 - 75 + 25) { //pointer collision with ButtonPlayAgain
        if (mousePressed) {         
    secondScreen();
    TimerDisplay();
    resetGame();
        }
        if (ButtonPlayAgain < 150) { //Highlighting effect by darkening the colour for ButtonPlayAgain
          ButtonPlayAgain += 100;
        }
      } else if (ButtonPlayAgain > 100) {
        ButtonPlayAgain -= 100;
      }
    }
    
    if (mouseX > width/2 - 100 && mouseX < width/2 + 100 
      && mouseY > height/2 - 25 && mouseY < height/2 + 25) { //pointer collision with ButtonQuit2
        if (mousePressed) {
          exit();  //Quits the window
        }
        if (ButtonQuit2 < 150) { //Highlighting effect by darkening the colour for ButtonQuit2
          ButtonQuit2 += 100;
        }
      } else if (ButtonQuit2 > 100) {
        ButtonQuit2 -= 100;
      }
   }
}
