class Car extends Rectangle{
  int speed;
  int picW = 840;
  int picH = 537;
  PImage car;
  PImage []cars;
  
  Car(int x, int y, int w, int h, int speed){
    super(x,y,w,h);
    this.speed = speed;
    //load picture of cars
    car = loadImage("data/images/cars.png");
    //assign how many cars 
    cars = new PImage[5];
    //get cars(0-4, depends on how many cars we assign) 
    //from Pimage car
    //cropping the image
    cars[0] = car.get(5*picW/6, 40, picH/6+10, picH/8-10);
    //resize it to make it fit the grid
    cars[0].resize(w,h);
    //cars[1] = car.get();
    //cars[2] = car.get();
    //cars[3] = car.get();
    //cars[4] = car.get();
  }
  
  void show(){
    image(cars[0], x, y);
  }
  
  void move(){
    x = x + speed;
  }
}
