class Obstacle extends Rectangle{
  float speed;
  int picW = 840;
  int picH = 537;
  PImage car;
  PImage car2; 
  PImage cars; 
  PImage cars2;
  PImage log;
  
  Obstacle(float x, float y, float w, float h, float s)
  {
    super(x,y,w,h);
    speed = s;
    log = loadImage("data/images/log.png");
    log.resize((int)w, (int)h);
    
    cars = loadImage("data/images/cars.png");
    car = cars.get(5*picW/6, 40, picH/6+10, picH/8-10);
    
    cars2 = loadImage("data/images/carGreenFlipTrans.png");
  }
  
  //void resize() {
  // cars2.resize(100, 100); 
  //}
  
  void update()
  {
    x += speed;
    if(speed > 0 && x > width)
    {
      x = - w;
    } else if(speed < 0 && x < -w)
    {
      x = width + w;
    }
  }
  
  void showCar()
  {
    image(car, x, y);
    
    if(speed < 0) { 
    image(cars2, x, y);
    cars2.resize(picH/6+12, picH/8-8); 
    }
  }
  
   void showLog()
  {
    image(log, x, y);
  }
}
