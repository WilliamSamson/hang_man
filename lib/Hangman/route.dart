import 'package:flutter/material.dart';
import 'package:hang_man/Hangman/Screens/Game_Screen.dart';
import 'package:hang_man/Hangman/Screens/select.dart';

class routes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": ((context) {
          return Menu();
        }),
        "/home": ((context) {
          return GameScreen();
        }),
      },
    );
  }
}
