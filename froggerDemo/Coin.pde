class Coin extends Rectangle{
  int picW = 839;
  int picH = 187;
  PImage coins;
  PImage []coin; 
  int imgLength;
  int i;
  
  //Defining obstacle variables
  Coin(float x, float y, float w)
  {
    //inheriting values from parent class
    super(x,y,w,w);
    i=0;
    imgLength = 4;
    
    coin = new PImage[imgLength];
    
    //Loading images for coin
    coins = loadImage("data/images/coin.png");
    //cropping the image 
    for(int i=0; i<coin.length; i++){
      coin[i] = coins.get(i*picW/imgLength, 0, picW/imgLength, picH);
      coin[i].resize(40, 40);
    }
  }
  
  //displaying the coin (animation)
  void showCoin() {
    image(coin[i], x, y);
    //make the animation goes slower
    if(frameCount%15==0){
      i++;
      if (i==coin.length){
        i=0;
      }
    }
  }
}
