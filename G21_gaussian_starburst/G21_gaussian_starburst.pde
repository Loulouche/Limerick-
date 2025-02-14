//	Introduction to Processing by Robin Parmar. MIT License.

/*  LESSON G21: Gaussian Starburst

    This sketch creates a random starburst in the center of 
    the canvas. The length of the spikes are determined using 
    a Gaussian distribution.

    Click the mouse to get a different pattern.
*/

// ** STARTING CODE to be developed in lab **

// colour constants 
color WHITE, BLACK;

float limit;

void setup() {
    fullScreen();

    colorMode(HSB, 1.);
    WHITE = color(1.);
    BLACK = color(0.);
    
    stroke(BLACK);
    strokeWeight(2);

    limit = height * 0.4;

    starburst();
}

void starburst() {
    background(WHITE);
    
    translate(width/2, height/2);
    for ( int i =0; i < 360; i++)
    {
      int d = constrain(abs(int(randomGaussian() * limit)), 0, (int)limit);
      rotate(TWO_PI  /360.);
      line(0, 0, d, 0);
    }
}

void draw() {}

void mousePressed() {
    starburst();
}
