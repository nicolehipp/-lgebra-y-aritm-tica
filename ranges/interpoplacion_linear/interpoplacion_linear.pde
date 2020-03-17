float x1, y1 ;
float x2, y2 ;

float t= 0.3;

void setup() {

  size(800, 800);
  
  colorMode(HSB, 360, 100, 100);
}

void draw() {
  
  float saturacion= mouseX / float(width);
  float sat = MyLerp(80, 30, saturacion);
  
  background(188, sat, 87);
  
  float mouseT = mouseX / float(width);

  x1 = MyLerp(150, 450, t);
  x2 = MyLerp(600, 150, t);
  
  y1 = MyLerp(100, 400, t);
  y2 = MyLerp(400, 100, t);
  
  float size1 = MyLerp(10, 100, mouseT);
  float size2 = MyLerp(10, 100, 1 - mouseT);

  fill(0);
  ellipse(x1, y1, size1, size1);
  ellipse(x2, y2, size2, size2);

  t += 0.01;
  if (t>1.0) {
    t = 0.0;
  }
}




float MyLerp (float min, float max, float t) {
  return t * (max-min) +min;
}
