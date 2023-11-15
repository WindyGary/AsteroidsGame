class Spaceship extends Floater  
{   
  
    public Spaceship(){
            
      myCenterX = 300;
      myCenterY = 300;
      
      myColor = (255);
      
      corners = 3;    //cool spaceship
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -20;
      yCorners[0] = 20;
      xCorners[1] = -20;
      yCorners[1] = -20;
      xCorners[2] = 40;
      yCorners[2] = 0;
    }
}
