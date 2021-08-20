///What can we do with lists in Dart?
///We try to explore a few important methods that apply to lists in Dart using a list containing names of my siblings haha

void printElement(String element) {
  print(element);
}

void main() {
  //creating the list
  var mySiblings = <String>[
    'Joseph',
    'Benedicte',
    'Marie-Reine',
    'Pascaline',
    'Michel Vainqueur',
    'Vincent',
    'Judith'
  ];

  //getting the first element of the list
  print(mySiblings[0]);
  print(mySiblings.first);

  //getting index of a given element in a list
  print(mySiblings.indexOf('Marie-Reine'));

  //getting last element
  print(mySiblings[mySiblings.length - 1]);
  print(mySiblings.last);

  //Adding a new element
  mySiblings.add('Julia');

  //Let us remove an element
  print(mySiblings.remove('Julia'));

  //Reversing the list
  print(mySiblings.reversed);

  //Checking whether Patrick is in our list
  print(mySiblings.contains('Patrick'));

  //This produces a new list to which the anynonymous function has been applied
  print(mySiblings.map((e) => e += ' Metre'));

  //shuffling the list
  mySiblings.shuffle();

  //Using a 'tear-off' style to print every element of the list
  mySiblings.forEach(printElement);

  //sorting the list
  mySiblings.sort();

  //clearing the list
  mySiblings.clear();
}
