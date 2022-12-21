int dragX, dragY, x1, y1, x2, y2, x3;
boolean b;

void setup() {
  background(255);
  size(700, 500);
}

void draw() {

  a();

  float r= map (x1, 30, 173, 0, 255);
  float g = map (x2, 30, 173, 0, 255);
  float b = map (x3, 30, 173, 0, 255);


  fill(#FFD100);
  noStroke();
  rect(50, 300, 100, 50);
  
  


  if (mouseX >= 50 && mouseX <= 150 && mouseY >= 300 && mouseY <= 350 && mouseButton == LEFT) {
    fill(#C6B14E);
    rect(50, 300, 100, 50);

    fill(r, g, b);
    noStroke();
    ellipse(350, 250, 150, 150);
  }else{
    fill(r, g, b);
    noStroke();
    rect(275, 175, 150, 150);
  }
 
 
 saveFrame("output/###.png");
}




void a() {
  background(255);
  fill(0);
  rect(30, 30, 160, 5);
  rect(30, 70, 160, 5);
  rect(30, 110, 160, 5);


  if (dragX >= 30 && dragX <=173 && dragY >= 25 && dragY <= 42  ) {
    fill(#AF6C6C);
    noStroke();
    rect(dragX, 25, 17, 17);
    x1 = dragX;
  }

  if (dragX >= 30 && dragX <=173 && dragY >= 65 && dragY <= 77  ) {
    fill(#8AAF6C);
    noStroke();
    rect(dragX, 65, 17, 17);
    x2 = dragX;
  }

  if (dragX >= 30 && dragX <=173 && dragY >= 105 && dragY <= 122  ) {
    fill(#6C73AF);
    noStroke();
    rect(dragX, 105, 17, 17);
    x3 = dragX;
  }
}

void mouseDragged() {
  dragX = mouseX;
  dragY = mouseY;
}
