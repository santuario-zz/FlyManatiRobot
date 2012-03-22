/*
:-:-: Manati Simulation :-:-:

Rafa Ayala Muller
Adrian Santuario
2012
*/

import peasy.*;
import processing.opengl.*;

PeasyCam cam;

Manati manati = new Manati();

void setup() {
  size(600,600,OPENGL);
  noStroke();
  cam = new PeasyCam(this, 300);
  cam.setMinimumDistance(150);
  cam.setMaximumDistance(1500);
  
  
  // Initialize Manati
  
  manati = new Manati(160,60);
}
void draw() {
  
  rotateX(-.5);
  rotateY(-.5);
  background(0);
  lights();
  
  manati.setFinSpeed(0.8);
  manati.swim();
  


}
