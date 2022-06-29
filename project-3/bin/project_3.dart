import 'cow.dart';
import 'parrot.dart';

void main() {
  Parrot myPoly = Parrot(id: 'ABC-123456');
  myPoly.age = 0.5;
  myPoly.addCost(1000);
  myPoly.getDetails();

  Cow myMoo = Cow(id: 'Cow-123456');
  myMoo.isMilkingCattle = true;
  myMoo.age = 2.2;
  myMoo.addCost(1000);
  myMoo.getDetails();
}
