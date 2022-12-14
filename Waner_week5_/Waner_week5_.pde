

void setup() {
  size(600, 600);
}

void draw() {
  background(198,198,198);
  for (int i = 0; i <= 6; i++ ) {
    stroke(45, 89, 196, (i+1)*10);
    strokeWeight(mouseX/6);
    line(i*100, 0, i*100, 600);

    stroke(222, 134, 47, 80-i*10);
    strokeWeight(mouseY/6);
    line(0, i*100, 600, i*100);
  }


  for (int i=0; i<=6; i ++) {
    for (int j=0; j<=6; j ++) {
      float cX = 100*i;
      float cY = 100*j;

      float d = dist(mouseX, mouseY, cX, cY);

      float cR = map(d, 0, 800, 0, 100);

      int cRed = (int)map(cX, 0, 800, 0, 255);
      int cGreen = (int)map(cY, 0, 800, 0, 255);
      int cBlue = (int)map(d, 0, 800, 0, 255);

      color cC = color(cRed, cGreen, cBlue);

      drawCircle(cX, cY, cR, cC);
    }
  }
}

void drawCircle(float x, float y, float d, color c) {
  noStroke();
  fill(c);
  ellipse(x, y, d, d);
}
