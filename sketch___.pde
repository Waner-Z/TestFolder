PImage img;
int x, y;
void setup() {
  size(1000, 1000);
  background(255);
  noStroke();
  img = loadImage("000.png");
}
void draw() {
  x = round(random(width));
  y = round(random(height));
  color c = img.get(x, y);
  fill(c, 70);
  ellipse(x, y, 150, 150);
  saveFrame("output/###.png");
}
