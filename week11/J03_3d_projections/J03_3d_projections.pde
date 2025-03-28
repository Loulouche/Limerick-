//  Introduction to Processing by Robin Parmar. MIT License.

/*  LESSON J03: 3D Projections
 
 	Illustrates the two projections available in P3D.
 
	In perspective mode, the default, distant objects appear smaller, 
	thus achieving the illusion of a third dimension.

	In orthographic mode, all objects with the same dimension appear 
	the same size, regardless of position. 

	Hold the mouse button to switch to orthographic projection. 
*/

// colour constants
color WHITE, GREY, BLACK, R, G, B;

void setup() {
    fullScreen(P3D);
    colorMode(HSB, 1.);

    WHITE = color(0.9);
    GREY  = color(0.5);
    BLACK = color(0.0);
    R     = color(0.0, 0.6, 0.8);
    G     = color(0.3, 0.6, 0.8);
    B     = color(0.6, 0.6, 0.8);
}

void draw() {
    background(WHITE);

    lights();

    if (mousePressed) {
        ortho();
        text("orthographic mode", 10, 30);
    } else {
        perspective();
        text("perspective mode", 10, 30);
    }

    translate(width/2, height/2, 0);
    rotateY( map(mouseX, 0, width, -HALF_PI, HALF_PI) );
    rotateX( map(mouseY, 0, height, -HALF_PI, HALF_PI) );

    cube(R, -200, 0, 0);
    cube(G, 200, 0, 0);
    cube(B, 0, 200, 0);
    cube(GREY, 0, 0, -200);
}

void cube(color c, int x, int y, int z) {
    pushMatrix();
    pushStyle();
	    noStroke();
        translate(x, y, z);
        fill(c);
        box(100);
    popStyle();
    popMatrix();
}
