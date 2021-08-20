import 'dart:io';

main(List<String> args) {
  bool canEnterFriendName = true;
  List friendNames = <String>[];
  while (canEnterFriendName) {
    print('Enter the name of a friend : ');
    friendNames.add(stdin.readLineSync().toString());
    print('Do you want to enter another name?');
    var userCanContinue = stdin.readLineSync().toString();
    if (userCanContinue.toLowerCase() == 'no') canEnterFriendName = false;
  }
  friendNames.sort((a, b) => a.length.compareTo(b.length));
  print('Your friends\' names from the longest to the shortest : ');
  print(friendNames);
}
