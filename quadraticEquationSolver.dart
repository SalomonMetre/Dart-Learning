import 'dart:io';
import 'dart:math';

void quadraticSolver(double a, double b, double c) {
  ///This function solves a quadratic equation and outputs the solution(s)
  double root1, root2;
  double Delta = pow(b, 2) - 4 * a * c;
  if (Delta < 0)
    print('No real solution !');
  else {
    root1 = ((-b + sqrt(Delta)) / (2 * a));
    if (Delta == 0) {
      print('Solution : $root1');
    } else {
      root2 = ((-b - sqrt(Delta)) / (2 * a));
      print('Solutions : $root1 and $root2');
    }
  }
}

main() {
  double a, b, c;
  print('Enter the coefficients a, b and c : ');
  print('a : ');
  a = double.parse(stdin.readLineSync().toString());
  print('b : ');
  b = double.parse(stdin.readLineSync().toString());
  print('c : ');
  c = double.parse(stdin.readLineSync().toString());
  quadraticSolver(a, b, c);
}
