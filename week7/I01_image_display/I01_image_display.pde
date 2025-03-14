//  Introduction to Processing by Robin Parmar. MIT License.

/*  LESSON I01: Image Display
 
 	Demonstrates how to display a photographic imge (bitmap).
 	A mouse click changes from positive to negative display.
 
 	Two methods are compared:
 	a) iterate through a grid of pixels using get()
 	b) use the provided pixels[] array
*/

// Processing image type
PImage img;

boolean neg = false;

void setup() {
    size(800, 800);
    colorMode(RGB, 1.);

    // loads image from disk to memory
    img = loadImage("flower.jpg");

    positive();
}

// polling for mouse click
void draw() {}

// simply display the image at origin
void positive() {
    image(img, 0, 0);
}

// method 1: display negative by iterating through a grid of pixels
void negative1() {
    color c;
    
    // the image can be treated as a 2D array
    for (int x=0; x<img.width; x++) {
        for (int y=0; y<img.height; y++) {
            // grab colour at specified pixel
            c = img.get(x, y);

            // put that pixel on the canvas
            set(x, y, color(1.-red(c), 1.-green(c), 1.-blue(c)));
        }
    }
}

// method 2: use the provided "pixels" array
// this is a buffer we can manipulate before throwing it back on the canvas
void negative2() {
    color c;
    
    // load image data into the "pixels" array
    loadPixels();
    
    // address each element in the pixel array
    for (int i=0; i<pixels.length; i++) {     
        c = pixels[i];
        pixels[i] = color(1.-red(c), 1.-green(c), 1.-blue(c));
    }
    
    // update screen with the "pixels" array
    updatePixels();
}

// capture mouse
void mousePressed() {
    // toggle status each click
    neg = !neg;

    if (neg) {
        // negative1();
        negative2();
    } else {
        positive();
    }
}
