int SnowCount= 100;
Snow[] SnowFlakes = new Snow[SnowCount];
import processing.sound.*;
SoundFile file;
PImage Wand;
PImage Title;
PImage Background;
PImage Hufflepuff;
PImage Slytherin;
PImage Gryffindor;
PImage Ravenclaw;
PImage SlyScarf;
PImage GryScarf;
PImage RavScarf;
PImage HufScarf;
PImage Scar;
PImage Triangle;
PImage Egg;
PImage Diary;
PImage Locket;
PImage Ring;
PImage Hat;
PImage Feather;
PImage Diadem;
PImage Cup;
PImage Snich;
PImage Nimbus;
float a = -200;//OBJECT
float b = 100;//OBJECT
float c = 1000;//OBJECT
float d = 500;//OBJECT
float e = -500;//OBJECT
float f = 500;//OBJECT
float x2 = 600;//OBJECT
float y2 = 370;//OBJECT
float y3 = 480;//OBJECT
float y4 = 260;//OBJECT
float y5 = 150;//OBJECT
int scene = 0;

void setup()
{
  size(800, 600);
  Setting();
  LoadImage();
  Snow();
}
void draw()
{
  Scene();
  Sine();
}
void LoadImage()
{
  Wand = loadImage("Wand.png");
  Background = loadImage("Background.jpg");
  Title = loadImage("Title.png");
  Hufflepuff = loadImage("Hufflepuff.png");
  Slytherin = loadImage("Slytherin.png");
  Gryffindor = loadImage("Gryffindor.png");
  Ravenclaw = loadImage("Ravenclaw.png");
  SlyScarf = loadImage("SlyScarf.png");
  GryScarf = loadImage("GryScarf.png");
  HufScarf = loadImage("HufScarf.png");
  RavScarf = loadImage ("RavScarf.png");
  Scar = loadImage("scar.png");
  Triangle = loadImage("triangle.png");
  Egg = loadImage("egg.png");
  Diary = loadImage("diary.png");
  Locket = loadImage("locket.png");
  Ring = loadImage("ring.png");
  Hat = loadImage("hat.png");
  Feather = loadImage("feather.png");
  Diadem = loadImage("diadem.png");
  Cup = loadImage("cup.png"); 
  Snich = loadImage("snich.png");
  Nimbus = loadImage("nimbus.png");
}
void Snow ()
{
  for (int i=0; i < SnowCount; i++)
  {
    SnowFlakes[i] = new Snow();
  }
}
void Setting()
{
  file = new SoundFile(this, "Harry_Potter.mp3");
  file.loop();
}
void Scene()
{
  noCursor();
  image(Background, 0, 0, 800, 600);
  image(Title, -1, 0, 802, 220);
  image(Hufflepuff, x2, y2, 90, 110);
  image(Ravenclaw, x2, y3, 90, 110);
  image(Gryffindor, x2, y4, 90, 110);
  image(Slytherin, x2, y5, 90, 110);
  image(Wand, mouseX, mouseY, 150, 55);
  if (scene == 0)
  {
    if (mouseX < x2 +80 &&
      mouseX + 140 > x2 &&
      mouseY <  y2 + 100 &&
      45 +mouseY > y2)
    {
      if (mousePressed)
      {
        scene = 1;
      }
    }
    if (mouseX < x2 +80 &&
      mouseX + 140 > x2 &&
      mouseY <  y3 + 100 &&
      45 +mouseY > y3)
    {
      if (mousePressed)
      {
        scene = 2;
      }
    }
    if (mouseX < x2 +80 &&
      mouseX + 140 > x2 &&
      mouseY <  y4 + 100 &&
      45 +mouseY > y4)
    {
      if (mousePressed)
      {
        scene = 3;
      }
    }
    if (mouseX < x2 +80 &&
      mouseX + 140 > x2 &&
      mouseY <  y5 + 100 &&
      45 +mouseY > y5)
    {
      if (mousePressed)
      {
        scene =4;
      }
    }
  }

  if (scene == 1)
  {
    background(255, 219, 10);
    image(Cup, a, b, 100, 100);
    image(Snich, c, d, 200, 100);
    image(Nimbus, e, f, 200, 88);
    image(HufScarf, 115, 50, 570, 500);
  }
  if (scene == 2)
  {
    background(0, 8, 137);
    image(Hat, a, b, 100, 95);
    image(Feather, c, d, 100, 100);
    image(Diadem, e, f, 100, 95);
    image(RavScarf, 115, 50, 570, 500);
  }
  if (scene == 3)
  {
    background(185, 26, 26);
    image(Scar, a, b, 80, 100);
    image(Egg, c, d, 50, 75);
    image(Triangle, e, f, 100, 80);
    image(GryScarf, 115, 50, 570, 500);
  }
  if (scene == 4)
  {
    background(37, 121, 46);
    image(Diary, a, b, 80, 80);
    image(Locket, c, d, 75, 75);
    image(Ring, e, f, 100, 75);
    image(SlyScarf, 115, 50, 570, 500);
  }
  if (keyPressed)
  {
    if (key == 'b')
    { 
      scene = 0;
    }
  }
  for (int i=0; i < SnowCount; i++)
  {
    SnowFlakes[i].Move();
    SnowFlakes[i].Render();
  }
}
void Sine()
{
  a+=1;
  b = 20*sin(a/5)+100;
  c+=-1;
  d = 20*sin(c/5)+250;
  e+=1;
  f = 20*sin(e/5)+400;
  if (a>width)
  {
    a = -200;
  }
  if (c<-200)
  {
    c=1000;
  }
  if (e>width)
  {
    e = -500;
  }
}