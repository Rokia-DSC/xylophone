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

  Expanded buildKey({Color? colorB, Color? colorF, int? soundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: colorF,
          backgroundColor: colorB,
        ),
        onPressed: () {
          playSound(soundNumber!);
        },
        child: const Text('Click Me'),
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
            buildKey(colorB: Colors.blue, colorF: Colors.white, soundNumber: 1),
            buildKey(colorB: Colors.red, colorF: Colors.white, soundNumber: 2),
            buildKey(
                colorB: Colors.orange, colorF: Colors.white, soundNumber: 3),
            buildKey(
                colorB: Colors.purpleAccent,
                colorF: Colors.white,
                soundNumber: 4),
            buildKey(
                colorB: Colors.yellow, colorF: Colors.white, soundNumber: 5),
            buildKey(colorB: Colors.grey, colorF: Colors.white, soundNumber: 6),
            buildKey(
                colorB: Colors.greenAccent,
                colorF: Colors.white,
                soundNumber: 7),
          ],
        ),
      ),
    );
  }
}
