Spaceship bob = new Spaceship();
ArrayList <Asteroid> aster = new ArrayList <Asteroid>();
ArrayList <Bullet> bullets = new ArrayList <Bullet>();
Star[] sky = new Star[200];

public void setup(){
  size(500,500);
  for (int i = 0; i < sky.length; i++){
    sky[i] = new Star();
  }
  for (int i = 0; i < 10; i++){
    Asteroid curr = new Asteroid();
    aster.add(curr);
  }
}

public void draw()
{
  background(0);
  for (int i = 0; i < sky.length; i++){
    sky[i].show();
  }
  for (int i = 0; i < aster.size(); i++){
    aster.get(i).move();
    aster.get(i).show();
    float d = dist(bob.getX(), bob.getY(), aster.get(i).getX(), aster.get(i).getY());
    if (d < 15){
      aster.remove(i);
    }
  }
  for (int i = 0; i < bullets.size(); i++){
    bullets.get(i).move();
    bullets.get(i).show();
    for (int j = 0; j < aster.size(); j++){
      float d = dist(bullets.get(i).getX(), bullets.get(i).getY(), 
              aster.get(j).getX(), aster.get(j).getY());
      if (d < 15){
        aster.remove(j);
        bullets.remove(i);
        break;
      }
    }
  }
  bob.move(); bob.show(); 
}

public void keyPressed()
{
  if (key == 'h'){  
    bob.hyperspace();
    for (int i = 0; i < sky.length; i++){
      sky[i] = new Star();
    }
    aster.clear();
    for (int i = 0; i < 10; i++){
      Asteroid curr = new Asteroid();
      aster.add(curr);
    }
  }else if (key == 'd'){
    bob.turn(15);
  }else if (key == 'a'){
    bob.turn(-15);
  }else if (key == 'w'){bob.accelerate(0.3);}
  else if (key == 's'){bob.accelerate(-0.3);}
  else if (key == ' '){
    bullets.add(new Bullet(bob));
  }
}
