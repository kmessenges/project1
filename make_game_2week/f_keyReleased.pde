void keyReleased() {
  if (keyCode == LEFT) {
    left = false;
  }
  if (keyCode == RIGHT) {
    right = false;
  }
  if (keyCode == UP) {
    increase = false;
  }
  if (keyCode == DOWN){
    decrease = false;
  }
}
//방향키 세팅
void keyPressed() {
  if (keyCode == LEFT) {
    left = true;
  }
  if (keyCode == RIGHT) {
    right = true;
  }
  if (keyCode == UP) {
    increase = true;
  }
  if (keyCode == DOWN){
    decrease = true;
  }
}
