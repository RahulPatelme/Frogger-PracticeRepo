class Car extends Rectangle 
{
  float speed;
  
  Car(float x, float y, float w, float h, float s) 
   {
     //initializing the inherited properties
     super(x, y, w, h);
     speed = s;
   }
 
  void update()
  {
    x = x+speed;
    
    if (speed > 0 && x > width+grid)
    {
       x = -w-grid; 
    }
    else if(x< -grid)
    { 
      x= width+grid;
    }
  }
  
 
  void show() 
  {
    fill(200);
    rect(x, y, w, h);
  }
  
  
}
