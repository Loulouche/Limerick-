/*
    The Universe holds an array of Atoms. This is an object factory, 
    creating and managing the individual particles.
*/

class Universe {
    // safety factor to use in colission detection
    int SAFETY = 1;

    int size;
	Atom[] cluster;

    Universe(int size_) {
    	size = size_;
		cluster = new Atom[size];
        initialise(); 
    }

    // display each atom in the universe
    void display() {
    	for (Atom a : cluster) {
            a.update();
            collisions(a);
            a.display();
    	}  
    }

    // check every other atom position against specified atom
    void collisions(Atom a_) {
        float d;

        // *NEW*
		float factor = 1.2;
        
        for (Atom b : cluster) {
            // don't check atom with itself!
            if (a_ != b) {
                // distance between atoms
                d = a_.loc.dist(b.loc);
                
                // compare to sum of radii
                if (d < a_.d/2 + b.d/2 + SAFETY) {
                    // *NEW* 
		            a_.vel.rotate(radians(90));
                    
                    // *NEW* 
                    // random position increment
                    a_.loc.x += factor * random(1.);
                    a_.loc.y += factor * random(1.);
                }
            }
        }  
    }

    void initialise() {
        for (int i=0; i<size; i++) {
            // *NEW*
            makeAtom(i);
        }
    }
    
    // *NEW*
    // create a new atom in an unoccupied position
    void makeAtom(int i_) {
        Atom a = null;

        boolean valid = false;
        while (!valid) {
            a = new Atom();
            valid = true;
            
            // check each other atom in the universe
            for (Atom b : cluster) {
                if ((b != null) && (b != a)) {
                    // distance between atoms
                    float d = a.loc.dist(b.loc);
                        
                    // distance should be greater than the sum of radii
                    if (d < (a.d/2 + b.d/2 + SAFETY)) {
                        // new atom is inside another
                        valid = false;
                        break;
                    }
                }
            }
        }  
        cluster[i_] = a;       // assign to the universe instance
    }

}
