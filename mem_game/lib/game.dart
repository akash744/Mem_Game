class Game {
  List<bool> isCardFlipped = [];

  String questionCardPath = "assets/images/hidden.png";

  List<String> cardPaths = [
    "assets/images/beer.png",
    "assets/images/beer.png",
    "assets/images/burger.png",
    "assets/images/burger.png",
    "assets/images/cupcake.png",
    "assets/images/cupcake.png",
    "assets/images/donut.png",
    "assets/images/donut.png",
    "assets/images/fries.png",
    "assets/images/fries.png",
    "assets/images/icecream.png",
    "assets/images/icecream.png",
    "assets/images/pizza.png",
    "assets/images/pizza.png",
    "assets/images/popcorn.png",
    "assets/images/popcorn.png",
  ];

  List<int> selectedCards = [];

  void initGame() {
    isCardFlipped = List.filled(16, false);
    cardPaths.shuffle();
  }
}
