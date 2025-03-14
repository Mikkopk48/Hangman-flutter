import 'package:flutter/material.dart';
import 'package:hanged/presentation/screens/GameScreen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Color backgroundColor = Colors.indigo;
  final Map<String, Color> colors = {
    "deepPurple": Colors.deepPurple,
    "deepPurpleAccent": Colors.deepPurpleAccent,
    "Purple": Colors.purple,
    "Orange": Colors.orange,
    "Green": Colors.green,
    "Indigo": Colors.indigo,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(
            "Hangeman",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            PopupMenuButton<String>(
              icon: Icon(Icons.color_lens,color: Colors.white,),
              onSelected: (String colorName) {
                setState(() {
                  backgroundColor = colors[colorName]!;
                });
              },
              itemBuilder: (BuildContext context) {
                return colors.keys.map((String colorName) {
                  return PopupMenuItem<String>(
                    value: colorName,
                    child: Text(colorName),
                  );
                }).toList();
              },
            )
          ],
        ),
        body: 
          
             
           Positioned(
            top:0,
            bottom: 210,
            left: 220,
             child: ElevatedButton(
               onPressed: () {
              Navigator.pushNamed(context, '/gamescreen',arguments: backgroundColor);
               },
               style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.white,
                 foregroundColor: Colors.black, 
                 padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                 textStyle: const TextStyle(
                   fontSize: 40,
                   fontWeight: FontWeight.bold,
                   letterSpacing: 4,
                 ),
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(8),
                 ),
               ),
               child: const Text("S T A R T"),
             ),
           ),
           
        );
  }
}
