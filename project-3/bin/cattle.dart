import 'animal.dart';

abstract class Cattle extends Animal {
  Cattle({required id}) : super(id: id);

  bool _canMilk = false;

  void set isMilkingCattle(bool value) => _canMilk = value;
  bool get isMilkingCattle => _canMilk;

  @override
  getDetails() {
    print(
        'Id: $id, Age: $age, Current Cost: $currentCost, can Talk: $isMilkingCattle');
  }
}
