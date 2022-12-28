int[][] letters = {{0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1}, //A
  {1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0}, //B
  {0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1}, //C
  {1, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 0},
  {1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1},
  {1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0}};

int blockSize = 20;
void setup() {
  size(1000, 800);
  noStroke();
  background(255);
  fill(0);
  translate(blockSize*8, blockSize*8);
  for (int i = 0; i < letters.length; i++) {
    int xPos = 0;
    int yPos = 0;
    for (int j = 0; j < letters[i].length; j++) {
      if (letters[i][j] == 1) {
        rect(xPos, yPos, blockSize, blockSize);
        //ellipse(xPos, yPos, blockSize, blockSize*2);
      }
      xPos += blockSize;
      if (j % 4 == 3) {
        xPos = 0;
        yPos += blockSize;
      }
    }
    translate(blockSize * 6, 0);
  }
  saveFrame("output/###.png");
}
