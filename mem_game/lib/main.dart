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
  Game _game = Game();

  int turns = 0;
  int pairsFound = 0;

  @override
  void initState() {
    super.initState();
    _game.initGame();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3A405A),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
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
            child: Align(
              alignment: Alignment.center,
              child: AspectRatio(
                aspectRatio: 9 / 10,
                child: GridView.builder(
                    itemCount: _game.cardImgList!.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 16.0,
                      mainAxisSpacing: 16.0,
                    ),
                    padding: EdgeInsets.all(16.0),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          //print(_game.pairCheck);
                          setState(() {
                            turns += 1;
                            _game.cardImgList![index] =
                                _game.memCardsList[index];
                            _game.pairCheck
                                .add({index: _game.memCardsList[index]});
                            //print(_game.pairCheck.first);
                          });
                          if (_game.pairCheck.length == 2) {
                            if (_game.pairCheck[0].values.first ==
                                _game.pairCheck[1].values.first) {
                              //print("true");
                              pairsFound += 1;
                              _game.pairCheck.clear();
                              if (pairsFound == 8) {
                                _game.initGame();
                                pairsFound = 0;
                                turns = 0;
                              }
                            } else {
                              //print("false");

                              Future.delayed(Duration(milliseconds: 250), () {
                                setState(() {
                                  _game.cardImgList![_game.pairCheck[0].keys
                                      .first] = _game.questionCardPath;
                                  _game.cardImgList![_game.pairCheck[1].keys
                                      .first] = _game.questionCardPath;
                                  _game.pairCheck.clear();
                                });
                              });
                            }
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Color(0xFF99B2DD),
                            borderRadius: BorderRadius.circular(12.0),
                            image: DecorationImage(
                              image: AssetImage(_game.cardImgList![index]),
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomCard("Turns", "$turns"),
              CustomCard("Pairs Found", "$pairsFound"),
            ],
          ),
        ],
      ),
    );
  }
}
