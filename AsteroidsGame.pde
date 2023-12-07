// bullet reset limit later

// create op mode
private int spaceshipHp = 5;
private int gameTick = 0;
private ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
private ArrayList <Bullet> bullets = new ArrayList <Bullet>();
private Star[] stars = new Star[500];
private Spaceship bob = new Spaceship();
private boolean[] keys = new boolean[6];
private int bulletLimit = 0;
private int bulletLimitTime = 0;
private int bulletInBetween = 0;
private boolean bulletAllow = false;
private boolean bulletShooted = false;
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
  System.out.println(gameTick);
  gameTick++;

  background(0);

  if (gameTick % 80 == 0) {    // generate asteroid
    rocks.add(new Asteroid());
  }
  
  if (keys[5] && gameTick % 5 == 0){
    rocks.add(new Asteroid());
  }
  
  if (bulletLimit >= 5){  //limit amount of bullet
    bulletLimitTime++;
  }
  
  
  if (bulletLimitTime >= 300){  //bullet refill time
    bulletLimit = 0;
    bulletLimitTime = 0;
  }

   for (int i = 0; i < stars.length; i++) {   //star show
    stars[i].show();
  }
  
  for (int i = 0; i < bullets.size(); i++){   //bullet show
    bullets.get(i).show();
    bullets.get(i).move();
  }
   if (keys[4] && bulletLimit < 5 && bulletAllow){
    bullets.add(new Bullet(bob));
    bulletShooted = true;
    bulletLimit++;
    bulletInBetween = 1;
  }
  
  if (bulletInBetween % 10 == 0){
    bulletAllow = true;
  } else if (bulletShooted){
    bulletAllow = false;
    bulletShooted = false;
  }
  
  // bullet gap
      bulletInBetween++;
      
      
  if (bulletLimit >= 5){
    textSize(22);
    fill(255);
    textAlign(CENTER, TOP);
    text("Bullet refilling. . .", 400, 30);
  }
  
  for (int i = 0; i < rocks.size(); i++){    // asteroid collusion
   rocks.get(i).show();
   rocks.get(i).move();
  }
  for (int i = 0; i < rocks.size(); i++) {
    float d = dist((float)bob.getX(), (float)bob.getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
    if (d < 65) {
      rocks.remove(i);
        if (keys[5] || gameTick < 50){
        } else {
        spaceshipHp--;
        }
      break;
    }
    
    for (int j = 0; j < bullets.size(); j++){    // bullet collusion
      float dd = dist((float)bullets.get(j).getX(), (float)bullets.get(j).getY(),(float)rocks.get(i).getX(), (float)rocks.get(i).getY());
      if (dd < 45){
         bullets.remove(j);
         rocks.remove(i);
         break;
      }
    }
  }
  
  if (spaceshipHp <= 0) {  //ship health
    background(0);
    textSize(100);
    textAlign(CENTER);
    fill(70);
    text("Game Over :c", 400, 400);
  } else if (gameTick > 3000){
    background(0);
    textSize(100);
    textAlign(CENTER);
    fill(70);
    text("You WON!! :D", 400, 400);
  } else if (keys[5]){
    bob.show();
    bob.move();
    textSize(22);
    fill(255);
    textAlign(CENTER, TOP);
    text("INVINCIBLE MODE", 400, 750);
  } else {
    bob.show();
    bob.move();
    textSize(22);
    fill(255);
    textAlign(CENTER, TOP);
    text("HP REMAIN: " + spaceshipHp, 400, 750);
  }
  
  if (keys[5]){    // op mode
    bulletLimit = 0;
    bulletLimitTime = 0;
    bulletInBetween = 0;
    bob.setRandomColor();
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
  
  if (key == '0'){
    keys[5] = true;
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
