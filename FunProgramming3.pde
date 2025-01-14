color c1;
color c2;

void setup(){
  size(500, 400);
  colorMode(HSB, 100);
  noFill();
  strokeWeight(2);
  background(0);
  
  c1 = color(random(100), 100, 100);
  c2 = color(random(100), 100, 30);
  
  float maxr = 500;
  for(int r = 0; r < maxr; r++)
  {
    float n = map(r, 0, maxr, 0, 1);
    color newc = lerpColor(c1, c2, n);
    stroke(newc);
    ellipse(250, 200, r, r);
  }
}

void draw()
{}
