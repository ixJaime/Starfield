Particle[] particles;
void setup()
{
  size(500, 500);
  particles = new Particle[1000];
  for (int i = 0; i<particles.length; i++) {
    particles[i] = new NormalParticle();
  }
  particles[1] = new OddballParticle();
  particles[2] = new JumboParticle();
}
void draw()
{
  background(0);
  for (int i = 0; i<particles.length; i++) {
    particles[i].show();
    particles[i].move();
  }
}

class NormalParticle implements Particle
{
  double x, y, speed, angle;
  int a, b, c;

  NormalParticle() {
    x = 200;
    y = 200;
    speed = Math.random()*10;
    angle = Math.PI*2*Math.random();
    a = (int)(Math.random()*256);
    b = (int)(Math.random()*256);
    c = (int)(Math.random()*256);
  }

  public void show() {
    noStroke();
    fill(a, b, c);
    ellipse((float)x, (float)y, 10, 10);
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
class OddballParticle implements Particle
{
  double x, y, speed, angle;
  int a, b, c;

  OddballParticle() {
    x = 200;
    y = 200;
    speed = Math.random()*5;
    angle = Math.PI*2*Math.random();
    a = (int)(Math.random()*256);
    b = (int)(Math.random()*256);
    c = (int)(Math.random()*256);
  }
  public void show() {
    fill(a, b, c);
    rect((float)x, (float)y, 15, 15);
  }
  public void move() {
    x = x + Math.cos(angle)*speed-2;
    y = y + Math.sin(angle)*speed-2;
  }
}
  
  class JumboParticle extends NormalParticle
  {
    public void show() {
      stroke(1);
      fill(a, b, c);
      ellipse((float)x, (float)y, 50, 50);
    }
  }