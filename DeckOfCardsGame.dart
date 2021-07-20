void main() {
  var myDeck = Deck();
  myDeck.shuffle();
  print(myDeck.toString());
  print(myDeck.cardWithSuit('Spades'));
}

class Deck {
  List<Card> cards = [];
  List ranks = [], suits = [];
  Deck() {
    ranks = [
      'Ace',
      'Two',
      'Three',
      'Four',
      'Five',
      'Six',
      'Seven',
      'Eight',
      'Nine',
      'Ten',
      'Queen',
      'Jack'
    ];
    suits = ['Diamonds', 'Spades', 'Hearts', 'Clubs'];
    makeDeck();
  }

  void makeDeck() {
    for (var rank in ranks) {
      for (var suit in suits) {
        Card newCard = Card(rank, suit);
        cards.add(newCard);
      }
    }
  }

  toString() {
    return cards.toString();
  }

  void shuffle() {
    cards.shuffle();
  }

  List cardWithSuit(String suit) {
    return cards.where((element)=>element.suit == suit).toList();
  }
}

class Card {
  late String suit, rank;
  Card(this.rank, this.suit);

  toString() {
    return '[$rank of $suit]';
  }
}
