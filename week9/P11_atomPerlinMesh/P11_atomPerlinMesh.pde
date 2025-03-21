//  Introduction to Processing by Robin Parmar. MIT License.

/*  P11_atomPerlinMesh

	Atom.initialise(): style changed
	Universe.display(): draw connections
*/
Universe us;

int BLACK = 0;

void setup() {
    fullScreen();   
    colorMode(HSB, 1.);

	us = new Universe(200);
}

void draw() {
    background(BLACK);
    us.display();    
}

void mousePressed() {
    us.initialise();
}
