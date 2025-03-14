//  Introduction to Processing by Robin Parmar. MIT License.

/*  LESSON I04: Image Blend
 
 	Blends two bitmaps using tint().
 
	Processing provides some useful built-in bitmap operations, so
	that we don't always need to resort to pixel-based processing.

    Use the keys [] to change the amount. 
 */

PImage img1, img2;

// blend of the two images
float ratio = 0.5;

// change in blend for each keystroke
float delta = 0.02;

void setup() {
    size(800, 800);
    colorMode(RGB, 1.);

    img1 = loadImage("flower.jpg");
    img2 = loadImage("insect.jpg");

    blend();
}

// polling for key entry
void draw() {}

// capture keyboard input
void keyPressed() {
    switch(key) {
        case '[':
        	ratio -= delta;
	        break;
        case ']':
            ratio += delta;
    	    break;
    }    
    ratio = constrain(ratio, 0., 1.);
    blend();
}

void blend() {
    // tint applies a colour or transparency (alpha) change
    tint(1., ratio);
    image(img1, 0, 0);

    tint(1., 1-ratio);
    image(img2, 0, 0);
}
