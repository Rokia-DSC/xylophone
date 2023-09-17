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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: TextButton(
            onPressed: () async {
              final player = AudioPlayer();
              await player.play(
                AssetSource(
                  'note1.wav',
                ),
              );
            },
            child: const Text('Click Me'),
          ),
        ),
      ),
    );
  }
}
