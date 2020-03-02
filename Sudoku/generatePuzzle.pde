void generatePuzzle() {

  int[] temp = {1, 2, 3, 4, 5, 6, 7, 8, 9};
  IntList orderedIntegers = new IntList(temp);

  for (int i = 0; i < 9; i++) {

    int index = floor(random(orderedIntegers.size()));
    solution[0][i] = orderedIntegers.get(index);

    orderedIntegers.remove(index);
  }

  for (int j = 0; j < 9; j++) {
    solution[1][j] = solution[0][(j + 3) % 9];
  }
  for (int j = 0; j < 9; j++) {
    solution[2][j] = solution[1][(j + 3) % 9];
  }
  for (int j = 0; j < 9; j++) {
    solution[3][j] = solution[2][(j + 1) % 9];
  }
  for (int j = 0; j < 9; j++) {
    solution[4][j] = solution[3][(j + 3) % 9];
  }
  for (int j = 0; j < 9; j++) {
    solution[5][j] = solution[4][(j + 3) % 9];
  }
  for (int j = 0; j < 9; j++) {
    solution[6][j] = solution[5][(j + 1) % 9];
  }
  for (int j = 0; j < 9; j++) {
    solution[7][j] = solution[6][(j + 3) % 9];
  }
  for (int j = 0; j < 9; j++) {
    solution[8][j] = solution[7][(j + 3) % 9];
  }

  currentState = solution;

  for (int x = 0; x < 9; x++) {
    for (int y = 0; y < 9; y++) {
      if (random(1) > 0.5) {
        currentState[x][y] = -1;
      }
    }
  }
}
