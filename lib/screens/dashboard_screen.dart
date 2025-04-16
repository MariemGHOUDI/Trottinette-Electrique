import 'package:flutter/material.dart';
import '../widgets/speed_gauge.dart';
import '../widgets/battery_indicator.dart';
import '../widgets/driving_mode_selector.dart';
import '../widgets/speed_regulator.dart';
import '../screens/history/history_screen.dart';
import '../screens/settings_screen.dart';
import '../screens/location_screen.dart'; // Assure-toi que cet écran existe

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  double _currentSpeed = 25; // Stocke la vitesse sélectionnée
  bool _isRegulatorActive = false;

  void _updateSpeed(double speed) {
    setState(() {
      _currentSpeed = speed; // Met à jour la vitesse
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // ✅ Compteur de vitesse (affiche la vitesse sélectionnée)
            SpeedGauge(speed: _currentSpeed),

            // ✅ Indicateur de batterie
            const BatteryIndicator(batteryLevel: 80),

            // ✅ Modes de conduite
            const DrivingModeSelector(),

            // ✅ Régulateur de vitesse (mise à jour de la vitesse)
            SpeedRegulator(
              initialSpeed: _currentSpeed,
              onSpeedChanged: (double speed) {
                if (_isRegulatorActive) {
                  setState(() {
                   _currentSpeed = speed; // ✅ Met à jour la vitesse affichée
                  });
                 }
               },
  onRegulatorToggled: (bool isActive) {
    setState(() {
      _isRegulatorActive = isActive;
    });
  },
),

            // ✅ Barre des icônes en bas
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.history, size: 30, color: Colors.blue),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HistoryScreen()),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.location_on, size: 30, color: Colors.red),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LocationScreen()),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.settings, size: 30, color: Colors.blue),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SettingsScreen()),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

