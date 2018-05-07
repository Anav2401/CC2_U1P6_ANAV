class Player_Racquet
{
  float size1;
  float size2;
  float colour;
  float Xracquet;
  float Yracquet;
  Player_Racquet()
  {
    size1 = 50;
    size2 = 100;
    Xracquet = 0;
    Yracquet = 60;
    colour = color (0, 0, 255);
  }
  void Draw()
  {
    fill(colour);
    rect(Xracquet,Yracquet, size1, size2);
    if (key == 'U'|| key == 'u')
    {
      Yracquet-=3;
    }
    else if (key == 'D'|| key == 'd')
    {
      Yracquet+= 3;
    }
  }
}