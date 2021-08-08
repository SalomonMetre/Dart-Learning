import 'dart:math';

class Sphere {
  static const PI = 3.14;
  final radius;
  const Sphere(this.radius);

  double get volume => 4 * PI * pow(radius, 3) / 3;
  double get surface => 4 * PI * pow(radius, 2);

  toString() {
    return 'Radius : $radius, surface : $surface, volume : $volume';
  }
}

main(List<String> args) {
  var mySphere = Sphere(12);
  print(mySphere);
}
