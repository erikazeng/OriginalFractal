public void setup() {
  background(0);
  size(1000, 1000);
}
public void draw() {
  noFill();
  translate(500,500);
  myFractal(10,10,50,50,5);
 
}
public void myFractal(float x, float y, float radius1, float radius2, int npoints) {
  star(x, y, radius1, radius2, npoints);
if(radius1<500){
  myFractal(x,y,radius1+20, radius2+10,5);
}
}


void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
  stroke((float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255);
}
