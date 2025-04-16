import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
        backgroundColor: Colors.blueGrey,
      ),
      body: const Center(
        child: Text('Écran de Profil - Modifications des informations personnelles ici.'),
      ),
    );
  }
}

