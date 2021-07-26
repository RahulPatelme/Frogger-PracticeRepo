class Obstacle extends Rectangle{
  float speed;
  int picW = 840;
  int picH = 537;
  PImage car;
  PImage car2; 
  PImage cars; 
  PImage cars2;
  PImage log;
  
  //Defining obstacle variables
  Obstacle(float x, float y, float w, float h, float s)
  {
    //inheriting values from parent class
    super(x,y,w,h);
    speed = s;
    
    //Loading images into both log and car obstacle
    log = loadImage("data/images/log.png");
    log.resize((int)w, (int)h);
    cars = loadImage("data/images/cars.png");
    car = cars.get(5*picW/6, 40, picH/6+10, picH/8-10);
    cars2 = loadImage("data/images/car-purple-flip.png");
  }
    
  //Function for obstacle movement
  void update()
  {
    x += speed;
    //when obstacles moving to the right
    if(speed > 0 && x > width)
    {
      x = - w;
    }
    //when obstacles moving to the left
    else if(speed < 0 && x < -w)
    {
      x = width + w;
    }
  }
  
  //function for displaying obstacles
  void showCar()
  {
    image(car, x, y);
    
    //in case the movement of obstacle car is negative, display the second sprite
    if(speed < 0) { 
    image(cars2, x, y);
    cars2.resize(picH/6+12, picH/8-8); 
    }
  }
  
  void showLog() {
    image(log, x, y);
  }
}
