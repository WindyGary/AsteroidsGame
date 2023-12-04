class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getPointDireacton();
    accelerate(6.0);
  }
  public void show(){
    fill(123);
    ellipse(100,100,100,100);
  }
  
  public void move(){
    super.move();
  }
}
