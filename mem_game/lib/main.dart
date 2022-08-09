import 'package:flutter/material.dart';
import 'package:mem_game/components/custom_card.dart';
import 'package:mem_game/game.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Game game = Game();

  int turns = 0;
  int pairsFound = 0;

  @override
  void initState() {
    super.initState();
    game.initGame();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3A405A),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: Text(
              "Mem Game",
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Pacifico',
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: AspectRatio(
                aspectRatio: 9 / 10,
                child: GridView.builder(
                    itemCount: game.cardPaths.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 16.0,
                      mainAxisSpacing: 16.0,
                    ),
                    padding: const EdgeInsets.all(16.0),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            turns += 1;
                            game.selectedCards.add(index);
                          });

                          // Player selected two cards
                          if (game.selectedCards.length == 2) {
                            int firstCard = game.selectedCards.elementAt(0);
                            int secondCard = game.selectedCards.elementAt(1);

                            if (game.cardPaths[firstCard] ==
                                    game.cardPaths[secondCard] &&
                                firstCard != secondCard) {
                              // The two cards match!

                              game.isCardFlipped[firstCard] = true;
                              game.isCardFlipped[secondCard] = true;
                              pairsFound += 1;

                              if (pairsFound == 8) {
                                game.initGame();
                                pairsFound = 0;
                                turns = 0;
                              }

                              game.selectedCards.clear();
                            } else {
                              Future.delayed(const Duration(milliseconds: 250),
                                  () {
                                setState(() {
                                  game.selectedCards.clear();
                                });
                              });
                            }
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFF99B2DD),
                            borderRadius: BorderRadius.circular(12.0),
                            image: DecorationImage(
                              image: AssetImage((() {
                                if (game.isCardFlipped[index] == true ||
                                    game.selectedCards.contains(index)) {
                                  return game.cardPaths[index];
                                } else {
                                  return game.questionCardPath;
                                }
                              })()),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              customCard("Turns", "$turns"),
              customCard("Pairs Found", "$pairsFound"),
            ],
          ),
        ],
      ),
    );
  }
}
