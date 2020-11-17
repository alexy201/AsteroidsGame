class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 4;
      xCorners = new int[]{-8, 16, -8, -2};
      yCorners = new int[]{-8, 0, 8, 0};
      myCenterX = 250; myCenterY = 250;
      myXspeed = myYspeed = myPointDirection = 0;
      myColor = color(256, 256, 256);
    }
    public void hyperspace() {
      myXspeed = myYspeed = 0;
      myCenterX = (int)(Math.random() * 500);
      myCenterY = (int)(Math.random() * 500);
      myPointDirection = (int)(Math.random() * 360);
    }
}
