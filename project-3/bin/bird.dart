import 'animal.dart';

abstract class Bird extends Animal {
  Bird({required id}) : super(id: id);

  bool _canTalk = false;

  void set isTalkingBird(bool value) => _canTalk = value;
  bool get isTalkingBird => _canTalk;

  @override
  getDetails() {
    print(
        'Id: $id, Age: $age, Current Cost: $currentCost, can Talk: $isTalkingBird');
  }
}
