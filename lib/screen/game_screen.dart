import 'package:flutter/material.dart';

import 'dart:js' as js;

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int score = 0;

  void increaseScore() {
    setState(() {
      score++;
    });
    sendPlayerNameToWeb('lê trần lâm huy'); // Gọi hàm JavaScript với tên người chơi
  }

  void sendPlayerNameToWeb(String playerName) {
  // Gọi hàm JavaScript 'receivePlayerName' và truyền tham số 'playerName'
  js.context.callMethod('receivePlayerName', [playerName]);
}

  void endGame() {
    Navigator.pushNamed(context, '/end', arguments: score);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game'),
      ),
      body: Stack(
        children: [
          Center(
            child: Text(
              'Điểm số: $score',
              style: const TextStyle(fontSize: 24),
            ),
          ),
          Positioned(
            bottom: 50,
            right: 50,
            child: FloatingActionButton(
              onPressed: increaseScore,
              child: const Icon(Icons.add),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 50,
            child: FloatingActionButton(
              onPressed: endGame,
              child: const Icon(Icons.stop),
            ),
          ),
        ],
      ),
    );
  }
}