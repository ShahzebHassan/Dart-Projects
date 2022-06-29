import 'dart:math';

void main() {
  int yourNumber = rollTheDice('Yours');
  int systemNumber = rollTheDice('System');
  showTheResult(yourNumber, systemNumber);
}

int rollTheDice(String title) {
  int num = Random().nextInt(6) + 1;
  print("$title number $num");
  return num;
}

void showTheResult(int yourNumber, int systemNumber) {
  if (yourNumber == systemNumber) {
    print("its a tie!");
  } else if (yourNumber > systemNumber) {
    print("you win");
  } else {
    print("you loose");
  }
}
