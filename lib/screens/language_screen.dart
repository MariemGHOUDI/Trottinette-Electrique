import 'package:flutter/material.dart';

class LanguageSettingsScreen extends StatelessWidget {
  final Function(String) onLanguageChanged;

  const LanguageSettingsScreen({super.key, required this.onLanguageChanged});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paramètres de Langue'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                onLanguageChanged('en'); // Change la langue en anglais
                Navigator.pop(context);
              },
              child: const Text('Langue Anglaise'),
            ),
            TextButton(
              onPressed: () {
                onLanguageChanged('fr'); // Change la langue en français
                Navigator.pop(context);
              },
              child: const Text('Langue Française'),
            ),
          ],
        ),
      ),
    );
  }
}

