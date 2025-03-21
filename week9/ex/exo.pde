int size;
atom[] cluster;


void setup()
{
  fullScreen();
  colorMode(HSB, 1.);
  noStroke();
  
  cluster = new atom[1000];
  
  initialise();
}

void draw()
{
  background(0.);
  
  for (int i = 0; i < size; i++)
  {
     cluster[i].display(); 
  }
}

void mousePressed()
{
  initialise();
  print(cluster[42].x);
}

void initialise()
{
  for (int i = 0; i < size; i++)
  {
     cluster[i]  = new atom(); 
  }
}
