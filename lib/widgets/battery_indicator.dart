import 'package:flutter/material.dart';

class BatteryIndicator extends StatelessWidget {
  final int batteryLevel; // Niveau de batterie (0-100)

  const BatteryIndicator({super.key, required this.batteryLevel});

  @override
  Widget build(BuildContext context) {
    IconData batteryIcon;
    Color batteryColor;

    // Déterminer l'icône de batterie en fonction du niveau
    if (batteryLevel > 80) {
      batteryIcon = Icons.battery_full;
      batteryColor = Colors.green;
    } else if (batteryLevel > 60) {
      batteryIcon = Icons.battery_6_bar;
      batteryColor = Colors.green;
    } else if (batteryLevel > 40) {
      batteryIcon = Icons.battery_4_bar;
      batteryColor = Colors.yellow;
    } else if (batteryLevel > 20) {
      batteryIcon = Icons.battery_2_bar;
      batteryColor = Colors.orange;
    } else {
      batteryIcon = Icons.battery_alert;
      batteryColor = Colors.red; // ⚠ Alerte batterie faible
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          batteryIcon,
          size: 40,
          color: batteryColor,
        ),
        Text(
          "$batteryLevel%", 
          style: TextStyle(
            fontSize: 14, 
            fontWeight: FontWeight.bold, 
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

