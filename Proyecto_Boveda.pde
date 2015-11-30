
import remixlab.proscene.*;


Scene scene;
Astro e, f,  Rig, Alt,Veg, Pro;

int Condicion=0;

  
void setup() {
  size(640, 360, P3D);
 
  
  scene = new Scene(this);
  
  e = new Astro();
  e.setradius(100);
  e.setangle(80);
  e.setangle2(-16);
  e.setNombre("Sirio");
  e.setConstelacion("Orion");
  e.setDistancia("806 años luz");
  e.setMagnitudA("-1.47 luz emitida");
  
  f = new Astro();
  f.setradius(100);
  f.setangle(50);
  f.setangle2(40);
  f.setNombre("Canopus");
  f.setConstelacion("Carina");
  f.setDistancia("310 años luz");
  f.setMagnitudA("-0.72 luz emitida");
  
  Rig = new Astro();
  Rig.setradius(100);
  Rig.setangle(210);
  Rig.setangle2(-60);
  Rig.setNombre("Rigil Kentaurus");
  Rig.setConstelacion("Centaurus");
  Rig.setDistancia("4.4 años luz");
  Rig.setMagnitudA("-0.01 luz emitida");
  Alt = new Astro();
  Alt.setradius(100);
  Alt.setangle(280);
  Alt.setangle2(-73);
  Alt.setNombre("Altair");
  Alt.setConstelacion("Aquila");
  Alt.setDistancia("17 años luz");
  Alt.setMagnitudA("0.77 luz emitida");
  
  Veg = new Astro();
  Veg.setradius(100);
  Veg.setangle(270);
  Veg.setangle2(38);
  Veg.setNombre("Vega");
  Veg.setConstelacion("Lyra");
  Veg.setDistancia("25 años luz");
  Veg.setMagnitudA("0.03 luz emitida");
  
  Pro = new Astro();
  Pro.setradius(100);
  Pro.setangle(105);
  Pro.setangle2(-25);
  Pro.setNombre("Procyon");
  Pro.setConstelacion("Canis Minor");
  Pro.setDistancia("11 años luz");
  Pro.setMagnitudA("0.34 luz emitida");
}

void draw() {
  background(0);
  lights();
  pushMatrix();
  fill(0,0,255);
  sphere(20);
  popMatrix();
  pushMatrix();
  e.display();
  popMatrix();
  pushMatrix();
  f.display();
  popMatrix();
  pushMatrix();
  Rig.display();
  popMatrix();
  pushMatrix();
  Alt.display();
  popMatrix();
  pushMatrix();
  Veg.display();
  popMatrix();
  pushMatrix();
  Pro.display();
  popMatrix();
 
  if(Condicion<-10 && Condicion>10){
    Condicion=0;
  }
  
  if(Condicion==-1){
  f.display2();
  f.ImprimirInfo();
  }
  if(Condicion==-2){
  Alt.display2();
  Alt.ImprimirInfo();
  }
  if(Condicion==-3){
  Veg.display2();
  Veg.ImprimirInfo();
  }
  if(Condicion==1){
  e.display2();
  e.ImprimirInfo();
  }
  if(Condicion==2){
  Rig.display2();
  Rig.ImprimirInfo();
  }
  if(Condicion==3){
  Pro.display2();
  Pro.ImprimirInfo();
  }
  
  
  
}



void keyPressed() {

 
 if(key==CODED && keyCode==SHIFT){
   Condicion++;
 }
 if(key==CODED && keyCode==ALT){
   Condicion--;
 }
 if(key==CODED && keyCode==CONTROL){
   Condicion=0;
 }
 
}