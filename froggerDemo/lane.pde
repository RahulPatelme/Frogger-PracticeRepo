class Lane{
  int totLane, laneSize;
  
  Lane(int totLane, int laneSize){
    this.totLane = totLane;
    this.laneSize = laneSize;
  }
  
  void drawLane(){
    for (int i=0; i < totLane; i++) {
      stroke(255);
      line(0, i*laneSize, width, i*laneSize);
    }
  }
  
  
  
  
}
