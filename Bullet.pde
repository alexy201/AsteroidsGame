class Bullet extends Floater{
  public Bullet(Spaceship ship){
    myColor = color(255, 255, 0);
    myCenterX = ship.getX();
    myCenterY = ship.getY();
    myPointDirection = ship.getDirection();
    accelerate(6.0);
  }
  public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed; 
  }
  public void show(){
    fill(myColor); stroke(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public float getX(){
    return (float)myCenterX;
  }
  public float getY(){
    return (float)myCenterY;
  }
}
