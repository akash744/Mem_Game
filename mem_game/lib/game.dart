import 'package:flutter/material.dart';

class Game {

  List<String>? cardImgList;
  final String questionCardPath = "assets/images/hidden.png";
  List<String> memCardsList = [
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
  
  final int cardCount = 16;
  List<Map<int, String>> pairCheck = [];

  void initGame() {
    cardImgList = List.generate(cardCount, (index) => questionCardPath);
    memCardsList.shuffle();
  }
}


