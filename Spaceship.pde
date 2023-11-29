class Spaceship extends Floater  
{   
  
    public Spaceship(){
            
      myCenterX = 500;
      myCenterY = 500;
      
      myColor = 255;
      
      corners = 4;    //cool spaceship
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -20;
      yCorners[0] = 20;
      xCorners[1] = -5;
      yCorners[1] = 0;
      xCorners[2] = -20;
      yCorners[2] = -20;
      xCorners[3] = 40;
      yCorners[3] = 0;
    }
    
    public void setXspeed(double Xspeed){
      myXspeed = Xspeed;
    }
    public void setYspeed(double Yspeed){
      myYspeed = Yspeed;
    }
    public void setCenterX(double centerX){
      myCenterX = centerX;
    }
    public void setCenterY(double centerY){
      myCenterY = centerY;
    }
    public double getXspeed(){
      return myXspeed;
    }
    public double getYspeed(){
      return myYspeed;
    }
}
