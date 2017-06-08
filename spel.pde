import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer muziek;
PImage c;
boolean r = false;
boolean l = false;
boolean s = false;
float x = 60; 
float y = 600;
float xb = 1400; 
void setup() {
  size(1400, 750);
  c = loadImage("c.jpg");
  c.resize(20, 20);
  minim = new Minim(this);
  muziek = minim.loadFile("Wie is de Mol_ Muziek Medley.mp3", 2048);
  muziek.loop();
}
void draw() {
  background(100, 60, 233);
  image(c, xb, 650);
  rect(x, y, 50, 80); 
  line(0, 675, 1400, 675);
  fill(0, 233, 69);
  rect(0, 675, 1400, 75);
  fill(21, 74, 40);
  rect(0, 0, 1400, 150);
  if (r && x < 1300)
  {
    x = x + 6;
  }
  if (l && x > 10)
  {
    x = x -6;
  }
  if (y < 600)
  {
    y = y + 5.5;
  }
  //vijand c
  xb = xb - 2;
  if (xb < x + 40 && xb > x && y > 560)
  {
    exit();
  }
    if (xb < 0)
  {
    xb = xb - 1400;
  }
}
void keyPressed() {
  if (key == ' ')
  {
    s = true;
  }
  if (keyCode == RIGHT)
  {
    r = true;
  }
  if (keyCode == LEFT)
  {
    l = true;
  }
  if (keyCode == UP && y >= 600)
  {
    y = y -150;
  }
}
void keyReleased()
{
  if (keyCode == RIGHT)
  {
    r = false;
  }
  if (keyCode == LEFT)
  {
    l = false;
  }
}