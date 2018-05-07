class Comp_Paddle extends Player_Racquet
{
  float bspeed;
  Comp_Paddle()
  {
    size1 = 50;
    size2 = 100;
    colour = color (0, 0, 255);
    bspeed = 5;
  }
  void Draw()
  {
    PVector Ball = new PVector (Xball, Yball);
    Direction = PVector.sub(Position, Ball);
    bspeed = Direction.mag();
    Direction.normalize();
    Direction.mult(bspeed/10);
    Position.sub(Direction);
    fill(colour); 
    rect(width, Position.y, size1, size2);
  }
}