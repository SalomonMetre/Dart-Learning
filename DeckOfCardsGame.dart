void main() {
  var myDeck = Deck();
  myDeck.shuffle();
  print(myDeck);
  print(myDeck.deal(5));
  print(myDeck);
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

  void clearDeck() {
    cards = [];
  }

  toString() {
    return cards.toString();
  }

  void shuffle() {
    cards.shuffle();
  }

  List cardWithSuit(String suit) {
    return cards.where((element) => element.suit == suit).toList();
  }

  List deal(int nbCards) {
    var hand = cards.sublist(0, nbCards - 1);
    cards.removeWhere((card) => cards.indexOf(card) < nbCards);
    return hand;
  }

  void removeCard(String rank, String suit) {
    cards.removeWhere((card) => card.rank == rank && card.suit == suit);
  }
}

class Card {
  late String suit, rank;
  Card(this.rank, this.suit);

  toString() {
    return '($rank of $suit)';
  }

  String get getSuit => suit;
  String get getRank => rank;
}
