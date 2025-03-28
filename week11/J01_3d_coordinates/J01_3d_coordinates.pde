//  Introduction to Processing by Robin Parmar. MIT License.

/*  LESSON J01: 3D Coordinates
 
 	Visualise 3D space with axes.
 	Includes camera control with the mouse. 
 
    In Processing, the planar origin is at the top-left of the canvas.
        The positive x-axis goes from left to right, across the width.
        The positive y-axis goes from top to bottom, down the height.

    When we add the third dimension:
        The positive z-axis comes out of the canvas, towards the viewer.
        The negative z-axis goes into the canvas, away from the viewer. 

    This is a left-handed coordinate system.

    With your hand open and flat, fingers together.
        Your left thumb points towards positive x.
        Your fingers point towards positive y.
        Your palm faces towards positive z.
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
    R     = color(0.1, 0.6, 0.5);
    G     = color(0.5, 0.6, 0.5);
    B     = color(0.8, 0.6, 0.5);
    
    PFont f = createFont("ClearSans-Regular.ttf", 24);
  	textFont(f);
}

void draw() {
    background(WHITE);
    
    translate(width/2., height/2.);    
	drawAxes();
 
    // mouse controls camera
    camera(mouseX, mouseY, height,	// eye point
         width/2., height/2., 0., 	// center point
         0, 1, 0);					// up direction
}

void drawAxes() {
    strokeWeight(3);

	// length of line
	int l = int(0.4 * height);

	// text offset
	int offset = 20;

    stroke(B);
    fill(B);
    line(-l, 0, 0, l, 0, 0);
    translate(l+offset, 0, 0);
    text("X", 0, 0);
    translate(-l-offset, 0, 0);

    stroke(G);
    fill(G);
    line(0, -l, 0, 0, l, 0);
    translate(0, l+offset, 0);
    text("Y", 0, 0);
    translate(0, -l-offset, 0);

    stroke(R);
    fill(R);
    line(0, 0, -l, 0, 0, l);
    translate(0, 0, l+offset);
    text("Z", 0, 0);
    translate(0, 0, -l-offset);
}
