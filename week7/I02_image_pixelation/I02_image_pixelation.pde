//  Introduction to Processing by Robin Parmar. MIT License.

/*  LESSON I02: Image Pixelation
 
 	Pixelates an image.
 	Use the keys [] to change the amount.
 */

PImage img;

// block size
float block = 10.;

// change in block size for each keystroke
float delta = 2.;

void setup() {
    size(800, 800);
    colorMode(RGB, 1.);
	noStroke();

    img = loadImage("flower.jpg");

    pixelate();
}

// polling for key entry
void draw() {}

// iterate through a grid of pixels
void pixelate() {
    color c;
    
    // access only those pixels offset by delta
    for (int x=0; x<img.width; x+=block) {
        for (int y=0; y<img.height; y+=block) {
            // fill entire rectangle with colour taken from one pixel
            c = img.get(x, y);
            fill(c); 
            rect(x, y, block, block);
        }
    }
}

// capture keyboard input
void keyPressed() {
    switch(key) {
        case '[':
            block -= delta;
            break;
        case ']':
            block += delta;
            break;
    }    
    block = constrain(block, 1., width/4);
    
    pixelate();
}
