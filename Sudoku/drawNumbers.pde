void drawNumbers() {

  fill(55);
  textSize((((width / 9) - 20) + ((width / 9) - 20)) / 2);
  textAlign(CENTER, CENTER);

  for (int i = 0; i < 9; i++) {
    for (int j = 0; j < 9; j++) {
      if (currentState[j][i] != -1) {
        text(currentState[j][i], (((i + 1) * width / 9) - (width / 18)), ((j + 1) * width / 9) - width / 18);
      }
    }
  }
}
