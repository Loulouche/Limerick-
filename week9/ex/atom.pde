class atom{
  float x, y;
  float d;
  color c;
}

atom()
{
  reset();
}

void reset()
{
  x = random(width);
  y = random(height);
  
  d = random(4,10);
  c = random (.2, 1);
}

void display()
{
  fill(c);
  circle(x,y,d);
}
