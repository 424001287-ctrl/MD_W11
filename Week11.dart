abstract class Tunable {
  Future<void> tune();
}
mixin NitroBoost {
  void nitro() => print("Nitro boost!");
}
abstract class Car implements Tunable {
  String name;
  Car(this.name);
  void drive() => print("$name is driving");
  Future<String> saveVehicleData() async {
    await Future.delayed(const Duration(seconds: 2));
    return "$name Data saved Successfully";
  }
  @override
  Future<void> tune();
}
class ToyotaAE86 extends Car {
  ToyotaAE86(super.name);
  @override
  void drive() => print("Toyota AE86 drifts the touge hairpin");
  @override
  Future<void> tune() async {
    await Future.delayed(const Duration(seconds: 1));
  }
}
class GTRR34 extends Car with NitroBoost {
  GTRR34(super.name);
  @override
  void drive() {
    print("GTR R34 slides with ATTESA AWD");
    nitro();
  }
  @override
  Future<void> tune() async {
    await Future.delayed(const Duration(seconds: 1));
  }
}
class MazdaRX7 extends Car {
  MazdaRX7(super.name);
  @override
  void drive() => print("Mazda RX-7 rotary screams at redline");
  @override
  Future<void> tune() async {
    await Future.delayed(const Duration(seconds: 1));
  }
}
class MitsubishiEvoIX extends Car with NitroBoost {
  MitsubishiEvoIX(super.name);
  @override
  void drive() {
    print("Mitsubishi Evo IX rips through rally dirt");
    nitro();
  }
  @override
  Future<void> tune() async {
    await Future.delayed(const Duration(seconds: 1));
  }
}
void main() async {
  List<Car> cars = [
    ToyotaAE86("AE86"),
    GTRR34("R34"),
    MazdaRX7("RX7"),
    MitsubishiEvoIX("Evo"),
  ];
  for (var car in cars) {
    car.drive();
  }
  print("\nVroom Vroommmmm");
  print("\nStarting vehicle data saving...");
  print("Program is still running while saving....");
  String result = await cars[0].saveVehicleData();
  print(result);
  print("Saving Process Completed!");
}
