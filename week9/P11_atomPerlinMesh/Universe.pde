/*
    The Universe holds an array of Atoms. This is an object factory, 
    creating and managing the individual particles.
*/

class Universe {
    int size;
    Atom[] cluster;

    // within this distance we draw a connecting line *NEW*
    float proximity = height * .1;

    // line colour *NEW*
    color c = color(.5, 1., .8);

    Universe(int size_) {
        size = size_;      
        cluster = new Atom[size];
        initialise();        
    }
    
    // display each atom in the universe
    void display() {
        for (Atom a : cluster) {
            a.update();
            a.display();
            
            // draw connections *NEW*
            for (Atom b : cluster) {
                // don't compare to self!
                if (a != b) {
                    // are points near each other?
                    if (dist(a.x, a.y, b.x, b.y) < proximity) {
                        pushStyle();
                            stroke(c);
                            strokeWeight(0.3);
                            line(a.x, a.y, b.x, b.y);
                        popStyle();
                    }
                }
            }
        }
    }

    void initialise() {
        for (int i=0; i<size; i++) {
            cluster[i] = new Atom();
        }
    }
}
