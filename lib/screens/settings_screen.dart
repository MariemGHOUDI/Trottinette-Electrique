import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paramètres'),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.person, color: Colors.blue),
            title: Text('Profil'),
            subtitle: Text('Modifier les informations personnelles'),
          ),
          ListTile(
            leading: Icon(Icons.color_lens, color: Colors.green),
            title: Text('Thème'),
            subtitle: Text('Choisir un thème clair ou sombre'),
          ),
          ListTile(
            leading: Icon(Icons.language, color: Colors.orange),
            title: Text('Langue'),
            subtitle: Text('Changer la langue de l’application'),
          ),
        ],
      ),
    );
  }
}

