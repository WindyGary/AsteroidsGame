//your variable declarations here

// bullet reset limit later
int spaceshipHp = 3;
int gameTick = 0;
ArrayList <Asteroid> squid = new ArrayList <Asteroid>();
Star[] patrick = new Star[500];
Spaceship bob = new Spaceship();
public void setup()
{
  size(800, 800);
  for (int i = 0; i < patrick.length; i++) {
    patrick[i] = new Star();
  }
  for (int i = 0; i < 10; i++){
    squid.add(new Asteroid());
    squid.get(i).setX((int)(Math.random()*800));
  }
}
public void draw()
{
  gameTick ++;
  background(0);
  if (gameTick % 100 == 0){
    squid.add(new Asteroid()); 
  }
  
  for (int i = 0; i < patrick.length; i++) {
    patrick[i].show();
  }
  
  for (int i = 0; i < squid.size(); i++){
  squid.get(i).show();
  squid.get(i).move();
  float d = dist((float)bob.getX(), (float)bob.getY(), (float)squid.get(i).getX(), (float)squid.get(i).getY());
  if (d < 45){
    squid.remove(i);
    spaceshipHp--;
    }
  }
  
  if (spaceshipHp <= 0){
  } 
  else {
  bob.show();
  bob.move();
  }
  
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
  
  if (bob.getXspeed() > 5){    // limit spaceship speed
    bob.setXspeed(5);
  } else if (bob.getXspeed() < -5){
    bob.setXspeed(-5);
  }
    if (bob.getYspeed() > 5){
    bob.setYspeed(5);
  } else if (bob.getYspeed() < -5){
    bob.setYspeed(-5);
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
    bob.setCenterX(Math.random()*800);
    bob.setCenterY(Math.random()*800);
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.turn(Math.random()*360);
  }
}
