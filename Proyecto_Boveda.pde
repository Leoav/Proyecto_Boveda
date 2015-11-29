
import remixlab.proscene.*;

Scene scene;

Astro e;
  
void setup() {
  size(640, 360, P3D);
  scene = new Scene(this);
  e = new Astro();
  e.setradius(110);
  e.setangle(70);
  e.setangle2(270);
  scene.eyeFrame().setDamping(0);
   
       
}


void draw() {
  background(0);
  fill(204, 102, 0, 150);
  pushMatrix();
      e.display();
  popMatrix();
}

void keyPressed() {
  if(scene.eyeFrame().damping() == 0)
    scene.eyeFrame().setDamping(0.5);
  else
    scene.eyeFrame().setDamping(0);
  println("Camera damping friction now is " + scene.eyeFrame().damping());
}