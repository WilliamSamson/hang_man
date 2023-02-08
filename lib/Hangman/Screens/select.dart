import "package:flutter/material.dart";
import 'package:hang_man/Hangman/Screens/Game_Screen.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 27, 37, 67),
            Colors.white,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Color.fromARGB(0, 235, 222, 222),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  child: Image.asset(
                    'images/hang.jpg',
                    height: 300,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 300,
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
                    color: Color.fromARGB(255, 11, 40, 127),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Text("Start",
                      style: TextStyle(
                          letterSpacing: 2,
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w900)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Brought to you by WS-Corp",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
