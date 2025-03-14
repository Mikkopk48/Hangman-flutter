import 'package:flutter/material.dart';

class Gamescreen extends StatefulWidget {
   Gamescreen({super.key});

  @override
  State<Gamescreen> createState() => _GamescreenState();
}

class _GamescreenState extends State<Gamescreen> {
  @override
  Widget build(BuildContext context) {
  // final String backgroundColor = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      backgroundColor:Colors.indigo,
      appBar:AppBar(title: Text("Hangman"),),
      body:Hangman(),
    );
  }
}
class Hangman extends StatefulWidget {
  const Hangman({super.key});

  @override
  State<Hangman> createState() => _HangmanState();
}

class _HangmanState extends State<Hangman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

//aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
class Words extends StatefulWidget {
  const Words({super.key});

  @override
  State<Words> createState() => _WordsState();
}

class _WordsState extends State<Words> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
