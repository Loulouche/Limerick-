//  Introduction to Processing by Robin Parmar. MIT License.

/*	P01 AtomFactory

    This code set will demonstrate a flexible method for creating a 
    particle system. The goal is to maintain a very simple top-level 
    sketch, with all the details clearly organised in other tabs.

    The following versions are part of this set:    
        1. static atoms
        2. static atoms with object factory
        3. Brownian motion
        4. Perlin noise motion
        5. physics-based motion
        6. physics with bounds
        7. physics with bounce
        8. physics with collisions
        9. enhanced physics

    IN THIS VERSION
        Goal is to provide a cleaner encapsulation of data and methods. 
    	The Atom tab remains the same. 
        Management code is moved from the top sketch to Universe tab.
    
    This top-level sketch will not change further, even as we add functionality.    
*/

Universe us;

int BLACK = 0;

void setup() {
    fullScreen();
	colorMode(HSB, 1.);
	noStroke();

    us = new Universe(1000);
}

void draw() {
    background(BLACK);
    us.display();
}

// generate new initial values when the mouse is clicked
void mousePressed() {
    us.initialise();
}
