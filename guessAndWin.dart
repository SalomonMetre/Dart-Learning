import 'dart:io';
import 'dart:math';

class GuessHelper {
  int? generatedNumber;
  Random? myGenerator;
  int? userGuess;
  late int nbTrials;

  GuessHelper() {
    nbTrials = 0;
    myGenerator = Random();
    generateNumber();
  }

  generateNumber() {
    print('Enter the maximum number that can be generated : ');
    String userChoice = stdin.readLineSync().toString();
    generatedNumber = myGenerator?.nextInt(int.parse(userChoice)+1);
  }

  play() {
    do {
      print('Guess the number : ');
      userGuess = int.tryParse(stdin.readLineSync().toString());
      print('Number of trials : ${++nbTrials}');
    } while (userGuess != generatedNumber);
    print(' *** CONGRATULATIONS ***');
  }
}

main(List<String> args) {
  var myGuessHelper = GuessHelper();
  myGuessHelper.play();
}
