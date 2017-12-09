class Snow
{
  
  float X;
  float Y;
  float Speed;
  float Trensparency;
  PImage Snow;
  Snow()
  {
    X = random(width);
    Y= random(-1000,0);
    Speed = random(1,4);
    Trensparency = random(255);
     Snow = loadImage("snow.png");
  }
  
  void Move()
  {
    noStroke();
    Y += Speed;
    X-=random(2,3);
    if(X < -20)
    {
      X=width;
    }
    if(Y > height)
    {
      Y = random(-1000,0);
    }
  }
  
  void Render()
  {
    tint(255, Trensparency);
   image(Snow, X, Y, 20, 20 );
   noTint();
  }
}