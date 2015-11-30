
import remixlab.proscene.*;

Scene scene;
Astro e, f;

int Condicion=0;
  
void setup() {
  size(640, 360, P3D);
  scene = new Scene(this);
  e = new Astro();
  e.setradius(110);
  e.setangle(70);
  e.setangle2(270);
  e.setNombre("Sirio");
  e.setConstelacion("Orion");
  e.setDistancia("12312");
  e.setMagnitudA("asdasd");

f = new Astro();
  f.setradius(110);
  f.setangle(70);
  f.setangle2(140);
  f.setNombre("Sasasda");
  f.setConstelacion("Odasdasdrion");
  f.setDistancia("1231dasdas2");
  f.setMagnitudA("asdasasdadd");

 
  
}

void draw() {
  background(0);
  fill(204, 102, 0, 150);
  pushMatrix();
      e.display();
      popMatrix();
      pushMatrix();
      f.display();
  popMatrix();
 
  if(Condicion<-10 && Condicion>10){
    Condicion=0;
  }
  
  if(Condicion==1){
  e.display2();
  e.ImprimirInfo();
  }
  
  if(Condicion==-1){
  f.display2();
  f.ImprimirInfo();
  }
}



void keyPressed() {

 
 if(key==CODED && keyCode==RIGHT){
   Condicion++;
 }
 if(key==CODED && keyCode==LEFT){
   Condicion--;
 }
 if(key==CODED && keyCode==CONTROL){
   Condicion=0;
 }
 
}