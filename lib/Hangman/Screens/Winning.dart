import "package:flutter/material.dart";
import 'package:hang_man/Hangman/Screens/Game_Screen.dart';

class Winning extends StatelessWidget {
  final String winning_word;
  bool IsWinning;

  Winning(this.winning_word, this.IsWinning);
  Text state() {
    String chosen_String =
        this.IsWinning ? "Congrats You've Won !" : "Sorry you ran out of lifes";
    return Text(
      "${chosen_String}  the word was: ${this.winning_word} ",
      style: TextStyle(
          letterSpacing: 1,
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w900),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 3, 13, 38),
            Colors.white,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(children: [
              const SizedBox(
                height: 250,
              ),
              Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 2, 11, 40),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 70),
                  child: state()),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext build) {
                        return GameScreen();
                      },
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 27, 37, 67),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                  child: Text("Restart",
                      style: TextStyle(
                          letterSpacing: 1,
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w900)),
                ),
              ),
            ]),
          )),
    );
  }
}
