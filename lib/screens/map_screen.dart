import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // On simule une carte avec un conteneur stylisé
    return Scaffold(
      appBar: AppBar(title: const Text("Localisation")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.location_on, size: 100, color: Colors.red),
            const SizedBox(height: 20),
            const Text(
              "Dernière position connue",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  "Carte simulée ici\n(Ex : 36.8065° N, 10.1815° E)",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

