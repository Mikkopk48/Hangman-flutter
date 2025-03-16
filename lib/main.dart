import 'package:flutter/material.dart';
import 'package:hanged/presentation/screens/GameScreen.dart';
import 'package:hanged/presentation/screens/HomeScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
      
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      routes:{
        '/':(context)=> const Homescreen(),
        '/gamescreen':(context)=> const Gamescreen(),
      },
   
    );
  }
}
