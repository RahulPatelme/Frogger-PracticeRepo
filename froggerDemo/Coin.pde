class Coin extends Rectangle{
  int picW = 839;
  int picH = 187;
  PImage coins;
  PImage coin; 
  
  //Defining obstacle variables
  Coin(float x, float y, float w)
  {
    //inheriting values from parent class
    super(x,y,w,w);
    
    //Loading images for coin
    coins = loadImage("data/images/coin.png");
    coin = coins.get(0, 0, picW-4, 0);
    coin.resize((int)w, (int)w );
  }
  
   void showCoin() {
    image(coin, x, y);
  }
}
