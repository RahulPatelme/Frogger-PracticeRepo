class Obstacle extends Rectangle{
  float speed;
  
  Obstacle(float x, float y, float w, float h, float s)
  {
    super(x,y,w,h);
    speed = s;
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
  
  void show()
  {
    fill(200);
    rect(x,y,w,h);
  }
}
