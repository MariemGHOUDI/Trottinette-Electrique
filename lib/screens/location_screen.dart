import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Localisation de la Trottinette'),
      ),
      body: const Center(
        child: Text('Localisation en cours...'),  // Affiche un texte simulant la localisation
      ),
    );
  }
}

