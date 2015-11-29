Astro ast;

void setup() {
  size(400, 400, P3D);
  background(255);
  //smooth();
  noStroke();
  ast=new Astro();
  ast.setangle(270);
  ast.setangle2(90);
}
void draw(){
  ast.setradius(50);
  
  ast.display();
}