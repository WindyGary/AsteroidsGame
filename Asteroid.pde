class Asteroid extends Floater{
  private int speedOfRotation;
    public Asteroid(){
    corners = 5;
    xCorners = new int[]{-20*2,0*2,20*2,10*2,-10*2};
    yCorners = new int[]{5*2,20*2,5*2,-15*2,-15*2};
    myColor = 0;
    myCenterX = 0;
    myCenterY = Math.random()*800;
    myXspeed = Math.random()*2 - Math.random()*2;
    myYspeed = Math.random()*2 - Math.random()*2;
    speedOfRotation = 1;
  }
  public void show(){
    fill(myColor);      
    stroke(255);
   
    translate((float)myCenterX, (float)myCenterY);
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    rotate(dRadians);
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
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
