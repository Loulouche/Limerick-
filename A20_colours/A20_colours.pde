/*  A20 colours
 
    Displays HSB colour space and allows us to grab the hexadecimal notation.
    Every color variable is actually only a number, encoding four colour components.
    (The fourth is the alpha channel or transparency.)
*/

// increments for colour space
float hDelta, sDelta;

void setup() {
    fullScreen();
    colorMode(HSB, 1.);

    hDelta = 1. / width;
    sDelta = 1. / height;
}

void draw() {
    background(1.);		// white 
   
    for (int i=0; i<width; i++) {
        for (int j=0; j<height; j++) {
            stroke(color(i*hDelta, j*sDelta, 1.));
            point(i, j);
        }
    }
}

// click mouse to send hex value to console
void mousePressed() {
    color c = color(mouseX * hDelta, mouseY * sDelta, 1.);
    
    // don't return alpha component (it's always FF)
    println('#' + hex(c, 6));
}
