class Asteroid extends Floater {
  private int speedOfRotation;
  private int soa;
  public Asteroid() {
    soa = (int)(Math.random()*4)+1;
    corners = 5;
    xCorners = new int[]{-20 * soa, 0 * soa, 20 * soa, 10 * soa, -10 * soa};
    yCorners = new int[]{5 * soa, 20 * soa, 5 * soa, -15 * soa, -15 * soa};
    myColor = 123;
    myCenterX = Math.random()*0;
    myCenterY = Math.random()*1000;
    myXspeed = Math.random()*2 - Math.random()*2;
    myYspeed = Math.random()*2 - Math.random()*2;
    speedOfRotation = 1;
  }
  public void show() {
    super.show();
  }
  public void move() {
    turn(speedOfRotation);
    super.move();
  }
  public double getCenterX(double myCenterX) {
    return myCenterX;
  }
  public double getCenterY(double myCenterY) {
    return myCenterY;
  }
}
