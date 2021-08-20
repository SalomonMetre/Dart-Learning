//getting number of minutes from a number of hours
extension on int {
  int get minutes => this * 60;
}

class Platypus implements Comparable {
  int weight;
  Platypus(this.weight);
  @override
  int compareTo(other) {
    return this.weight > other.weight ? 1 : 0;
  }

  @override
  String toString() {
    return 'Platypus number $weight';
  }
}

main(List<String> args) {
  Platypus platypus1 = Platypus(12);
  Platypus platypus2 = Platypus(3);
  Platypus platypus3 = Platypus(1);
  Platypus platypus4 = Platypus(17);

  var platypusList = <Platypus>[platypus1, platypus2, platypus3, platypus4];
  platypusList.sort();
  print(platypusList);

  print('Three hours in minutes : ${3.minutes}');
}

