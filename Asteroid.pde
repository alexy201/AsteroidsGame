class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    corners = 6; rotSpeed = (int)(Math.random() * 10);
    myPointDirection = (int)(Math.random() * 360);
    myCenterX = 0; myCenterY = 0;
    myXspeed = (Math.random() * 3) - 2;
    myYspeed = (Math.random() * 2) - 1;
    xCorners = new int[]{-11, 7, 13, 6, -11, -5};
    yCorners = new int[]{-8, -8, 0, 10, 8, 0};
    myColor = color(256, 256, 256);
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public float getX(){
    return (float)myCenterX;
  }
  public float getY(){
    return (float)myCenterY;
  }
}
