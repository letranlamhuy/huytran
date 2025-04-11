import 'package:flutter/material.dart';

import 'screen/end_screen.dart';
import 'screen/game_screen.dart';
import 'screen/menu_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game Sinh Nhật',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/menu',
      routes: {
        '/menu': (context) => MenuScreen(),
        '/game': (context) => GameScreen(),
        '/end': (context) => EndScreen(finalScore: 0),
      },
    );
  }
}
