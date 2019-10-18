Die dire;
void setup()
{
  size(600, 600);
  noLoop();
}
void draw()
{
  background(100, 200, 50);
  for (int i=((int)((Math.random()*20))+100); i<=470; i+=((Math.random()*60)+70)) {  
    for (int e=((int)(Math.random()*20)+100); e<=470; e+=((Math.random()*75)+90)) {  

      Die dire = new Die(e, (i + ((int)(Math.random()*60))-10));
      dire.show();
      dire.roll();
    }
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int value;
  int mx, my;

  Die(int x, int y) //constructor
  {
    value = (int)(Math.random()*6);
    my = y;
    mx = x;
  }
  void roll()
  {
    int number =(int)((Math.random()*6)+1);
    fill(24);
    if (number == 1)
    {
      rect((mx + 24), (my + 24), 13, 13, 7);
    }
    if (number == 2)
    {
      rect((mx + 40), (my + 40), 13, 13, 7);
      rect((mx + 8 ), (my + 8 ), 13, 13, 7);
    }
    if (number == 3)
    {
      rect((mx + 24), (my + 24), 13, 13, 7);
      rect((mx + 40), (my + 40), 13, 13, 7);
      rect((mx + 8 ), (my + 8 ), 13, 13, 7);
    }
    if (number == 4)
    {
      rect((mx + 40), (my + 40), 13, 13, 7);
      rect((mx + 8 ), (my + 8 ), 13, 13, 7);
      rect((mx + 8), (my + 40), 13, 13, 7);
      rect((mx + 40 ), (my + 8 ), 13, 13, 7);
    }
    if (number == 5)
    {
      rect((mx + 24), (my + 24), 13, 13, 7);
      rect((mx + 40), (my + 40), 13, 13, 7);
      rect((mx + 8 ), (my + 8 ), 13, 13, 7);
      rect((mx + 8), (my + 40), 13, 13, 7);
      rect((mx + 40 ), (my + 8 ), 13, 13, 7);
    }
    if (number == 6)
    {
      rect((mx + 40), (my + 40), 13, 13, 7);
      rect((mx + 8 ), (my + 8 ), 13, 13, 7);
      rect((mx + 8), (my + 40), 13, 13, 7);
      rect((mx + 40 ), (my + 8 ), 13, 13, 7);
      rect((mx + 8), (my + 24), 13, 13, 7);
      rect((mx + 40), (my + 24), 13, 13, 7);
    }
  }
  void show()
  {
    fill(213,213,250);
    rect(mx, my, 60, 60, 7);
  }
}
