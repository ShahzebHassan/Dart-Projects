import 'dart:math';
import 'dart:io';

Future<int> getRandomNo() {
  return Future.delayed(Duration(seconds: 1), () => Random().nextInt(20));
}

void main() async {
  try {
    print('Downloading Starting');

    int totalSum = 0;
    stdout.write('[');
    while (totalSum < 100) {
      int value = await getRandomNo();
      stdout.write('*' * value);
      totalSum += value;
    }
    print(']');
    print('Downloading Completed');
  } catch (e) {
    print(e);
  }
}
