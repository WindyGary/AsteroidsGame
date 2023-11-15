//your variable declarations here
Spaceship bob = new Spaceship();
public void setup() 
{
  size(600,600);
}
public void draw() 
{
  background(0);
    bob.show();
    bob.move();
    

  
}
  void keyPressed(){
  if (key == 'w'){
    System.out.println(0);
    bob.accelerate(1);
  }
  if (key == 's'){
    bob.accelerate(-1);
  }
  if (key == 'a'){
    bob.turn(-10);
  }
  if (key == 'd'){
   bob.turn(10); 
  }
  if (key == '0'){
    bob.myCenterX = 300;
    bob.myCenterY = 300;
    bob.myXspeed = 0;
    bob.myYspeed = 0;
  }
}
