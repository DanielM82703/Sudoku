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
    drawSquare(mouseGridX, mouseGridY);
  }

  drawNumbers();
}

void mouseReleased() {

  mouseGridX = ceil(mouseX / (width / 9)) + 1;
  mouseGridY = ceil(mouseY / (height / 9)) + 1;
}

void keyReleased() {
  
  if (mouseX != -1 && mouseY != -1) {
    switch (keyCode) {
    case '1':
      currentState[mouseGridY - 1][mouseGridX - 1] = 1;
      break;
    case '2':
      currentState[mouseGridY - 1][mouseGridX - 1] = 2;
      break;
    case '3':
      currentState[mouseGridY - 1][mouseGridX - 1] = 3;
      break;
    case '4':
      currentState[mouseGridY - 1][mouseGridX - 1] = 4;
      break;
    case '5':
      currentState[mouseGridY - 1][mouseGridX - 1] = 5;
      break;
    case '6':
      currentState[mouseGridY - 1][mouseGridX - 1] = 6;
      break;
    case '7':
      currentState[mouseGridY - 1][mouseGridX - 1] = 7;
      break;
    case '8':
      currentState[mouseGridY - 1][mouseGridX - 1] = 8;
      break;
    case '9':
      currentState[mouseGridY - 1][mouseGridX - 1] = 9;
      break;
    }
  }
}
