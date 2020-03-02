int[][] solution = new int[9][9];
int[][] currentState = new int[9][9];
int mouseGridX = -1;
int mouseGridY = -1;

void setup() {

  size(600, 600);
  background(255);

  generatePuzzle();

  drawGrid();
  drawNumbers();
}

void draw() {

  background(255);
  drawGrid();

  if (mouseX != -1 && mouseY != -1) {
    fill(#B7F0FF);
    rect((mouseGridX - 1) * (width / 9), (mouseGridY - 1) * (height / 9), width / 9, height / 9);
  }

  drawNumbers();
}

void mouseReleased() {

  mouseGridX = ceil(mouseX / (width / 9)) + 1;
  mouseGridY = ceil(mouseY / (height / 9)) + 1;
}

void keyReleased(){
  
  if (mouseX != -1 && mouseY != -1) {
    currentState[mouseGridY - 1][mouseGridX - 1] = int(keyCode);
  }
  
}
