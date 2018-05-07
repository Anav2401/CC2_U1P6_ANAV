Base_Ball b;
Player_Racquet p;
int Hitcount;
float Xball;
float Yball;
float compscore;
float playerscore;
float size1;
float size2;
float Xracquet;
float Yracquet;
Comp_Paddle c;
PVector Position = new PVector(0,0);
PVector Direction = new PVector (0, 0);
PVector Ball = new PVector (0, 0);
void setup()
{
  fullScreen();
  b = new Base_Ball();
  p = new Player_Racquet();
  rectMode(CENTER);
  c= new Comp_Paddle();
}
void draw()
{
  background(255);
  b.Draw();
  p.Draw();
  c.Draw();
  fill(0);
  text("COMP:"+compscore, 10, 50);
  textSize(50);
  text("PLAYER:"+compscore, 10, 750);
  textSize(50);
}