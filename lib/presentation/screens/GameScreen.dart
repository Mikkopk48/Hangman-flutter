import 'package:flutter/material.dart';

class Gamescreen extends StatefulWidget {
   const Gamescreen({super.key});

  @override
  State<Gamescreen> createState() => _GamescreenState();
}

class _GamescreenState extends State<Gamescreen> {
  @override
  Widget build(BuildContext context) {
  // final String backgroundColor = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      backgroundColor:Colors.transparent,
      appBar:AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text("Hangman",
        style: TextStyle(color: Colors.white)),),
      body:const Hangman(),
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
  int bodyPartsShower = 0;
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: 
      Column(
        children: [ Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            height: 250,
            width: 250,
            child:Stack(children: [
              switch (bodyPartsShower) {
                    >= 0 => Image.asset("assets/hang.png"),  
                    >= 1 =>Image.asset("assets/head.png"),  
                    >= 2 =>Image.asset("assets/body.png"),
                    >= 3 =>Image.asset("assets/la.png"),
                    >= 4 =>Image.asset("assets/ll.png"),
                    >= 5 =>Image.asset("assets/ra.png"),
                    >= 6 =>Image.asset("assets/rl.png"),
                    _ => Image.asset("assets/hang.png"),
                    }
                    ],)  
          ),
        ),
        
       const Row(children: [
          
          ],),
        ]
      )
      );
  }
}
class WordsBox extends StatelessWidget {
  const WordsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
      Row(children: [
          Word(word:"F"),
          Word(word:"L"),
          Word(word:"U"),
          Word(word:"T"),
          Word(word:"T"),
          Word(word:"E"),
          Word(word:"R"),
      ],)
    );
  }
}


class Word extends StatelessWidget {
    final String word;
  const Word({super.key,required this.word});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      color: Colors.black54,
      borderRadius: BorderRadius.circular(10)
      ),
      height: 45,
      width: 40,
      child: Center(
        child: Text(word,
        style:TextStyle(
          color: Colors.white,
          fontSize: 30),
        )),

    );
  }
}

