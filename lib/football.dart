import 'package:flutter/material.dart';
import 'package:football_player_generator/footballer_stateful.dart';
//import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class FootballPlayer extends StatelessWidget {
  const FootballPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 8, 89),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Football Player Generator',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 8, 89),
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: FootballPlayerStateful(),
        ),
      ),
    );
  }
}
