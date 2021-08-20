main(List<String> args) {
  final myFuture = Future<int>.delayed(
    Duration(seconds: 5),
    () => 13,
  )
      .then((value) => print(value))
      .catchError((value) => print('An error occurred'))
      .whenComplete(() => print('The value has been printed !'));

  
}
