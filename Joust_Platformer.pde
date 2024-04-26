Platform p;

Player p1;
Player p2;

void setup() {
  size(800, 500);

  p = new Platform(100, 400, 200, 20);

  p1 = new Player( 200, 100, 50);
  p2 = new Player( 500, 100, 50);
}

void draw() {

  background(255);

  p.draw();

  p1.update();
  p2.update();

  p1.draw();
  p2.draw();
}

void keyPressed(){
  if(key == 'a'){
    p1.vel.x = -5;
  }
  if(key == 'd'){
    p1.vel.x = 5;  
  }
  if(key == ' '){
    p1.vel.y = p1.vel.y - 2; 
  }
}
