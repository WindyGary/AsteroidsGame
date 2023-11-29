//your variable declarations here

// bullet reset limit later

Asteroid[] squid = new Asteroid[10];
Star[] patrick = new Star[500];
Spaceship bob = new Spaceship();
public void setup()
{
  size(1000, 1000);
  for (int i = 0; i < patrick.length; i++) {
    patrick[i] = new Star();
  }
  
  for (int i = 0; i < squid.length; i++){
    squid[i] = new Asteroid(); 
  }
}
public void draw()
{
  background(0);
  
  for (int i = 0; i < patrick.length; i++) {
    patrick[i].show();
  }
  
  for (int i = 0; i < squid.length; i++){
  squid[i].show();
  squid[i].move();
  }

  bob.show();
  bob.move();

  if (keyPressed) {
    if (key == 'w' ) {
      bob.accelerate(0.05);
    }
    if (key == 's') {
      bob.accelerate(-0.05);
    }
    if (key == 'a') {
      bob.turn(-2);
    }
    if (key == 'd') {
      bob.turn(2);
    }
  }
  
  if (bob.getXspeed() > 10){    // limit spaceship speed
    bob.setXspeed(10);
  } else if (bob.getXspeed() < -10){
    bob.setXspeed(-10);
  }
    if (bob.getYspeed() > 10){
    bob.setYspeed(10);
  } else if (bob.getYspeed() < -10){
    bob.setYspeed(-10);
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
