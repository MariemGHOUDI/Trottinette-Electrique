import 'package:flutter/material.dart';

class DrivingModeSelector extends StatefulWidget {
  const DrivingModeSelector({super.key});

  @override
  State<DrivingModeSelector> createState() => _DrivingModeSelectorState();
}

class _DrivingModeSelectorState extends State<DrivingModeSelector> {
  String selectedMode = 'Éco';  // Mode sélectionné par défaut

  final List<String> modes = ['Éco', 'Normal', 'Sport'];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const Text(
          'Mode de conduite',
          style: TextStyle(fontSize: 14, color: Colors.black),
        ),
        const SizedBox(height: 6),
        // Utilisation de Wrap pour afficher les boutons en ligne
        Wrap(
          spacing: 6,  // Espacement entre les boutons
          runSpacing: 6,  // Espacement entre les lignes
          children: modes.map((mode) {
            final isSelected = mode == selectedMode;

            // Utilisation de Expanded pour éviter l'overflow
            return ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: screenWidth / 3, // Limite chaque bouton à 1/3 de l'écran
              ),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedMode = mode;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: isSelected ? Colors.green : Colors.black,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  minimumSize: Size.zero,
                ),
                child: FittedBox(
                  fit: BoxFit.scaleDown, // Réduit la taille du texte si nécessaire
                  child: Text(
                    mode,
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

