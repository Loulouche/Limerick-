//  Introduction to Processing by Robin Parmar. MIT License.

/*  LESSON X01: video play
 
	Simple playback of video file.
	Consider increasing maximum memory available to Processing.
*/

import processing.video.*;

Movie mov;

color WHITER;

boolean paused = false;

void setup() {
    size(1280, 720);
    
    colorMode(HSB, 1.);
    WHITER = color(.9);

    mov = new Movie(this, "Io [NASA].mp4");
    mov.loop();
    // mov.frameRate(12);
    println(mov.duration());
}

void draw() {
    // read frame from video
    if (mov.available()) {
        mov.read();
	    image(mov, 0, 0);
    
        fill(WHITER);
        text(mov.time(), 20, 20);
    }
}

// capture keyboard input
void keyPressed() {
    switch(key) {
        case ' ':
        	paused = !paused;
            if (paused) {
                mov.pause();
            } else {
                mov.play();
            }
            break;
    }    
}
