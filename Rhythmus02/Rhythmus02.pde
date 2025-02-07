// emulation of "Rhythum 21"
color WHITE, BLACK;

Shape sh1, sh2, sh3;

void setup()
{
  //conformes to 4:3 aspect ratio
  size(900,720);
  
  // 24 frame per second
  frameRate(24);
  
  rectMode(CENTER);
  colorMode(RGB, 1.);
  
  WHITE = color(1.);
  BLACK = color(0.); 
}


void draw()
{
  background(WHITE);
  switch(frameCount)
  {
    case 1:
    sh1 = new Shape(width/2, height/2 , 0, height, width, height, 49, BLACK);
    break;
 
    case 53:
        sh1 = new Shape(width/2, height/2 , 0, height, width, height, 54, BLACK);
        break;

    case 107:
    sh1 = new Shape(400,  300, 0, 50, 200, 200, 100, BLACK);
        break;
  }
  
  if(sh1 != null)
  {
    sh1.display();
    if (sh1.isDead())
    {
      sh1 = null;
    }
  }
  
  if(sh2 != null)
  {
    sh2.display();
    if (sh2.isDead())
    {
      sh2 = null;
    }
  }
  
  if(sh3 != null)
  {
    sh3.display();
    if (sh3.isDead())
    {
      sh3 = null;
    }
  }
  
  
}
