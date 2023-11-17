//your variable declarations here

// bullet reset limit later


Star[] patrick = new Star[300];
Spaceship bob = new Spaceship();
public void setup()
{
  size(1000, 1000);
  for (int i = 0; i < patrick.length; i++) {
    patrick[i] = new Star();
  }
}
public void draw()
{
  background(0);
  
  for (int i = 0; i < patrick.length; i++) {
    patrick[i].show();
  }
  
  bob.show();
  bob.move();

  if (keyPressed) {
    if (key == 'w' ) {
      bob.accelerate(0.1);
    }
    if (key == 's') {
      bob.accelerate(-0.1);
    }
    if (key == 'a') {
      bob.turn(-2);
    }
    if (key == 'd') {
      bob.turn(2);
    }
  }
  
  if (bob.getXspeed() > 20){    // limit spaceship speed
    bob.setXspeed(20);
  } else if (bob.getXspeed() < -20){
    bob.setXspeed(-20);
  }
    if (bob.getYspeed() > 20){
    bob.setYspeed(20);
  } else if (bob.getYspeed() < -20){
    bob.setYspeed(-20);
  }
  
}

public void keyPressed(){
   if (key == '0') {
    bob.setCenterX(500);      
    bob.setCenterY(500);
    bob.setXspeed(0);
    bob.setYspeed(0);
  }
   if (key == 'h') {
    bob.setCenterX(Math.random()*1000);
    bob.setCenterY(Math.random()*1000);
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.turn(Math.random()*360);
  }
}
