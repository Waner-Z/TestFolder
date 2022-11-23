void setup() {
  size(800,800);
  background(255);
  stroke(0);
  line(0,400,800,400);
  line(400,0,400,800);
}

void draw() {
  stroke(#728B34);
  for (int i = 0; i*5 < 400; i++) { 
    line( i*5,0, i*5, 400);
  }
  stroke(#E2E36E);
  for (int i = 1; i*5 <= 400; i++) {
    line( i*5+400,0, i*5+400, 400);
  }
  for (int i = 0; i*5 < 400; i++) {
    line( 400,i*5, 800, i*5);
  }
  stroke(#E3BC6E);
  for (int i = 0; i*5 < 400; i++) { 
    line( i*5,400, i*5, 800);
  }
  for(int i = 0;i*10<400;i++){
    line(0,i*10+400,i*10,400);   
  }
  for(int i = 0;i*10<400;i++){
    line(i*10,800,400,i*10+400);   
  }
  stroke(#CE9C90);
  for (int i = 0; i*5 < 400; i++) { 
    line( i*5+400,400, i*5+400, 800);
  }
  for(int i = 0;i*10<400;i++){
    line(400,i*10+400,i*10+400,400);   
  }
  for(int i = 0;i*10<400;i++){
    line(i*10+400,800,800,i*10+400);   
  }
  for(int i = 0;i*10<400;i++){
    line(400,i*10+400,800-i*10,800);   
  }
  for(int i = 0;i*10<400;i++){
    line(400+i*10,400,800,800-i*10);   
  }
}
