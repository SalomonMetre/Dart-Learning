//This program helps you determine which of the angles you enter has the largest sine value

import 'dart:io';
import 'dart:math';

main() {
  Map<double, double> valuesToSines = {};
  bool wantToEnterValue = true;
  double maxSine = 0, valueWithMaxSine=double.nan;

  while (wantToEnterValue) {
    print('Enter value');
    double value = double.parse(stdin.readLineSync().toString());
    valuesToSines.addAll({value: sin(value)});
    print('Do you want to enter another value?');
    var choice = stdin.readLineSync();
    if (choice != 'yes') wantToEnterValue = false;
    valuesToSines.addAll({});
  }

  for (var key in valuesToSines.keys) {
    if (valuesToSines[key]! > maxSine) {
      maxSine = valuesToSines[key]!;
      valueWithMaxSine = key;
    }
  }

  print('Angle with the maximum sine value : $valueWithMaxSine\nIts sine : ${valuesToSines[valueWithMaxSine]}');
}
