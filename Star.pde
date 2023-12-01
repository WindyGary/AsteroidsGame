class Star //note that this class does NOT extend Floater
{
  private int sColor, sLength, sWidth, sX, sY;
  public Star(){
    sColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    sLength = sWidth = 5;
    sX = (int)(Math.random()*800);
    sY = (int)(Math.random()*800);
  }
  public void show(){
    noStroke();
    fill(sColor);
    ellipse(sX, sY, sLength, sWidth);
  }
}
