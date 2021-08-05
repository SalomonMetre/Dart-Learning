import 'dart:io';

bool isPerfect(int n) {
  int sum = 0;
  for (var i = 1; i < n; i++) {
    if (n % i == 0) sum += i;
  }
  return n == sum;
}

main(List<String> args) {
  print('Enter your number : ');
  final userNumber = int.tryParse(stdin.readLineSync().toString());
  isPerfect(userNumber!)
      ? print('$userNumber is perfect !')
      : print('$userNumber is not perfect !');
}
