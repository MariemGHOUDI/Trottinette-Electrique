import 'package:flutter/material.dart';
import 'screens/tft_screen.dart';

void main() {
  runApp(const TrottinetteApp());
}

class TrottinetteApp extends StatelessWidget {
  const TrottinetteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(), // Fond noir pour l'écran TFT
      home: const TFTScreen(),
    );
  }
}

