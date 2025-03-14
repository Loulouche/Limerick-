//  Introduction to Processing by Robin Parmar. MIT License.

/*  LESSON X02: video pixelate
 
    Playback of video file with frame pixelation.
	Following example by Hernando Barragan.
*/

import processing.video.*;

Movie mov;

// how many pixels in a block
int sizer = 20;

int wPixels, hPixels;

// array to hold each frame as color data
color frame[];

void setup() {
    size(1280, 720);
    
    noStroke();

    mov = new Movie(this, "Io [NASA].mp4");
    mov.loop();
    println(mov.duration());

    wPixels = width / sizer;
    hPixels = height / sizer;
    
    frame = new color[wPixels * hPixels];
}

void draw() {
    // read only if we have a new frame available
    if (mov.available() == true) {
        mov.read();
        
        // loads frame into a pixels array
        mov.loadPixels();
        
        int count = 0;
	    for (int j=0; j<hPixels; j++) {
	        for (int i=0; i<wPixels; i++) {
    			// get() extracts data from pixels array
                frame[count] = mov.get(i*sizer, j*sizer);
                count++;
            }
        }
    }

	// display existing array
    for (int j=0; j<hPixels; j++) {
        for (int i=0; i<wPixels; i++) {
            fill(frame[j*wPixels + i]);
            rect(i*sizer, j*sizer, sizer, sizer);
        }
    }
}
