class Frog extends Rectangle {
  //int picW = 512;
  //int picH = 800;
  PImage up, left, right, down;
  int frogSize, frogX, frogY;
  PVector frogLoc;

  Obstacle attached = null;

  Frog(float x, float y, float w)
  {
    super(x, y, w, w);
    up = loadImage("data/images/up.png");
    up.resize((int)w, (int)w);
    down = loadImage("data/images/down.png");
    down.resize((int)w, (int)w);
    left = loadImage("data/images/left.png");
    left.resize((int)w, (int)w);
    right = loadImage("data/images/right.png");
    right.resize((int)w, (int)w);
    
    //frogLoc = new PVector(x, y);
  }

  void attach(Obstacle log)
  {
    attached = log;
  }

  void update()
  {
    if (attached != null)
    {
      x += attached.speed;
    }

    x = constrain(x, 0, width-w);
    y = constrain(y, 0, height-h);
  }

  void showUp()
  {
    image(up, x, y-15);
  }

  void showDown()
  {
    image(down, x, y-15);
  }

  void showLeft()
  {
    image(left, x, y-15);
  }

  void showRight()
  {
    image(right, x, y-15);
  }

  void move(float xdir, float ydir)
  {
    x += xdir * grid;
    y += ydir * grid;
    attach(null);
  }
}
