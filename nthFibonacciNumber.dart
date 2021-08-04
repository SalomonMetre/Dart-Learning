import 'dart:io';
import 'dart:math';

final phi = (1 + sqrt(5)) / 2;
fibonacciNumber(int n) {
  double result = (pow(phi, n) + pow(1 / phi, n)) / sqrt(5);
  return result.toInt();
}

main(List<String> args) {
  print('Enter the rank of the Fibonacci number you want : ');
  int rank = int.parse(stdin.readLineSync().toString());
  print('The ${rank}th fibonacciNumber(rank) is : ${fibonacciNumber(rank)}');
}
