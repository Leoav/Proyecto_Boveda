
import controlP5.*;

ControlP5 cp5;

void setup() {
  size(400, 400, P3D);
  smooth();
  cp5 = new ControlP5(this);
  
  cp5.addButton("info")
     .setPosition(50, 100)
     .setSize(150,150)
     .setView(new CircularButton())
     ;     
}
void draw() {
  background(0);
}

void info(int theValue) {
  println("Sirio");
}
 
class CircularButton implements ControllerView<Button> {

  public void display(PGraphics theApplet, Button theButton) {
    theApplet.pushMatrix();
    if (theButton.isInside()) {
      if (theButton.isPressed()) {
        stroke(255);
      }
    }    
    theApplet.ellipse(0, 0, theButton.getWidth(), theButton.getHeight());
    int x = theButton.getWidth()/2 - theButton.getCaptionLabel().getWidth()/2;
    int y = theButton.getHeight()/2 - theButton.getCaptionLabel().getHeight()/2;
    translate(x, y);
    theButton.getCaptionLabel().draw(theApplet);    
    theApplet.popMatrix();
  }
}