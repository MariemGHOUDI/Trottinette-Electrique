import 'package:flutter/material.dart';

class ThemeSettingsScreen extends StatelessWidget {
  const ThemeSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paramètres du Thème'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SwitchListTile(
            title: const Text('Thème Sombre'),
            value: Theme.of(context).brightness == Brightness.dark,
            onChanged: (value) {
              // Changer le thème ici
              if (value) {
                // Passer en thème sombre
                (context as Element).markNeedsBuild();
              } else {
                // Passer en thème clair
                (context as Element).markNeedsBuild();
              }
            },
          ),
        ],
      ),
    );
  }
}

