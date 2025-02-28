import processing.javafx.*;

// how many points de we need on a curve ?
int PIX = 1000;
int a,b;

//fixed colours
int WHITE, RED;

void setup()
{
  //fx2d gives us a smoother render 
  fullScreen(FX2D);
  colorMode(HSB, 1.);
  
  WHITE = 1;
  RED = color(0, 1., 1.);
  
  //a = int(height * 4.);
  //b = 4;
  
  //background(WHITE);
  //polarRose(500, 18 , RED); //si on modifie les coordonee 300 et 4 il y a un zoom.
  // plus x > 300 plus la fleur est grosse  plusy > 4 plus il y a de petales
  
  //noLoop();
  
}

void draw() 
{
  background(WHITE);
  
   a = int( map(mouseX, 0, width, 0, int(height * 4)) );
   b = int( map(mouseY, 0, height, 0, 30) );
  
  
  text("radius: " + a, 20, 20);
  text("petals: " + b, 20, 40);
  
  polarRose(a, b, RED);
}

void polarRose(float a, float b, color c)
{
  float x, y, t, r;
  pushStyle();
  pushMatrix();
  noFill();
  strokeWeight(2);
  stroke(c);
  translate(width/2 , height/2);
  
  beginShape();
    for ( int i = 0; i <= PIX; i++)
    {
      t = map(i, 0, PIX-1, 0, TWO_PI);
      
      r = a * cos(b * t);
      x = r * cos(t);
      y = r * sin(t);
      
      vertex(x,y);
    }
    endShape();
    
    popStyle();
    popMatrix();
}
