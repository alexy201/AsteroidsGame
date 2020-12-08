Spaceship bob = new Spaceship();
ArrayList <Asteroid> aster = new ArrayList <Asteroid>();
Star[] sky = new Star[200];

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
  }
  if (key == 'd'){
    bob.turn(20);
  }
  if (key == 'a'){
    bob.turn(-20);
  }
  if (key == 'w'){bob.accelerate(0.3);}
  if (key == 's'){bob.accelerate(-0.3);}
}

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
  while (aster.size() < 10){
    Asteroid curr = new Asteroid();
    aster.add(curr);
  }
  for (int i = 0; i < aster.size(); i++){
    aster.get(i).move();
    aster.get(i).show();
    float d = dist(bob.getX(), bob.getY(), aster.get(i).getX(), aster.get(i).getY());
    if (d < 15){
      aster.remove(i);
    }
  }
  bob.move(); bob.show(); 
}
