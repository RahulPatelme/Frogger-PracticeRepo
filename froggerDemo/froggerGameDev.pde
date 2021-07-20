//Lane lane;
//Frog frog;
//Car car;
//int size = 30;

//void setup(){
//  size(600,600);
//  //numbers of lane, size
//  lane = new Lane(20, size);
//  //x,y,size
//  frog = new Frog(width/2, height-size, size);
//  //x,y,w,h,speed
//  car = new Car(width/2, height-size*2, 50, size, 1);
//}

//void draw(){
//  background(0);
//  lane.drawLane();
//  frog.up();
//  car.show();
//  car.move();
  
//  if (keyPressed){
//    if (keyCode == UP){
//      frog.move(0,-1);
//    }
//    else if (keyCode == LEFT){
//      frog.move(-1,0);
//    }
//    else if (keyCode == DOWN){
//      frog.move(0,1);
//    }
//    else if (keyCode == RIGHT){
//      frog.move(1,0);
//    }
//  }else {
//    if (keyCode == DOWN){
//      frog.move(0,0);
//    }
//    else if (keyCode == UP){
//      frog.move(0,0);
//    }
//    else if (keyCode == RIGHT){
//      frog.move(0,0);
//    }
//    else if (keyCode == LEFT){
//      frog.move(0,0);
//    }
//  }
//}
