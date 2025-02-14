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

void setup() {
    fullScreen();

    colorMode(HSB, 1.);
    WHITE = color(1.);
    BLACK = color(0.);
    
    stroke(BLACK);
    strokeWeight(2);

    starburst();
}

void starburst() {
    background(WHITE);

}

void draw() {}

void mousePressed() {
    starburst();
}
