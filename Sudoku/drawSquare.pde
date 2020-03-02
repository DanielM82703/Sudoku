void drawSquare(int x, int y) {

  fill(#B7F0FF);
  noStroke();
  int  xOff = 1;
  int yOff = 1;
  int wOff = 1;
  int hOff = 1;

  switch(x) {
  case 1:
    xOff = 0;
    wOff = 0;
    break;
  case 3:
    wOff = 3;
    break;
  case 4:
    xOff = 3;
    wOff = 3;
    break;
  case 6:
    wOff = 3;
    break;
  case 7:
    xOff = 3;
    wOff = 3;
    break;
  case 9:
    wOff = -5;
    break;
  }

  switch(y) {
  case 1:
    yOff = 0;
    hOff = 0;
    break;
  case 3:
    hOff = 3;
    break;
  case 4:
    yOff = 3;
    hOff = 3;
    break;
  case 6:
    hOff = 3;
    break;
  case 7:
    yOff = 3;
    hOff = 3;
    break;
  case 9:
    hOff = -5;
    break;
  }

  rect((x - 1) * (width / 9) + xOff, (y - 1) * (height / 9) + yOff, width / 9 - wOff, height / 9 - hOff);
  stroke(1);
}
