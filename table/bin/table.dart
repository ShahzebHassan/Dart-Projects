import 'package:table/table.dart' as table;

void main(List<String> arguments) {
  int x = 2;
  {
    for (int y = 1; y <= 10; y++) {
      // int timesTableTotal = x * y;

      print('$x X $y = ${x * y}');
    }
  }
}
