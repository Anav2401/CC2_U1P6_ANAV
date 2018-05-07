class Base_Ball
{ 
  int colour;
  int life;
  float size;
  float Dir_X;
  float Dir_Y;
  Base_Ball()
  {
    colour = color(255, 0, 255);
    size = 50;
    Xball = width/2;
    Yball = height/2;
    Dir_X = 2;
    Dir_Y = -2;
  }
  void Draw()
  {
    fill(colour);
    ellipse(Xball, Yball, size, size);
    if (Xball  > width - size/2)
    {
      Dir_X = - Dir_X;
    }
    if (Xball < 0 + size/2)
    {
      Dir_X = - Dir_X;
    }
    if (Yball  > height - size/2)
    {
      Dir_Y = - Dir_Y;
    }
    if (Yball  < 0 + size/2)
    {
      Dir_Y = - Dir_Y;
    }
    if ( dist(Position.x - 25, Xball, Position.y + 50, Yball)>0 && dist(Position.x - 25, Xball, Position.y-50, Yball) >0 )
    {
      if ( dist(Position.x, Xball, Position.y, Yball)< 100)
      {
        Dir_X = - Dir_X;
      }
    } else
    {
      playerscore ++;
    }
    if ( dist(Xracquet + 25, Xball, Yracquet + 50, Yball)>0 && dist(Xracquet + 25, Xball, Yracquet-50, Yball) >0 )
    {
      if ( dist(Xracquet, Xball, Yracquet, Yball)< 100)
      {
        Dir_X = - Dir_X;
      } else
      {
        compscore++;
      }
    }

    Xball += Dir_X ;
    Yball += Dir_Y ;
  }
}