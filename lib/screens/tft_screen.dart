import 'package:flutter/material.dart';
import 'dashboard_screen.dart';
import 'location_screen.dart';

class TFTScreen extends StatelessWidget {
  const TFTScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Fond blanc comme tu veux
      body: Center(
        child: Container(
          width: 320,  // Ajuste selon ton écran TFT
          height: 480, // Ajuste selon ton écran TFT
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const DashboardScreen(),
        ),
      ),
    );
  }
}

