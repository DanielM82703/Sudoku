void drawGrid() {

  stroke(55);
  
  strokeWeight(4);
  line(1, 0, 1, width);
  line(width - 2, 0, width - 2, width);
  for (int i = 1; i < 9; i++) {
    if (i % 3 == 0) {
      strokeWeight(4);
    } else {
      strokeWeight(1);
    }
    line(i * (width / 9), 0, i * (width / 9), width);
  }
  
  
  strokeWeight(4);
  line(0, 1, width, 1);
  line(0, width + 1, width, width + 1);
  for (int j = 1; j < 9; j++) {
    if (j % 3 == 0) {
      strokeWeight(4);
    } else {
      strokeWeight(1);
    }
    line(0, j * (width / 9), width, j * (width / 9));
  }
  
}
