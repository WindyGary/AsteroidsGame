class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getPointDirection();
    accelerate(6.0);
  }
  public void show(){
    fill(123);
    ellipse((float)myCenterX,(float)myCenterY,10,10);
  }
  
  public void move(){
    super.move();
  }
}
