import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class SpeedGauge extends StatelessWidget {
  final double speed; // Vitesse actuelle en km/h

  const SpeedGauge({super.key, required this.speed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150, // Ajuste selon ton écran TFT
      height: 150,
      child: SfRadialGauge(
        axes: <RadialAxis>[
          RadialAxis(
            minimum: 0,
            maximum: 150, // Ajuste si besoin
            ranges: [
              GaugeRange(startValue: 0, endValue: 50, color: Colors.green),
              GaugeRange(startValue: 50, endValue: 100, color: Colors.orange),
              GaugeRange(startValue: 100, endValue: 150, color: Colors.red),
            ],
            pointers: [
              NeedlePointer(
                value: speed,
                needleColor: Colors.black,
                knobStyle: KnobStyle(color: Colors.black),
              ),
            ],
            annotations: [
              GaugeAnnotation(
                widget: Text(
                  "$speed km/h",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Chiffres en noir
                  ),
                ),
                angle: 90,
                positionFactor: 0.7,
              ),
            ],
            axisLabelStyle: const GaugeTextStyle(
              color: Colors.black, // Chiffres du cadran en noir
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

