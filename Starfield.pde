Particle[] particles;
void setup()
{
  size(500, 500);
  particles = new Particle[1000];
  for (int i = 0; i<particles.length; i++) {
    particles[i] = new NormalParticle();
  }
}
void draw()
{
   background(0);
  for (int i = 0; i<particles.length; i++) {
  particles[i].show();
  particles[i].move();
  }
}
double x, y, speed, angle;
int a, b, c, myX, myY;
class NormalParticle implements Particle
{
  NormalParticle() {
    x = (int)(Math.random()*501);
    y = (int)(Math.random()*501);
    speed = Math.random()*5;
    angle = Math.PI*2*Math.random();
    a = (int)(Math.random()*256);
    b = (int)(Math.random()*256);
    c = (int)(Math.random()*256);
  }

  public void show() {
    for(int i=0; i<10; i++) {
    fill(a, b, c);
    ellipse((float)x, (float)y, 15, 15);
  }
  }
  public void move() {
    x = x + Math.cos(angle)*speed;
    y = y + Math.sin(angle)*speed;
  }
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}