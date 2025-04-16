import 'package:flutter/material.dart';
import '../widgets/speed_gauge.dart';
import '../widgets/battery_indicator.dart';
import '../widgets/driving_mode_selector.dart';
import 'map_screen.dart';

class TFTScreen extends StatelessWidget {
  const TFTScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Fond noir
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(child: SpeedGauge(speed: 25.0)), // Vitesse
                const SizedBox(width: 10),
                const BatteryIndicator(batteryLevel: 78), // Batterie
              ],
            ),
            const SizedBox(height: 20),
            const DrivingModeSelector(), // Mode de conduite
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.map, color: Colors.white),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MapScreen()),
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.history, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.settings, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

