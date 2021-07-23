class Obstacle extends Rectangle{
  float speed;
  int picW = 840;
  int picH = 537;
  PImage car;
  PImage cars;
  PImage log;
  
  Obstacle(float x, float y, float w, float h,float  s)
  {
    super(x,y,w,h);
    speed = s;
    log = loadImage("data/images/log.png");
    log.resize((int)w, (int)h);
    cars = loadImage("data/images/cars.png");
    car = cars.get(5*picW/6, 40, picH/6+10, picH/8-10);
  }
  
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
  }
  
   void showLog()
  {
    image(log, x, y);
  }
}
