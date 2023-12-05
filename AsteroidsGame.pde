//your variable declarations here

// bullet reset limit later
int spaceshipHp = 5;
int gameTick = 0;
ArrayList <Asteroid> squid = new ArrayList <Asteroid>();
ArrayList <Bullet> apple = new ArrayList <Bullet>();
Star[] patrick = new Star[500];
Spaceship bob = new Spaceship();
boolean[] movement = new boolean[4];
public void setup()
{
  size(800, 800);
  for (int i = 0; i < patrick.length; i++) {
    patrick[i] = new Star();
  }
  for (int i = 0; i < 10; i++) {
    squid.add(new Asteroid());
    squid.get(i).setX((int)(Math.random()*800));
  }
}
public void draw()
{
  gameTick ++;

  background(0);

  if (gameTick % 100 == 0) {
    squid.add(new Asteroid());
  }

  for (int i = 0; i < apple.size(); i++){
    apple.get(i).show();
    apple.get(i).move();
  }
        
  for (int i = 0; i < patrick.length; i++) {
    patrick[i].show();
  }

  for (int i = 0; i < squid.size(); i++) {
    squid.get(i).show();
    squid.get(i).move();
    float d = dist((float)bob.getX(), (float)bob.getY(), (float)squid.get(i).getX(), (float)squid.get(i).getY());
    if (d < 45) {
      squid.remove(i);
      spaceshipHp--;
    }
  }

  if (spaceshipHp <= 0) {
  } else {
    bob.show();
    bob.move();
  }
                     //ship movement
    if (movement[0]) {
      bob.turn(-2);
    }
    if (movement[1]) {
      bob.turn(2);
    }
    if (movement[2]) {
      bob.accelerate(0.05);
    }
    if (movement[3]) {
      bob.accelerate(-0.05);
    }

  if (bob.getXspeed() > 5) {    // limit spaceship speed
    bob.setXspeed(5);
  } else if (bob.getXspeed() < -5) {
    bob.setXspeed(-5);
  }
  if (bob.getYspeed() > 5) {
    bob.setYspeed(5);
  } else if (bob.getYspeed() < -5) {
    bob.setYspeed(-5);
  }
  
}

public void keyPressed() {
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
  
  if (key == 'a'){
    movement[0] = true;
  }
  
  if (key == 'd'){
   movement[1] = true; 
  }
  
  if (key == 'w'){
   movement[2] = true; 
  }
  
  if (key == 's'){
   movement[3] = true; 
  }
  
  if (key == ' '){
    apple.add(new Bullet(bob));
  }
}

public void keyReleased(){
    if (key == 'a'){
    movement[0] = false;
  }
  
  if (key == 'd'){
   movement[1] = false; 
  }
  
  if (key == 'w'){
   movement[2] = false; 
  }
  
  if (key == 's'){
   movement[3] = false; 
  }
}
