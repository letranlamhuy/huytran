import 'package:flutter/material.dart';

class EndScreen extends StatelessWidget {
  final int finalScore;

  const EndScreen({super.key, required this.finalScore});

  @override
  Widget build(BuildContext context) {
    final int score = ModalRoute.of(context)?.settings.arguments as int? ?? 0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kết thúc'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Game Over',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              'Điểm số của bạn: $score',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/menu');
              },
              child: const Text('Chơi lại'),
            ),
          ],
        ),
      ),
    );
  }
}