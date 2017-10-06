Particle[] particles;
void setup()
{
  size(500, 500);
  particles = new Particle[500];
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
    x = 200;
    y = 200;
    speed = Math.random()*0.3;
    angle = Math.PI*2*Math.random();
    a = (int)(Math.random()*256);
    b = (int)(Math.random()*256);
    c = (int)(Math.random()*256);
  }

  public void show() {
    for(int i=0; i<particles.length; i++) {
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
//class OddballParticle implements Particle
{
  //public void show() {
  //  for(int i=0; 
}
class JumboParticle //uses inheritance
{
  //your code here
}