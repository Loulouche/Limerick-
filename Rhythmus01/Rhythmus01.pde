// this is a comment 
 
 /* this is a 
longer comment */

color WHITE, BLACK;

//float

void setup()
{
  //conformes to 4:3 aspect ratio
  size(900,720);
  
  // 24 frame per second
  frameRate(24);
  
  rectMode(CENTER);
  colorMode(RGB, 1.);
  
  WHITE = color(255);
  BLACK = color(0.);
  
 
}

void draw()
{
  background(WHITE);
  rect(300, 400, 50, 50);
  fill(BLACK);
}
