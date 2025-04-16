import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Historique des trajets'),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView.builder(
        itemCount: 10, // ✅ Simule 10 trajets
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.history, color: Colors.blue),
            title: Text('Trajet ${index + 1}'),
            subtitle: Text('Distance: ${(index + 1) * 2} km'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          );
        },
      ),
    );
  }
}

