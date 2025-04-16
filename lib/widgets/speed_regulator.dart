import 'package:flutter/material.dart';

class SpeedRegulator extends StatefulWidget {
  final double initialSpeed;
  final ValueChanged<double> onSpeedChanged;
  final ValueChanged<bool> onRegulatorToggled;

  const SpeedRegulator({
    super.key,
    required this.initialSpeed,
    required this.onSpeedChanged,
    required this.onRegulatorToggled,
  });

  @override
  _SpeedRegulatorState createState() => _SpeedRegulatorState();
}

class _SpeedRegulatorState extends State<SpeedRegulator> {
  late double _speed;
  bool _isRegulatorActive = false;

  @override
  void initState() {
    super.initState();
    _speed = widget.initialSpeed;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Régulateur de vitesse",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
        ),

        // ✅ Slider (désactivé si le régulateur est OFF)
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.black,
            inactiveTrackColor: Colors.grey,
            thumbColor: Colors.white,
            overlayColor: Colors.white24,
            valueIndicatorColor: Colors.grey,
            showValueIndicator: ShowValueIndicator.always,
            tickMarkShape: const RoundSliderTickMarkShape(),
            activeTickMarkColor: Colors.white,
            inactiveTickMarkColor: Colors.white70,
          ),
          child: Slider(
            value: _speed,
            min: 0,
            max: 50,
            divisions: 5,
            label: "${_speed.round()} km/h",
            onChanged: _isRegulatorActive
                ? (double value) {
                    setState(() {
                      _speed = value;
                    });
                    widget.onSpeedChanged(value);
                  }
                : null, // ✅ Désactivé si le régulateur est OFF
          ),
        ),

        // ✅ Bouton Activer/Désactiver (placé en dessous du slider)
        ElevatedButton(
          onPressed: () {
            setState(() {
              _isRegulatorActive = !_isRegulatorActive;
            });
            widget.onRegulatorToggled(_isRegulatorActive);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: _isRegulatorActive ? Colors.green : Colors.red, // ✅ Couleur change selon l'état
          ),
          child: Text(_isRegulatorActive ? "Désactiver" : "Activer"),
        ),
      ],
    );
  }
}

