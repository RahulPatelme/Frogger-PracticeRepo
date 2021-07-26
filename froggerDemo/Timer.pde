class Timer  {
 float Time; 
 float TimerSaveVar;
 
 //set is temporary variable 
 Timer(float set) //Constructor when you create a new Timer //Needed for setting the starting position  
 {
   Time = set; 
 }
 
 float getTime() //returns the current time 
 {
   return(Time); 
 }
 
 void setTime(float set) //set the timer 
 {
  Time = set; 
 }
 
 void countUp() { 
  Time += 1 / frameRate; 
 }
 
 void countDown() {
   Time -= 1 / frameRate; 
 }

void TimeSave() {
 if(frog.y<50) {
    TimerSaveVar = getTime();
  }
 }
}
