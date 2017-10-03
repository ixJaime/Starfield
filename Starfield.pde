Particle[] particles;
void setup()
{
	size(500, 500);
  particles = new Particle[100];
  for(int i = 0; i<particles.length; i++) {
    particles[i] = new Particle(x, y);
  }
}
void draw()
{
	background(0);
}
double x, y, speed, angle;
int a, b, c, myX, myY;
class NormalParticle 
{
	NormalParticle() {
  x = (int)(Math.random()*501);
  y = (int)(Math.random()*501);
  speed = Math.random()*10;
  angle = Math.PI*2*Math.random();
  a = (int)(Math.random()*256);
  b = (int)(Math.random()*256);
  c = (int)(Math.random()*256);
  }
  
  public void show() {
    fill(a, b, c);
    ellipse(x, y, 20, 20);
}
  public void move() {
    x = x + (int)(Math.random()*10);
    y = y + (int)(Math.random()*10);
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