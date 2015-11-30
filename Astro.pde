//Super clase Astro

class Astro{

  //La variable angl1 es el angulo de rotacion del astro entre los ejes x,y
  float angl1;
  //La variable angl2 es el angulo de rotacion del astro entre el eje z y el vector u que contiene al punto
  float angl2;
  //La variable rad es el radio de la orbita que describe el astro
  float rad;
  //Las variables x,y,z son las pociciones en x,y,z respectivamente de un punto para los angulos angl1 y angl2 que se ubica a una distancia radius del centro
  float x;
  float y;
  float z;
  String nomb;
  String cont;
  String dist;
  String maga;
  
  void setNombre(String n){
    nomb=n;
  }
  
  void setConstelacion(String n){
    cont=n;
  }
  void setDistancia(String n){
    dist=n;
  }
  void setMagnitudA(String n){
    maga=n;
  }
  
  String Nombre(){
    return nomb;
  }
  
  String Constelacion(){
    return cont;
  }
  
  String Distancia(){
    return dist;
  }
  
  String MagnitudA(){
    return maga;
  }
  
  void ImprimirInfo(){
    println(Nombre());
    println(Constelacion());
    println(Distancia());
    println(MagnitudA());
  }
  
  void setradius(float r){
    rad=r;
  }
  float radius(){
    return rad;
  }
  
  void setangle(float a){
    angl1 = a;  
  }
  
  float angle1(){
    return angl1;
  } 
  
  void setangle2(float a){
    angl2 = a;  
  }
  
  float angle2(){
    return angl2;
  }

  void display() {
    lights();
    x = cos(radians(angle1()))*radius()*sin(radians(angle2()));
    y = sin(radians(angle1()))*radius()*cos(radians(angle2()));
    z = cos(radians(angle1()))*radius();
    fill(255, 255, 255);
    translate(x,y,z);
    scale(2);
    noStroke();
    sphere(1); 
}

void display2(){
    x = cos(radians(angle1()))*radius()*sin(radians(angle2()));
    y = sin(radians(angle1()))*radius()*cos(radians(angle2()));
    z = cos(radians(angle1()))*radius();
    fill(255, 0, 0);
    translate(x,y,z);
    ellipse(0,0,7,7);
  }
  
}

//int Condicion=0;
//void keyPressed(){
//  if(key==CODED && keyCode==RIGHT){
//    Condicion++;
//  }
//  if(key==CODED && keyCode==LEFT){
//    Condicion--;
//  }  
//}