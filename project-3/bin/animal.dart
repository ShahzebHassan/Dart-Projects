abstract class Animal {
  Animal({required this.id});
  String id;

  double _currentCost = 0;
  double _age = 0;

  getDetails();
  addCost(double amount) => _currentCost += amount;

  double get currentCost => _currentCost;
  double get age => _age;

  void set age(double age) => _age = age;
}
