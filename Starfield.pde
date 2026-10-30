Particle[] dot = new Particle[1000];
void setup()
{
  background(0);
  size(1000, 1000);

  dot[0] = new OddballParticle();

  for (int i = 1; i < dot.length; i++) {
    dot[i] = new Particle();
  }
}
void draw()
{
  for (int i = 0; i < dot.length; i++) {
      dot[i].move();
      dot[i].show();
    }
  }


class Particle
{
  double myX, myY, mySpeed;
  int myColor, myAngle;
  Particle() {
    myX = 500;
    myY = 500;
    mySpeed = (Math.random()*7)+2;
    myAngle = (int)(Math.random()*(Math.PI*8));
    myColor = color(255, 50);

  }

  void move()
  {
    myX += (Math.cos(myAngle) * mySpeed);
    myY += (Math.sin(myAngle) * mySpeed);
  }

  void show()
  {
    fill(myColor);
    ellipse((float)myX, (float)myY, 10, 10);
  }
}
class OddballParticle extends Particle //inherits from Particle
{
  int mySize;
  OddballParticle() {
    mySize = 0;
  }

  void move() {
    mySpeed = (int)(Math.random()*2)+1;
    for (int i = 0; i < 3; i++) {
      mySize++;
    }
  }

  void show() {
    fill(myColor,20);
    ellipse((float)myX, (float)myY, mySize, mySize);
  }
}
