//your variable declarations here
Star[] patrick = new Star[100];
Spaceship bob = new Spaceship();
public void setup() 
{
  size(600,600);
  for (int i = 0; i < patrick.length; i++){
    patrick[i] = new Star();
  }
}
public void draw() 
{
  background(123);
    bob.show();
    bob.move();
  
    for (int i = 0; i < patrick.length; i++){
    patrick[i].show();
    ;
  }
}
public void keyPressed(){
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
    bob.myCenterX = 300;      // fix encapsulation
    bob.myCenterY = 300;
    bob.myXspeed = 0;
    bob.myYspeed = 0;
  }
  if (key == 'h'){
    bob.myCenterX = Math.random()*600;
    bob.myCenterY = Math.random()*600;
    bob.myXspeed = 0;
    bob.myYspeed = 0;
    bob.turn(Math.random()*360);
  }
}
