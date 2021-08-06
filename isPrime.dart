import 'dart:io';
import 'dart:math';

isPrime(int n) {
  for (int i = 2; i <= sqrt(n); i++) {
    if (n % i == 0) return false;
  }
  return true;
}

main(List<String> args) {
  print('Enter your number : ');
  var n = int.parse(stdin.readLineSync().toString());
  isPrime(n) ? print('$n is prime ! ') : print('$n is not prime !');
}
