import 'cattle.dart';

class Cow extends Cattle {
  Cow({required id}) : super(id: id);

  @override
  addCost(double amount) {
    super.addCost(amount * 1.02);
  }
}
