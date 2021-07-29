class Frog extends Rectangle {
  PImage up, left, right, down;
  int frogSize, frogX, frogY;
  PVector frogLoc;

  Obstacle attached = null;

  //Defining frog variables (position, height, width) 
  Frog(float x, float y, float w)
  {
    //inheriting values from parent class
    super(x, y, w, w);
    up = loadImage("data/images/up.png");
    up.resize((int)w, (int)w);
    down = loadImage("data/images/down.png");
    down.resize((int)w, (int)w);
    left = loadImage("data/images/left.png");
    left.resize((int)w, (int)w);
    right = loadImage("data/images/right.png");
    right.resize((int)w, (int)w);
    
  }

  //Function for attaching the frog to the log obstacle
  void attach(Obstacle log)
  {
    attached = log;
  }

  //Function for updating frog speed on attach
  void update()
  {
    //if frog is attached, speed should be same as log obstacle
    if (attached != null)
    {
      x += attached.speed;
    }

    //Defining walls for frog staying in-screen at all times
    x = constrain(x, 0, width-w);
    y = constrain(y, 0, height-h);
  }

  //Setting size of frog
  void showUp()
  {
    image(up, x, y-25);
  }

  void showDown()
  {
    image(down, x, y-25);
  }

  void showLeft()
  {
    image(left, x, y-25);
  }

  void showRight()
  {
    image(right, x, y-25);
  }

  //Function for frogs movement on x and y axis
  void move(float xdir, float ydir)
  {
    x += xdir * grid;
    y += ydir * grid;
    attach(null);
  }
}
