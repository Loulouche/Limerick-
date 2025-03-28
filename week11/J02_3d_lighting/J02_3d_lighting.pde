//  Introduction to Processing by Robin Parmar. MIT License.

/*  LESSON J02: 3D Lighting
    
	Simple lighting exercise.
    Compare with and without lights().
    Compare with and without pointLight().
*/

// colour constants
color WHITE, GREY, BLACK, R, G, B;

void setup() {
    // must use the 3D renderer
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

    translate(width/2, height/2, 0);
    
    // instead of controlling camera, rotate the actual positions
    rotateY( map(mouseX, 0, width,  -HALF_PI, HALF_PI) );
    rotateX( map(mouseY, 0, height, -HALF_PI, HALF_PI) );

    cube(R,  -200,   0, 0);
    cube(G,   200,   0, 0);
    cube(B,     0, 200, 0);
    cube(GREY,  0,   0, -200);
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
