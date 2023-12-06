// bullet reset limit later

// fix color changes after death

// create op mode
int spaceshipHp = 5;
int gameTick = 0;
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> bullets = new ArrayList <Bullet>();
Star[] stars = new Star[500];
Spaceship bob = new Spaceship();
boolean[] keys = new boolean[5];
public void setup()
{
  size(800, 800);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  for (int i = 0; i < 10; i++) {
    rocks.add(new Asteroid());
    rocks.get(i).setX((int)(Math.random()*800));
  }
}
public void draw()
{
  gameTick ++;

  background(0);

  if (gameTick % 100 == 0) {
    rocks.add(new Asteroid());
  }

   for (int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
  
  for (int i = 0; i < bullets.size(); i++){
    bullets.get(i).show();
    bullets.get(i).move();
  }
        
  if (keys[4]){
    bullets.add(new Bullet(bob));
  }
  
  for (int i = 0; i < rocks.size(); i++) {
    rocks.get(i).show();
    rocks.get(i).move();
    float d = dist((float)bob.getX(), (float)bob.getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
    if (d < 45) {
      rocks.remove(i);
      spaceshipHp--;
    }
    //for (int j = 0; j < bullets.size(); j++){  //bullet fix needed
    //  float dd = dist((float)rocks.get(i).getX(), (float)rocks.get(i).getY(), (float)bullets.get(j).getX(), (float)bullets.get(j).getY());
    //  if (dd < 30){
    //     bullets.remove(j);
    //     rocks.remove(i);
    //  }
    //}
  }
  
  if (spaceshipHp <= 0) {
  } else {
    bob.show();
    bob.move();
  }
                     //ship movement
    if (keys[0]) {
      bob.turn(-2);
    }
    if (keys[1]) {
      bob.turn(2);
    }
    if (keys[2]) {
      bob.accelerate(0.05);
    }
    if (keys[3]) {
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
    keys[0] = true;
  }
  
  if (key == 'd'){
   keys[1] = true; 
  }
  
  if (key == 'w'){
   keys[2] = true; 
  }
  
  if (key == 's'){
   keys[3] = true; 
  }
  
  if (key == ' '){
    keys[4] = true;
  }
}

public void keyReleased(){
    if (key == 'a'){
    keys[0] = false;
  }
  
  if (key == 'd'){
   keys[1] = false; 
  }
  
  if (key == 'w'){
   keys[2] = false; 
  }
  
  if (key == 's'){
   keys[3] = false; 
  }
  
  if (key == ' '){
    keys[4] = false;
  }
}
