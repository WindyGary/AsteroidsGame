class Asteroid extends Floater{
  private int speedOfRotation;
    public Asteroid(){
    corners = 5;
    xCorners = new int[]{-20,0,20,10,-10};
    yCorners = new int[]{5,20,5,-15,-15};
    myColor = 123;
    myCenterX = 0;
    myCenterY = Math.random()*800;
    myXspeed = Math.random()*2 - Math.random()*2;
    myYspeed = Math.random()*2 - Math.random()*2;
    speedOfRotation = 1;
  }
  public void show(){
   super.show(); 
  }
  public void move(){
    turn(speedOfRotation);
    super.move();
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
  public void setX(int centerX){
    myCenterX = centerX;
  }
  public void setY(int centerY){
    myCenterY = centerY;
  }
}
