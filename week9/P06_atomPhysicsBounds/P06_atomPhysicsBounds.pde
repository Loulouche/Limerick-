//  Introduction to Processing by Robin Parmar. MIT License.

/*	P06_atomPhysicsBounds

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
    	Atoms will wrap around the screen border.

    Changes from previous version:
        Atom.update()
        Atom.checkBounds()
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

void mousePressed() {
    us.initialise();
}
