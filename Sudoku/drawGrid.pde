void drawGrid() {

  for (int i = 1; i < 9; i++) {
    if (i % 3 == 0) {
      strokeWeight(4);
    } else {
      strokeWeight(1);
    }
    line(i * (width / 9), 0, i * (width / 9), height);
  }

  for (int j = 1; j < 9; j++) {
    if (j % 3 == 0) {
      strokeWeight(4);
    } else {
      strokeWeight(1);
    }
    line(0, j * (height / 9), width, j * (height / 9));
  }
}
