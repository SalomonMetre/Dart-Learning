///Highest grade and a few other tests on a list

bool isGreaterThan50(int number) {
  return number > 50;
}

main(List<String> args) {
  var grades = [90, 20, 67, 54, 15, 72, 30];
  grades.sort();
  print('Lowest grade : ${grades[0]}');
  print('Highest grade : ${grades[grades.length - 1]}');
  print('Grades greater than 50: ${grades.where(isGreaterThan50).toList()}');
}
