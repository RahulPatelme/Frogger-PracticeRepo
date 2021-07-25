class GuideScreen {
  boolean MenuGuide = true, Play;
  float B1 = 100, B2 = 100;
  
  void GuideText() {
    textSize(38);
    text("Guide:", (width /2) - (textWidth("Guide:") / 2), 80);  
    
    //SCORE
    //TIMER
  }
  
  void GuideMenu() {  
    //Button 1: 
    fill(255, 77, 80, B1); //Button margin colour
    rect(width/2, height/2 - 75, 200, 50, 20); //Drawing the button
    fill(255); //Font colour for inside of the button
    //Button text
    text("Play", (width /2) - (textWidth("Play") / 2), (height/2) + ((textAscent() - textDescent()) / 2) - 75);
    
    //Button 3:
    fill(255, 77, 80, B2); //Button margin colour
    rect(width/2, height/2 + 75, 200, 50, 20); //Drawing the button
    fill(255); //Font colour for inside of the button
    //Button text
    text("Quit", (width /2) - (textWidth("Quit") / 2), (height/2) + ((textAscent() - textDescent()) / 2) + 75);
    
    
    if (MenuGuide) {
      if (mouseX > width/2 - 100 && mouseX < width/2 + 100 
      && mouseY > height/2 - 75 - 25 && mouseY < height/2 - 75 + 25) { //pointer collision with Button1
        if (mousePressed) {  
          secondScreen();
          TimerDisplay();
          resetGame();
        }
        if (B1 < 150) { //Highlighting effect by darkening the colour for button 1
          B1 += 100;
        }
      } else if (B1 > 100) {
        B1 -= 100;
      }

      if (mouseX > width/2 - 100 && mouseX < width/2 + 100 
      && mouseY > height/2 + 75 - 25 && mouseY < height/2 + 75 + 25) { //pointer collision with Button3
        if (mousePressed) {
          exit();  //Quits the window
          
        }
        if (B2 < 150) { //Highlighting effect by darkening the colour for button 3
          B2 += 100;
        }
      } else if (B2 > 100) {
        B2 -= 100;
      }
    }
  }
}
