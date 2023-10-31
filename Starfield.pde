int startX = 0; 
int startY = 150; 
int endX = 0; 
int endY = 150;
Particle [] dots;
void setup()
{
  size(500, 500);
  background(255, 255, 255);
  dots =new Particle[100];
  for (int i = 0; i < dots.length; i++) {
    dots[i] = new Particle();
  }
  dots[0] = new OddballParticle();
}
void draw()
{
  background(255);
  for (int i = 0; i < dots.length; i++) {
    dots[i].move();
    dots[i].show();
  }
}
class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  Particle() {
    myX = myY = 250;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    myColor = color((int)(Math.random()*200), (int)(Math.random()*200), (int)(Math.random()*200));
  }
  void move() {
    myAngle = myAngle + 0.01;
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
  void show() {
    noStroke();
    fill(myColor);
    ellipse((float)myX, (float)myY, 10, 10);
  }
}

class OddballParticle extends Particle
{
  OddballParticle() {
    myX = myY = 250;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    myColor = color(60, (int)(Math.random()*200), 200);
  }
  void show() {
    noStroke();
    fill(myColor);
    rect((float)myX, (float)myY, 50, 50);
  }
}
