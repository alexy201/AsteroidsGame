class Star
{
  private int myX, myY, Color, Siz;
  public Star(){
    myX = (int)(Math.random() * 500);
    myY = (int)(Math.random() * 500);
    Color = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    Siz = (int)(Math.random()*4)+3;
  }
  public void show(){
    fill(Color); stroke(Color);
    ellipse(myX, myY, Siz, Siz);
  }
}
