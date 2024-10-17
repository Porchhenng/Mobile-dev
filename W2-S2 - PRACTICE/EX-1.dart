import 'dart:ffi';
import 'dart:math';

enum Skill { FLUTTER, DART, OTHER }

class Employee {
  late final String _name;
  late final double _baseSalary;
  late final List<Skill> _skill;
  late final double _totalSalary;
  late final int _exp;
  late final Address _address;


  String get name => this._name;
  double get baseSalary => this._baseSalary;
  List<Skill> get skill => this._skill;
  int get exp => _exp;
  Address get address => this._address;
  double get totalSalary => this._totalSalary;
  
    Employee.flutter({
    required String name,
    required double baseSalary,
    required List<Skill> skill,
    required int exp,
    required Address address,
  })
    : _name = name,
        _baseSalary = baseSalary,
        _skill = skill,
        _exp = exp,
        _address = address,
        _totalSalary = baseSalary + (exp * 2000); //up 2K per year of exp

  void printDetails(){
    print('Employee name: $name');
    print('Employee baseSalary: $baseSalary');
    print('Employee totalSalary: $totalSalary');
    print('Employee skill: $skill');
    print('Employee address: $address');
    print('Employee exp: $exp');

  }
}
 class Address {
   late final String street, city, zipCode;
   Address({required this.street, required this.city, required this.zipCode});

   @override
  String toString() {
    // TODO: implement toString
    return '$street $city $zipCode';
  }

 }

 class yearsOfExp {
  late final int exp;
  yearsOfExp(this.exp){
    if (exp < 0) {
      throw ArgumentError('Years of experience cannot be negative.');
    }
  }
  @override
  String toString() {
    // TODO: implement toString
    return 'Employee years of exp is: $exp';
  }
 }

void main() {
  var emp1 = Employee.flutter(
    name: 'Sokea', 
    baseSalary: 40000,
    skill: [Skill.FLUTTER], 
    exp: 2, 
    address: Address(city: 'pp', street: '247', zipCode: '12321') );
  emp1.printDetails();


}