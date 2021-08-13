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

  
}
