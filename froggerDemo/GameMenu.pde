//class GameMenu {
//  //GameMenu gamemenu;
//  boolean Menu = true, Play;
//  //PImage bg;
//  float Button1 = 100, Button2 = 100, Button3 = 100;

//  void StartMenu() {    
//    //Button 1: 
//    fill(255, 77, 80, Button1); //Button margin colour
//    rect(width/2, height/2 - 75, 200, 50, 5); //Drawing the button
//    fill(255); //Font colour for inside of the button
//    //Button text
//    text("Play", (width /2) - (textWidth("Play") / 2), (height/2) + ((textAscent() - textDescent()) / 2) - 75);
    
    
//    //Button 2: 
//    fill(255, 77, 80, Button2);
//    rect(width/2, height/2, 200, 50, 5);
//    fill(255);
//    text("Guide", (width /2) - (textWidth("Guide") / 2), (height/2) + ((textAscent() - textDescent()) / 2));
    
    
//    //Button 3:
//    fill(255, 77, 80, Button3);
//    rect(width/2, height/2 + 75, 200, 50, 5);
//    fill(255);
//    text("Quit", (width /2) - (textWidth("Quit") / 2), (height/2) + ((textAscent() - textDescent()) / 2) + 75);
    
    
//    if (Menu) {
//      if (mouseX > width/2 - 100 && mouseX < width/2 + 100 
//      && mouseY > height/2 - 75 - 25 && mouseY < height/2 - 75 + 25) { //pointer collision with Button1
//        if (mousePressed) {  
//          //secondScreen();
//        }
//        if (Button1 < 150) { //Highlighting effect by darkening the colour for button 1
//          Button1 += 100;
//        }
//      } else if (Button1 > 100) {
//        Button1 -= 100;
//      }

//      if (mouseX > width/2 - 100 && mouseX < width/2 + 100 
//      && mouseY > height/2 - 25 && mouseY < height/2 + 25) { //pointer collision with Button2
//        if (mousePressed) {
//          delay(50); //Why? 
//          //Call guide window over here
//        }
//        if (Button2 < 150) { //Highlighting effect by darkening the colour for button 2
//          Button2 += 100;
//        }
//      } else if (Button2 > 100) {
//        Button2 -= 100;
//      }

//      if (mouseX > width/2 - 100 && mouseX < width/2 + 100 
//      && mouseY > height/2 + 75 - 25 && mouseY < height/2 + 75 + 25) { //pointer collision with Button3
//        if (mousePressed) {
//          exit();  //Quits the window
//        }
//        if (Button3 < 150) { //Highlighting effect by darkening the colour for button 3
//          Button3 += 100;
//        }
//      } else if (Button3 > 100) {
//        Button3 -= 100;
//      }
//    }
    
//    //if (!Menu) { //Do we need this? 
//    //  if (Button1 > 0) {
//    //    Button1 -= 5;
//    //  }
//    //  if (Button2 > 0) {
//    //    Button2 -= 5;
//    //  }
//    //  if (Button3 > 0) {
//    //    Button3 -= 5;
//    //  }
//    //}
    
//    if (Button1 == 0 && Button2 == 0 && Button3 == 0) { //Idk what this code is for
//      Play = true;
//    }
//  }
//}
