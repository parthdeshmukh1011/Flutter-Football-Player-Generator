import 'package:flutter/material.dart';
import 'dart:math';

class FootballPlayerStateful extends StatefulWidget {
  const FootballPlayerStateful({super.key});

  @override
  State<FootballPlayerStateful> createState() => _FootballPlayerStatefulState();
}

class _FootballPlayerStatefulState extends State<FootballPlayerStateful> {
  List<String> list = [
    'Lionel Messi',
    'Cristiano Ronaldo',
    'Neymar Jr',
    'Kylian Mbappe',
    'Erling Haaland',
    'Luka Modric',
    'Kevin Debryne',
    'Manuel Neuer',
    'Sergio Ramos',
    'Andres Iniesta',
    'Xavi Hernandes',
    'Robert Lewandowski',
    'Karim Benzema',
    'Mohammed Salah',
    'Sadio Mane',
  ];

  var currentImage = 1;
  void changeImage() {
    setState(() {
      currentImage = Random().nextInt(15) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: changeImage,
          icon: Image.asset('assets/assets_footballer$currentImage.jpg'),
          iconSize: 500,
        ),
        Text(
          list[currentImage - 1],
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ],
    );
  }
}
