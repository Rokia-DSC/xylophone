import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AudioPage(),
    ),
  );
}

class AudioPage extends StatefulWidget {
  const AudioPage({super.key});

  @override
  State<AudioPage> createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource(
        'note$soundNumber.wav',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  playSound(1);
                },
                child: const Text('Click Me'),
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red,
                ),
                onPressed: () {
                  playSound(2);
                },
                child: const Text('Click Me'),
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.orange,
                ),
                onPressed: () {
                  playSound(3);
                },
                child: const Text('Click Me'),
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.yellow,
                ),
                onPressed: () {
                  playSound(4);
                },
                child: const Text('Click Me'),
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.purpleAccent,
                ),
                onPressed: () {
                  playSound(5);
                },
                child: const Text('Click Me'),
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.grey,
                ),
                onPressed: () {
                  playSound(6);
                },
                child: const Text('Click Me'),
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.greenAccent,
                ),
                onPressed: () {
                  playSound(7);
                },
                child: const Text('Click Me'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
