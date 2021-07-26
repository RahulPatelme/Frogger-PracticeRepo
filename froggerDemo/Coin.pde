class Coin extends Rectangle{
  int picW = 839;
  int picH = 187;
  PImage coins;
  PImage []coin; 
  int i;
  
  //Defining obstacle variables
  Coin(float x, float y, float w)
  {
    //inheriting values from parent class
    super(x,y,w,w);
    i=0;
    
    coin = new PImage[4];
    
    //Loading images for coin
    coins = loadImage("data/images/coin.png");
    
    for(int i=0; i<coin.length; i++){
      coin[i] = coins.get(i*picW/4, 0, picW/4, picH);
      coin[i].resize(40, 40);
    }
  }
  
   void showCoin() {
     image(coin[i], x, y);
     if(frameCount%15==0){
        i++;
        if (i==coin.length){
          i=0;
        }
      }
  }
}
